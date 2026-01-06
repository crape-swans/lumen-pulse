// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BaseNFTMinting {
    uint256 public price;
    uint256 public totalSupply;
    uint256 public maxSupply;
    address public owner;

    mapping(uint256 => address) public nftOwners;
    mapping(address => uint256) public balances;

    event Minted(address indexed to, uint256 tokenId);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner");
        _;
    }

    modifier hasMinted(uint256 tokenId) {
        require(nftOwners[tokenId] == address(0), "NFT already minted");
        _;
    }

    constructor(uint256 _price, uint256 _maxSupply) {
        price = _price;
        maxSupply = _maxSupply;
        owner = msg.sender;
    }

    function mint(uint256 tokenId) external payable hasMinted(tokenId) {
        require(msg.value == price, "Incorrect payment amount");
        require(totalSupply < maxSupply, "Max supply reached");

        nftOwners[tokenId] = msg.sender;
        balances[msg.sender] += 1;
        totalSupply += 1;

        emit Minted(msg.sender, tokenId);
    }

    function getOwner(uint256 tokenId) external view returns (address) {
        return nftOwners[tokenId];
    }

    function withdraw() external onlyOwner {
        payable(owner).transfer(address(this).balance);
    }
}
