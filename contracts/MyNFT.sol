// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

import "openzeppelin-solidity/contracts/token/ERC721/ERC721.sol";

contract MyNFT is ERC721 {
    constructor(string memory name, string memory symbol)
        ERC721(name, symbol)
    {}

    function createToken(uint256 tokenId) external {
        _safeMint(msg.sender, tokenId);
    }
}