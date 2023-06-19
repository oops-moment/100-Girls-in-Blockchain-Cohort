pragma solidity ^0.8.0;

contract ArithmeticContract {
    uint256 public result;

    event ResultLogged(uint256 indexed value."Aaah");

    function performArithmeticOperations(uint256 a, uint256 b) public {
        // Addition
        result = a + b;
        emit ResultLogged(result);

        // Subtraction
        result = a - b;
        emit ResultLogged(result);

        // Multiplication
        result = a * b;
        emit ResultLogged(result);

        // Division
        result = a / b;
        emit ResultLogged(result);

        // Modulo
        result = a % b;
        emit ResultLogged(result);
    }
}
