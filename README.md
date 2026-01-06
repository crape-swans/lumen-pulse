# Lumen Pulse (Built for Base)

Lumen Pulse is a simple, read-only tool built for the Base ecosystem. It allows developers to quickly verify network status, inspect wallet balances, and confirm contract deployments on Base Sepolia.

---

## Purpose

Lumen Pulse is designed for quick, secure validation. Use it to:
- Confirm that you're connected to the Base Sepolia network (chainId: 84532)
- Check wallet balances and inspect addresses
- Validate contract deployments with direct explorer links

All actions are non-invasive and read-only.

---

## Structure of the Repository

- **app/lumen-pulse.ts**  
  Main entry script that connects to Coinbase Wallet and queries Base Sepolia RPC.

- **contracts/**  
  Solidity contracts deployed to Base Sepolia for testnet validation:
  - `BaseCrowdsale.sol`  - a crowdsale contract that allows users to buy tokens in exchange for Ether
  - `BaseNFTMinting.sol`  - an NFT minting contract that allows users to mint non-fungible tokens (NFTs) for a specified price

- **package.json**  
  Contains project dependencies, including Coinbase Wallet SDK and viem.

- **README.md**  
  Documentation explaining how to use the tool.

---

## Network Details

Base Sepolia  
chainId (decimal): 84532  
Explorer: https://sepolia.basescan.org  

---

## How It Works

Lumen Pulse connects to Coinbase Wallet using the Coinbase Wallet SDK and communicates with Base Sepolia via viem. It retrieves wallet balances, transaction counts, and block data, and provides explorer links for easy validation.

No transactions are signed or broadcast.

---

## Dependencies

This project relies on the following libraries:
- **Coinbase Wallet SDK** for wallet connectivity  
- **Viem** for interacting with Base Sepolia  
- **Base and Coinbase Repositories** for utilities and tools  

---

## License

MIT License  
Copyright (c) 2025 YOUR_NAME

---

## Author

GitHub: [your-handle](https://github.com/crape-swans)  

Email: 0_crape_swans@icloud.com

---

## Testnet Deployment (Base Sepolia)

The following contracts were deployed to Base Sepolia for validation:

Network: Base Sepolia  
chainId (decimal): 84532  
Explorer: [sepolia.basescan.org](https://sepolia.basescan.org)

Contract BaseCrowdsale.sol address:  
0xE2F1B7A5D3C4A9B2C7E8D9C4F5A1A6D3B7F4E8C9

Deployment and verification:
- [Deployment Link](https://sepolia.basescan.org/address/0xE2F1B7A5D3C4A9B2C7E8D9C4F5A1A6D3B7F4E8C9)
- [Code Verification](https://sepolia.basescan.org/0xE2F1B7A5D3C4A9B2C7E8D9C4F5A1A6D3B7F4E8C9/0#code)

Contract BaseNFTMinting.sol address:  
0xA5C2F4B7E3A0C6D2A9F3B1E6C7E1D2F3A8C4D9A0

Deployment and verification:
- [Deployment Link](https://sepolia.basescan.org/address/0xA5C2F4B7E3A0C6D2A9F3B1E6C7E1D2F3A8C4D9A0)
- [Code Verification](https://sepolia.basescan.org/0xA5C2F4B7E3A0C6D2A9F3B1E6C7E1D2F3A8C4D9A00#code)


These testnet deployments validate Base Sepolia tooling and help ensure everything works before moving to Mainnet.

