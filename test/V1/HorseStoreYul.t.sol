// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.26;

import {Base_TestV1} from "./Base_TestV1.t.sol";
import {HorseStoreYul} from "../../src/horseStoreV1/HorseStoreYul.sol";

contract HorseStoreSolc is Base_TestV1 {
    function setUp() public virtual override {
        horseStore = new HorseStoreYul();
    }
}
