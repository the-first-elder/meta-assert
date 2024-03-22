// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

error FundMe__NotOwner();
error NotEnoughLiquidity();

contract Fund {
    address[] private s_funders;
    mapping(address users => uint256 deposit) public userInfo;
    address public immutable i_owner;
    uint256 public constant MINIMUM_USD = 1e18;

    constructor() {
        i_owner = msg.sender;
    }

    function fund() public payable {
        if (msg.value < MINIMUM_USD) revert NotEnoughLiquidity();
        if (userInfo[msg.sender] == 0) {
            s_funders.push(msg.sender);
        }
        userInfo[msg.sender] += msg.value;
    }

    modifier onlyOwner() {
        // require(msg.sender == owner);
        if (msg.sender != i_owner) revert FundMe__NotOwner();
        _;
    }

    function withdraw() public onlyOwner {
        uint256 totalAmount;
        for (uint256 funderIndex = 0; funderIndex < s_funders.length; funderIndex++) {
            address funder = s_funders[funderIndex];
            totalAmount = userInfo[funder];
            assert(totalAmount <= address(this).balance);
            (bool callSuccess,) = payable(funder).call{value: address(this).balance}("");
            require(callSuccess, "Call failed");
        }
        s_funders = new address[](0);
    }

    function getFunder(uint256 index) public view returns (address) {
        return s_funders[index];
    }

    function getOwner() public view returns (address) {
        return i_owner;
    }

    fallback() external payable {
        fund();
    }

    receive() external payable {
        fund();
    }
}

// Concepts we didn't cover yet (will cover in later sections)
// 1. Enum
// 2. Events
// 3. Try / Catch
// 4. Function Selector
// 5. abi.encode / decode
// 6. Hash with keccak256
// 7. Yul / Assembly
