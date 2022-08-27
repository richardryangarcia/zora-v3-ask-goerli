// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import "forge-std/Script.sol";
import "../src/AsksV1_1.sol";

contract AsksV1_1Script is Script {
    address public Erc20TransferHelperAddress = 0x53172d999a299198a935f9E424f9f8544e3d4292;
    address public Erc721TransferHelperAddress = 0xd1adAF05575295710dE1145c3c9427c364A70a7f;
    address public RoyaltyEngineAddress = 0xe7c9Cb6D966f76f3B5142167088927Bf34966a1f;
    address public ProtocolFeeSettings = 0x5f7072E1fA7c01dfAc7Cf54289621AFAaD2184d0;
    address public WethAddress = 0xB4FBF271143F4FBf7B91A5ded31805e42b2208d6;

    function run() public {
        vm.startBroadcast();

        new AsksV1_1(Erc20TransferHelperAddress, Erc721TransferHelperAddress, RoyaltyEngineAddress, ProtocolFeeSettings, WethAddress);

        vm.stopBroadcast();
    }
}
