// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

contract SStoken {

    // public variables here
    string public tokName = "SS1";
    string public tokAbbrv = "SS";
    uint public totalSupply = 1000;

    // mapping variable here
    mapping(address => uint) public balance;

    // mint function
    function mint(address _addr,uint _vlu) public{
        totalSupply += _vlu;
        balance[_addr] += _vlu;
    }

    // burn function
     function burn(address _addr,uint _vlu) public{ 
        if(balance[_addr] >= _vlu){
            totalSupply -= _vlu;
            balance[_addr] -= _vlu;
        }
    }
}
