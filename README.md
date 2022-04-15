# ERC721M

[![npmversion](http://img.shields.io/npm/v/erc721m.svg?style=flat-square)](https://www.npmjs.com/package/erc721m)

Created by https://our-metaverse.xyz/

Still in the draft, [submit issue](https://github.com/ourmetaverse/erc721m/issues) for proposal.

## API

```solidity
pragma solidity ^0.8.0;

interface IERC721M {
  function grant(uint256 tokenId, string calldata grantTarget) external payable;

  function getGrantsWithToken(uint256 tokenId)
    external
    view
    returns (string[] memory);
}

```

## Develop

### Quick Start

```shell
npm i
npm run compile
npm run test
```

### More

```shell
npx hardhat accounts
npx hardhat compile
npx hardhat clean
npx hardhat test
npx hardhat node
node scripts/sample-script.js
npx hardhat help
```
