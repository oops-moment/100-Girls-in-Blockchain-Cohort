// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ConditionalContract {
    function calculateResult(uint256 input) public pure returns (uint256) {
        uint256 result;
        
        if (input < 10) {
            result = input * 2;
        } else {
            result = input / 2;
        }
        
        return result;
    }
}
