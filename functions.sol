pragma solidity ^0.4.19;

// ** function modifier **
// ** constant/view - indicates that function does not/cannot change persistent vars. constant function execute locally, not on the blockchain.
// ** pure - does not allow even the reading of the state vars.

// ** visibility specifires **
// public - visible externallly and internally ( default for funtions)
// external - only visible externally (including a call made with `this.`)
// private - only visible in current contract
// internal - only visible in current contract, and those deriving from it.