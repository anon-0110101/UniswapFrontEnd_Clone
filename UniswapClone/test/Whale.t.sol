//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/interfaces/IERC20.sol";

contract ForkTest is Test {
    IERC20 public dai;
    function setUp() public {
        dai = IERC20(0x6B175474E89094C44Da98b954EedeAC495271d0F);
    }
    function testDeposit() public {
        address me = address(123);

        uint balBefore = dai.balanceOf(me);
        console.log("balance before", balBefore / 1e18);

        uint totalBefore = dai.totalSupply();
        console.log("total before", totalBefore / 1e18);

        deal(address(dai), me, 1e6 * 1e18, true);

        uint balAfter = dai.balanceOf(me);
        console.log("balance after", balAfter / 1e18);

        uint totalAfter = dai.totalSupply();
        console.log("total after", totalAfter / 1e18);
    }
}