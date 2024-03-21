// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {CompareAssembly} from "../src/CompareAssembly.sol";

contract CompareAssemblyTest is Test {
    CompareAssembly public compareAssembly;

    function setUp() public {
        compareAssembly = new CompareAssembly();
    }

    function test_gas_assembly() public {
        uint256 result = compareAssembly.solution(4, 2);
        assertEq(result, 2);
    }
}
