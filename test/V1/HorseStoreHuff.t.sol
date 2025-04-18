// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.26;

import { Base_TestV1, HorseStore } from "./Base_TestV1.t.sol";
import { HuffDeployer } from "lib/foundry-huff/src/HuffDeployer.sol";

contract HorseStoreHuff is Base_TestV1 {
    string public constant HORSE_STORE_HUFF_LOCATION = "horseStoreV1/HorseStore";

    function setUp() public virtual override {
        horseStore = HorseStore(HuffDeployer.config().deploy(HORSE_STORE_HUFF_LOCATION));
    }
}