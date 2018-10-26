pragma solidity ^0.4.24;

/*
** modifier **

- Modifiers validate the inputs to functions before processing actually starts.
- validation such as minimal balance or user auth;

modifier onlyAfter(uint _time) { require (now >= _time); _; }
modifier onlyOwner { require(msg.sender == owner ); _; }

function changeOwner(newOwner)
onlyAfter(someTime)
onlyOwner()
{
    owner = newOwner;
}

- We can apply these modifiers towards the end.
- As a result, the explicit returning will skip.

modifier checkValue(uint amount){
    _;
    if (msg.value > amount) {
        uint amountToRefund = amount - msg.value;
        msg.sender.transfer(amountToRefund);
    }
}


*/