pragma solidity ^0.6.0;

import "@makerdao/dss-mcd-collateral-plugin/contracts/CollateralPlugin.sol";
import "@makerdao/dss-mcd-collateral-plugin/contracts/DSSCollateral.sol";

contract UniPoolCollateralPlugin is CollateralPlugin {
    // Set the name of the collateral type
    string public collateralType = "UNI-V2";

    // Set the minimum amount of collateral required
    uint256 public minCollateralRatio = 150; // 150%

    // Set the liquidation penalty
    uint256 public liquidationPencilty = 10; // 10%

    // Set the liquidation ratio
    uint256 public liquidationRatio = 175; // 175%

    // Set the liquidation auction time (in seconds)
    uint256 public auctionPeriod = 2 days;

    // Set the liquidation delay (in seconds)
    uint256 public liquidationDelay = 1 hour;

    // Set the maximum bid price
    uint256 public maxBidPrice = 1.05; // 105%

    // Set the liquidator address
    address public liquidator = 0x0000000000000000000000000000000000000000;

    // Set the liquidation watcher address
    address public liquidationWatcher = 0x0000000000000000000000000000000000000000;

    // Set the Uniswap V2 exchange contract address
    address public uniswapV2Exchange = 0x0000000000000000000000000000000000000000;

    // Set the Uni token contract address
    address public uniToken = 0x0000000000000000000000000000000000000000;

    // Set the underlying collateral contract address
    address public underlyingCollateral = 0x0000000000000000000000000000000000000000;

    // Set the oracle contract address
    address public oracle = 0x0000000000000000000000000000000000000000;

    // Set the price feed identifier
    bytes32 public priceFeedIdentifier = 0x0000000000000000000000000000000000000000000000000000000000000000;

    constructor() public {
        // Set the liquidator address
        liquidator = 0x0000000000000000000000000000000000000000;

        // Set the liquidation watcher address
        liquidationWatcher = 0x0000000000000000000000000000000000000000;

        // Set the Uniswap V2 exchange contract address
        uniswapV2Exchange = 0x0000000000000000000000000000000000000000;

        // Set the Uni token contract address
        uniToken = 0x0000000000000000000000000000000000000000;

        // Set the underlying collateral contract address
        underlyingCollateral = 0x0000000000000000000000000000000000000000;

        // Set the oracle contract address
        oracle = 0x0000000000000000000000000000000000000000;

        // Set the price feed identifier
        priceFeedIdentifier = 0x0000000000000000000000000000000000000000000000000000000000000000;
    }

    function getCollateralType() public view returns (string memory) {
        return collateralType;
    }

    function getMinCollateralRatio() public view returns (uint256) {
        return minCollateralRatio;
    }

    function getLiquidationPenalty() public view returns (uint256) {
        return liquidationPencilty;
    }

    function getLiquidationRatio() public view returns (uint256) {
        return liquidationRatio;
    }

    function getAuctionPeriod() public view returns (uint256) {
        return auctionPeriod;
    }

    function getLiquidationDelay() public
