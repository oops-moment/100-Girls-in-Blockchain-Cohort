// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.18 ;

contract MapArray{
     mapping(address => mapping(uint => string)) public prcode;
     function setMapping(string memory sabji, uint value, address _myaddr) public 
     {
         prcode[_myaddr][value]=sabji;
     }
     mapping (address => string[]) public prcode2;
     function setprcode2(address _addr,string[] memory _sabji) public {
         prcode2[_addr]=_sabji;
     }
    // function getarray(address _addr,string[] memory _sabji) view returns public (string[] memory){
    //      return prcode2[_addr];
    //  }
     

}

contract GlobalMsg
{
    // every single detail of transaction 
    event seeHowMuch(uint indexed _wei);
    event learnindex(uint indexed _wei,uint indexed _weei,uint indexed _weii);
    function storeweicontract() public payable{
        emit seeHowMuch(msg.value);
    }
    function whosenthismoney() public view returns (address)
    {
        return msg.sender;
    }

    
}

// // we need to create a store that takes address , type and price will be givrn
contract MapArray2{
  mapping (address => mapping (string =>uint)) public store;
 function setdukaan(string memory _sabjiname,uint _price) public
{
    // key value is created via msg.sender
    store[msg.sender][_sabjiname]=_price+(_price/3);
    
}
function buys(address _owner,string memory _sabjiname) public payable 
{
    require(msg.value==store[_owner][_sabjiname],"do work");
}

function leloprice(address payable _owner,string memory _sabjiname) public {
    require(msg.sender==_owner);
    uint releaseda=store[_owner][_sabjiname];
    releaseda-=releaseda/3;
    store[_owner][_sabjiname]=0;
    _owner.transfer(releaseda);
}

}
contract XYZ
{
    function JODBolte() public pure returns(string memory)
    {
        return "chal na bc ";
    }
    function JODBolte2() public pure returns (string memory)
    {
        return " chal na bc jhhooth na bol";
    }

}
contract YZAA
{
     function JODBolte3() public pure returns(string memory)
    {
        return "chal na bc ";
    }
    function JODBolte24() public pure returns (string memory)
    {
        return " chal na bc jhhooth na bol";
    }
}
contract YZA is XYZ,YZAA
{
    function test()public pure returns(uint)
    {
        return 3;
    }
}

// contract XYZ {
//     function JODBolte() public pure returns(string memory) {
//         return "chal na bc";
//     }

//     function JODBolte2() public pure returns (string memory) {
//         return "chal na bc jhhooth na bol";
//     }
// }

// contract YZAA {
//     function JODBolte3() public pure returns(string memory) {
//         return "chal na bc";
//     }

//     function JODBolte24() public pure returns (string memory) {
//         return "chal na bc jhhooth na bol";
//     }
// }

// contract YZA is XYZ, YZAA {
//     function test() public pure returns(uint) {
//         return 3;
//     }
// }

// we can create a lobrary to sav time

library calculator {
    // you can tput state variable only pure functinos can be used

    function add(uint a , uint b ) public pure returns (uint)
    {
        return a+b;
    }
    function minus(uint a , uint b ) public pure returns (uint)
    {
        return a-b;
    }
    function multply(uint a , uint b ) public pure returns (uint)
    {
        return a*b;
    }
}

contract testkrlo 
{
    function testlibrary() public pure returns(uint)
    {
        return calculator.add(5,6);
    }
}

// we can further import it
// interface is set of rules 
interface  Myinterface {
    function Add(uint _a, uint _b) external pure returns(uint);
    
}

contract Interfaceimp is Myinterface
{
    function Add(uint _a, uint _b) external pure override returns(uint)
    {
        return _a+_b;
    }
}


contract Modifieerr{
    address public owner;
    modifier onlyowner()
    {
        require(msg.sender==owner,"only owner can call");
        _;
    }
    function whoisowner() public
    {
           owner=msg.sender;
    }
}


// inorder to create custom datatype lets see structure

contract mycontract {
    struct Person
    {
        uint id;
        string name;
        uint age;
    }
    mapping (uint =>Person) public persons;

    function addperson(uint _id, string memory _name, uint age) public {
        Person memory newp= Person(_id,_name,age);
        persons[_id]=newp;
    }
}

contract Mycontract 
{
    enum color{Red,greeb,blue}
    mapping (uint =>color) public colors ;
    function addcolor(uint id, color colour) public
    {
        colors[id]=colour;

    }



}