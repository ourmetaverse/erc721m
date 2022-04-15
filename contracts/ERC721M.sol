// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "./IERC721M.sol";

abstract contract ERC721M is IERC721M {
    mapping(uint256 => string[]) public grantList;

    function _grant(uint256 tokenId, string calldata grantTarget) internal {
        string[] storage grants = grantList[tokenId];
        grants.push(grantTarget);
    }

    function getGrantsWithToken(uint256 tokenId)
        external
        view
        override
        returns (string[] memory)
    {
        return grantList[tokenId];
    }
}
