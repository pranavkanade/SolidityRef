pragma solidity ^0.4.19;

contract SimpleBank {
    mapping (address => uint) private balances;
    address public owner;

    //  Events - publicize actions to external listeners.
    event LogDepositMade(address accountAddress, uint amount);

    // Constructor
    // function SimpleBank() public {       -> depricated
    constructor() public{
        // msg.sender is the one who actually deployed the contract
        owner = msg.sender;
    }

    function deposit() public payable returns (uint) {
        // Use 'require' to test user inputs, 'assert' for internal
        // invariants
        // Make sure that there is no overflow of the datatype issue.
        require((balances[msg.sender] + msg.value) >= balances[msg.sender]);

        balances[msg.sender] += msg.value;
        emit LogDepositMade(msg.sender, msg.value); // fire event

        return balances[msg.sender];
    }

    function withdraw(uint amountToWithdraw) public returns (uint) {
        require(amountToWithdraw <= balances[msg.sender]);
        balances[msg.sender] -= amountToWithdraw;
        msg.sender.transfer(amountToWithdraw);

        return balances[msg.sender];
    }

    function balance() public view returns(uint) {
        return balances[msg.sender];
    }
}