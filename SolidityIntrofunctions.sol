// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;

contract Datatypes{
    uint256 public num1 = 40;
    uint8 public num2=210;
    int8 public num3=-2;

    bool public tfone=false;
    bool public tftwo=true;

    string private prishad1="prisha";
    bytes public prishad2="prishayes";

    function setNum1(uint _data) public {
        num1=_data;
    }
    function getnum1() public view returns(uint)
    {
        return num1;
    }
    function computeit(uint _a, uint _b) public pure returns (uint)
    {
        return _a+_b;
    }

    function getname()public view returns(string memory)
    {
        return prishad1;
    }
    function setname(string memory _data)public 
    {
        prishad1=_data;
    }
    function compare (uint _a,uint _b) public pure returns(string memory)
    {
        if(_a>_b)
        {
            return "A is greater";
        }
        else if(_a<_b)
        {
            return "B is greater";
        }
        else 
        {
            return "barabar bhai";
        }
    }
    function compareStrings(string memory str1, string memory str2) public pure returns (bool) {
        if (keccak256(abi.encodePacked(str1)) == keccak256(abi.encodePacked(str2))){
            return true;
        }
        else 
        {
            return false;
        }
    } 

    function loops() public pure returns(uint)
    {
        uint val=1;
        for(uint i=0;i<10;i++)
        {
            val=val+5;
        }
        return val;
    }
    mapping (uint => string) public db;
    function addtomapping(uint _key,string memory _value)public {
        db[_key]=_value;
    }

    // Arrays time
    uint256[] public prishaarray;
    function addelemt(uint _element) public
    {
        prishaarray.push(_element);
    }
    function updateelement(uint256 _index,uint _newval) public
    {
            // if(_index>=prishaarray.length)
            // {
               // require use karo
            // }
            require(_index<prishaarray.length,"Hey no index out of bound");
            prishaarray[_index]= _newval;

    }

    function deletelement(uint _index) public {
        require(_index < prishaarray.length,"index out of bound");
        if(_index<prishaarray.length-1)
        {
            prishaarray[_index]=prishaarray[prishaarray.length-1];
        }
        prishaarray.pop();
    }

    address payable public prcode= payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
  
    function checkbalance() public view returns (uint)
    {
        return address(this).balance;
    }
    function datasend() public payable 
    {

    }




}

