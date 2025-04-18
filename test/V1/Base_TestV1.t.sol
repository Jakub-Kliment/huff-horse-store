// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.26;

import { Test, console2 } from "forge-std/Test.sol";
import { HorseStore } from "../../src/horseStoreV1/HorseStore.sol";

// Differential testing -> both huff and solc codes
abstract contract Base_TestV1 is Test {
    HorseStore public horseStore;

    function setUp() public virtual {
        horseStore = new HorseStore(); 
    }

    function testReadValue() public {
        uint256 initialValue = horseStore.readNumberOfHorses();
        assertEq(initialValue, 0);
    }

    function testWriteValue(uint256 newValue) public {
        horseStore.updateHorseNumber(newValue);
        assertEq(newValue, horseStore.readNumberOfHorses());
    }
}