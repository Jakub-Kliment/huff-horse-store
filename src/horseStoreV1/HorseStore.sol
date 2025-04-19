// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.28;

import {IHorseStore} from "./IHorseStore.sol";

contract HorseStore is IHorseStore {
    uint256 numberOfHorses;

    function updateHorseNumber(uint256 newNumberOfHorses) external {
        numberOfHorses = newNumberOfHorses;
    }

    function readNumberOfHorses() external view returns (uint256) {
        return numberOfHorses;
    }
}

// function dispatching automatically on compile time -> decomposes a call to the function selector and calldata
// in huff must be written by hand
