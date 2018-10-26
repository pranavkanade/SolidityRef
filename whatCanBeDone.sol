pragma solidity ^0.4.19;

contract WhatCanBeDone {
    uint amountOfMoney = 0;
    address owner;
    owner.transfer(amountOfMoney);
    // write require before this
    owner.send();

    // multi dimensional array
    uint x[][5];

    // console.log
    console.log[owner.balance];

    // Public allows following from another contract
    contractName.balances("peter");

    // public created a getter (but not setter) like following
    function balances(string accountHolder) returns (uint balance) {
        return balances[accountHolder];
    }

    // Nested mapping
    mapping (address => mapping (address => uint)) public custodians;

    delete balances["John"]; // sets every thing to zero.
    // this does not actually delets any thing.

    struct Bank {
        address owner;
        uint balance;
    }

    Bank b = Bank({
        owner: msg.sender,
        balance: 5
    });

    // or
    Bank c = Bank(msg.sender, 5);

    c.balance = 10; // set new value
    delete b;
    // Sets to initial value, set all variables in struct to 0, except mapping

    // Enums
    enum State {Created, Locked, Inactive}; // ofter used for state machine

    State public state; // Declare variable from enum
    state = State.Created; // enums can be explicitly converted to ints

    uint createdState = uint(State.Created); // 0


    // **this** is holds the address of the current contract.
    this;
    // it is often used at the end of any contract's life to transfer remaining balance

    this.balance;
    this.someFunction(); // calls function externally via call, not via internal jump;

    // ** msg **
    msg.sender; // address of the sender
    msg.value;  // amount of ether provided to this contract in wei. The function should be marked as `payable`.
    msg.data;   // bytes, complete call data
    msg.gas;    // remaining gas

    // ** tx - transaction **
    tx.origin;
    tx.gas;

}