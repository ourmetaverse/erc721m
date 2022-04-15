// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "erc721a/contracts/ERC721A.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "./ERC721M.sol";

contract ERC721MDemo is ERC721M, ERC721A {
  uint256 public constant GRANT_PRICE = 0.3 * 10**18; // 0.3 ETH

  constructor() ERC721A("ERC721MDemo", "721M") {
    _safeMint(msg.sender, 1);
  }

  function grant(uint256 tokenId, string calldata grantTarget)
    external
    payable
    override
  {
    require(ownerOf(tokenId) == msg.sender);
    require(msg.value == GRANT_PRICE, "grant need 0.3 ETH");
     _grant(tokenId, grantTarget);
  }
}
