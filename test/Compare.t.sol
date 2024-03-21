// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Compare} from "../src/Compare.sol";

contract CompareTest is Test {
    Compare public compare;

    function setUp() public {
        compare = new Compare();
    }

    function test_gas_solidity() public {
        uint256 result = compare.solution(4,2);
        assertEq(result, 2);
    }

}
