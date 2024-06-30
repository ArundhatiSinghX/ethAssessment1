//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ErrorWorld {

    mapping (address => uint ) private balances;

    event Withdraw(address indexed owner, uint amount);
    event Deposit(address indexed owner, uint amount);


    //revert
    function myRevert(address _account, uint _amount) public payable{
        if(balances[_account] <= 0){
            revert("What are you trying to withdraw?");
        }
        
        balances[_account]-= _amount;
        emit Withdraw(_account,_amount);
    }

    //require
    function myRequire(address _account, uint _amount) public payable {
        require(_amount > 0,"What are you trying to deposit?");
        balances[_account] += _amount;
        emit Deposit(_account, _amount);
    }

    //assert
    uint public num ;
    function myAssert() public view{
        assert(num == 0);      
    } 
}