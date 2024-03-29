//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

interface IUniswapV3MintCallback {
    function uniswapV3MintCallback(
        uint256 amount0,
        uint256 amount1,
        bytes calldata data
    ) external;
}