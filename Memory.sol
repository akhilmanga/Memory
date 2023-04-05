//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.18;

contract Memory {
    
    struct MyStruct {
         uint a;
         string text;
    }

    mapping(address => MyStruct) public myStructs;

    function examples(uint[] calldata x, string calldata s) external returns (uint[] memory) {

        myStructs[msg.sender] = MyStruct({a: 4444, text: "Akhil"});

        MyStruct storage myStruct = myStructs[msg.sender];   // Storage is used to update the data
        myStruct.text = "Nikhil"; 

        MyStruct memory readOnly = myStructs[msg.sender];   // Memory is used to read the data
        myStruct.a = 22; 

        _internal(x);

        uint[] memory memArr = new uint[](4);
        memArr[0] = 1234;
        return memArr;

    }

    function _internal(uint[] calldata x) private {           
         uint y = x[0];                                      // Use calldata for function inputs                                   
        }

}