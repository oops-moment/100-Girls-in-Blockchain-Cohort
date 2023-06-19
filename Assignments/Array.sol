pragma solidity ^0.8.0;

contract AddressList {
    address[] private addresses;

    function addAddress(address newAddress) public {
        addresses.push(newAddress);
    }

    function removeAddress(address addressToRemove) public {
        for (uint256 i = 0; i < addresses.length; i++) {
            if (addresses[i] == addressToRemove) {
                addresses[i] = addresses[addresses.length - 1];
                addresses.pop();
                break;
            }
        }
    }

    function getAddress(uint256 index) public view returns (address) {
        require(index < addresses.length, "Invalid index.");
        return addresses[index];
    }

    function getAddressCount() public view returns (uint256) {
        return addresses.length;
    }
}
