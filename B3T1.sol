// SPDX-License-Identifier: MIT

// Условие: 
// Функция update должна сохранять переданные настройки по указанному id. 
// После деплоя configs[1] содержит limit = 100 и enabled = true.

pragma solidity ^0.8.20;

contract Settings {
    struct Config { uint256 limit; bool enabled; }
    mapping(uint256 => Config) public configs;

    constructor() {
        configs[1] = Config(100, true);
    }

    function update(uint256 id, Config memory input) external {
        Config memory config = configs[id];
        config.limit = input.limit;
        config.enabled = input.enabled;
    }
}
