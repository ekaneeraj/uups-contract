// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

contract BoxV2 {
    uint256 internal value;

    function setValue(uint256 newValue) public {
        value = newValue;
    }

    function getValue() public view returns (uint256) {
        return value;
    }

    function version() public pure returns (uint256) {
        return 2;
    }    
}