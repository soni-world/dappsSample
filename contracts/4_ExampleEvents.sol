// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ExampleEvents {
    // 🔹 Declare an event
    event Deposit(address indexed from, uint amount);
    event Withdraw(address indexed to, uint amount);

    // Function to receive ETH
    function deposit() public payable {
        require(msg.value > 0, "Send some ETH");
        emit Deposit(msg.sender, msg.value); // 🔹 Emit event
    }

    // Function to withdraw ETH (dummy for example)
    function withdraw(uint amount) public {
        require(amount > 0, "Amount must be > 0");
        payable(msg.sender).transfer(amount);
        emit Withdraw(msg.sender, amount); // 🔹 Emit event
    }
}
