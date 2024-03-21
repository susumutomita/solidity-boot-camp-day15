// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {CompareUnckeck} from "../src/CompareUncheck.sol";

contract CompareTest is Test {
    CompareUnckeck public compareUnckeck;

    function setUp() public {
        compareUnckeck = new CompareUnckeck();
    }

    function test_gas_solidity() public {
        uint256 result = compareUnckeck.solution(4, 2);
        assertEq(result, 2);
    }
}
