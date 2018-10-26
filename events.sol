pragma solidity ^0.4.24;

// Events
// to notify external parties; easy to search and access events from outside blockchain (with lightweight clients). Typically declare after contract parameters.

// Declare
contract Demo {
    event LogSent(address indexed from, address indexed to);
    address from_1;
    address to_1;

    function test() public {
        emit LogSent(from_1, to_1);
    }

    // Watch using web3 -
    /*
    Coin.LogSent().watch({}, '', (error, result) => {
        if (!error) {
            console.log(result);
        }
    });
    */
}