// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MyContract {
    string public message = "Test World";

    event MessageUpdated(address indexed _user, string message);

    function UpdateMessage(string memory _message) public {
        message = _message;
        emit MessageUpdated(msg.sender, message);
    }    
}