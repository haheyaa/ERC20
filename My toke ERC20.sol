// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "./ERC20.sol";
contract MyTokent is ERC20{
    constructor(string memory name_,string memory symbol_)ERC20(name_,symbol_){}

    address owner=0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    function mint(address _owner,uint value)public{
        require(_owner==owner,"only mint to owner account");
        require (totalSupply()+value<3000,"total supply should be less than 3000");
        _mint(owner,value);

    }

}