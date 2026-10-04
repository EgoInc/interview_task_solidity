// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Values {
    uint256[] public values;

    constructor() {
        values.push(10);
        values.push(0);
        values.push(0);
        values.push(20);
    }

    function removeZeros() external {
        for (uint256 i = 0; i < values.length; i++) {
            if (values[i] == 0) {
                values[i] = values[values.length - 1];
                values.pop();
            }
        }
    }

    function getValues() external view returns (uint256[] memory) {
        return values;
    }
}
