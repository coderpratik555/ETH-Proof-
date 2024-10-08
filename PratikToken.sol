//SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract PratikToken
{
    //public variables here
    string public tokenName = "Pratik";
    string public tokenAbbrivation = "Bnerjee";
    uint public totalSupply = 0;

    //mapping variable here
    mapping(address => uint )public balances;

    //mint function
    function mint (address _address,uint _value) public
    {
        totalSupply = totalSupply + _value;
        balances[_address] += _value;

    }

    //burn function
    function burn (address _address,uint _value) public
    {
        if(balances[_address] >= _value)
        {
        totalSupply = totalSupply - _value;
        balances[_address] -= _value;
        }

    }
}
