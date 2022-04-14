// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IERC721M {
    function grant(uint256 tokenId, string calldata grantTarget)
        external
        payable;

    function getGrantsWithToken(uint256 tokenId)
        external
        view
        returns (string[] memory);
}
