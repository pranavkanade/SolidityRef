pragma solidity ^0.4.24;

/*
** OBJECTS/CONTRACTS

** Calling external contract

contract InfoFeed {
    function info() returns (uint ret) { return 42; }
}

contract Consumer {
    InfoFeed feed; // points to contract on blockchain

    function setFeed(address addr) {
        feed = InfoFeed(addr); // this gives the handle of already deployed contract; Constructor does not get called.
    }

    function createNewFeed() {
        feed = new InfoFeed(); // New instance gets created; constructor gets called.
    }

    function callFeed() {
        feed.info.value(10).gas(800)();
    }
}



 */