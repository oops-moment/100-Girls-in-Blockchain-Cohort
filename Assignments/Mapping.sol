pragma solidity ^0.8.0;

contract DataStorage {
    mapping(uint256 => string) private data;

    function addData(uint256 key, string memory value) public {
        data[key] = value;
    }

    function updateData(uint256 key, string memory value) public {
        require(data[key] != "", "Data with given key does not exist.");
        data[key] = value;
    }

    function retrieveData(uint256 key) public view returns (string memory) {
        require(data[key] != "", "Data with given key does not exist.");
        return data[key];
    }
}
