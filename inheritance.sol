pragma solidity ^0.4.24;

/*
** OBJECTS/CONTRACTS

** Inheritance

- Keep the order in mind the later contracts will override the initial parts of previously inherited contracts.

contract MyContract is abc, def("a custom argument to def") {
    // override function
    function z() {
        if (msg.sender == owner) {
            def.z(); // call overridden function from def
            super.z(); // call immediate parent override function.
        }
    }

    // abstract function
    function someAbstractFunction(uint x);
    - cannot be compiled, so use this in base or abstract contracts that are then implemented.
}


 */