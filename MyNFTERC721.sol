// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "./ERC721.sol";
contract MyNFTERC721 is ERC721{
    constructor(string memory name_,string memory symbol_)ERC721(name_,symbol_){}
    address owner=0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    function mint(address to, uint tokenId)public {
        require (_msgSender()==owner,"only owner can mint token");
        _mint(to,tokenId);
    }
}