// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract BoxV2 is Initializable, OwnableUpgradeable, UUPSUpgradeable {
    uint256 internal value;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        // we can't use constructor, as will add storage to implementation
        // proxy -> implementation 
        _disableInitializers();
    }

    function initialize() public initializer {
        // initializer is a constructor to proxies and can be initialize once
        __Ownable_init(msg.sender);
        __UUPSUpgradeable_init();
    }

    function setValue(uint256 newValue) public {
        value = newValue;
    }

    function getValue() public view returns (uint256) {
        return value;
    }

    function version() public pure returns (uint256) {
        return 2;
    } 

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}
}