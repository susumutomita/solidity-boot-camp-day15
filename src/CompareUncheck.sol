// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract CompareUnckeck {
    function solution(
        uint256 numerator,
        uint256 denominator
    ) external pure returns (uint256 result) {
        unchecked {
            result = numerator / denominator;
        }
    }
}
