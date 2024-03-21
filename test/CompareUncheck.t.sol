// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {CompareUncheck} from "../src/CompareUncheck.sol";

contract CompareTest is Test {
    CompareUncheck public compareUncheck;

    function setUp() public {
        compareUncheck = new CompareUncheck();
    }

    function test_gas_solidity() public view {
        uint256 result = compareUncheck.solution(4, 2);
        assertEq(result, 2);
    }
}
