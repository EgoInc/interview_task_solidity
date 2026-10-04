// SPDX-License-Identifier: MIT

// Условие:
// ids должен содержать только активные ненулевые id, без пропусков и дубликатов. Порядок не важен. 
// После удаления id можно добавить повторно. remove принимает индекс в массиве, а не id.

pragma solidity ^0.8.20;

contract Registry {
    uint256[] public ids;
    mapping(uint256 => bool) public active;

    function add(uint256 id) external {
        require(id != 0 && !active[id], "invalid id");
        active[id] = true;
        ids.push(id);
    }

    function remove(uint256 index) external {
        uint256 id = ids[index];
        delete active[id];
        delete ids[index];
    }

    function getIds() external view returns (uint256[] memory) {
        return ids;
    }
}

