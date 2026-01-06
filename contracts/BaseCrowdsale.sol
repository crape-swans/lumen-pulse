// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BaseCrowdsale {
    address public owner;
    uint256 public rate;  // How many tokens per 1 Ether
    uint256 public tokenCap;
    uint256 public raisedAmount;
    bool public saleActive;

    mapping(address => uint256) public contributions;

    event TokensPurchased(address indexed buyer, uint256 amount, uint256 totalAmount);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner");
        _;
    }

    modifier saleIsActive() {
        require(saleActive, "Sale is not active");
        _;
    }

    constructor(uint256 _rate, uint256 _tokenCap) {
        owner = msg.sender;
        rate = _rate;
        tokenCap = _tokenCap;
        saleActive = true;
    }

    function buyTokens() external payable saleIsActive {
        require(msg.value > 0, "You must send Ether to buy tokens");
        uint256 tokensToBuy = msg.value * rate;
        require(raisedAmount + tokensToBuy <= tokenCap, "Token cap exceeded");

        raisedAmount += tokensToBuy;
        contributions[msg.sender] += msg.value;

        emit TokensPurchased(msg.sender, tokensToBuy, raisedAmount);
    }

    function endSale() external onlyOwner {
        saleActive = false;
    }

    function withdrawFunds() external onlyOwner {
        payable(owner).transfer(address(this).balance);
    }
}
