// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";

// Deploy mocks when on local Anvil chain
// Keep track of contract addys across chains
contract HelperConfig is Script {
    NetworkConfig public activeNetworkConfig;

    struct NetworkConfig {
        address priceFeed; // ETH/USD price feed address
    }

    constructor() {
        if (block.chainid == 1115511) {
            activeNetworkConfig = getSepoliaEthConfig();
        } else {
            activeNetworkConfig = getAnvilEthConfig();
        }
    }

    function getSepoliaEthConfig() public pure returns (NetworkConfig memory) {
        NetworkConfig memory sepoliaConfig = NetworkConfig({
            priceFeed: 0x694AA1769357215DE4FAC081bf1f309aDC325306
        });

        return sepoliaConfig;
    }

    function getAnvilEthConfig() public returns (NetworkConfig memory) {
        // price feed addy

        // deploy mocks

        // return mock addy

        vm.startBroadcast();
        vm.stopBroadcast();
    }
}
