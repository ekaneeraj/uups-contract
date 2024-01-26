// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

contract BoxV1 {
    uint256 internal value;

    function getValue() public view returns (uint256) {
        return value;
    }

    function version() public pure returns (uint256) {
        return 1;
    }

    
}