// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {CompareMinus} from "../src/CompareMinus.sol";

contract CompareMinusTest is Test {
    CompareMinus public compareMinus;

    function setUp() public {
        compareMinus = new CompareMinus();
    }

    function test_gas_solidity() public {
        int256 result = compareMinus.solution(-4, -2);
        assertEq(result, 2);
    }
}
