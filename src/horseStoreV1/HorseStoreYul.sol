// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.28;

import {IHorseStore} from "./IHorseStore.sol";

contract HorseStoreYul is IHorseStore {
    uint256 numberOfHorses;

    function updateHorseNumber(uint256 newNumberOfHorses) external {
        // numberOfHorses = newNumberOfHorses;
        assembly {
            sstore(numberOfHorses.slot, newNumberOfHorses)
        }
    }

    function readNumberOfHorses() external view returns (uint256) {
        // return numberOfHorses;
        assembly {
            let num := sload(numberOfHorses.slot)
            mstore(0, num)
            return(0, 0x20)
        }
    }
}
