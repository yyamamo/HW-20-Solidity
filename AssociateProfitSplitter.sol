pragma solidity ^0.5.0;
import "github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/math/SafeMath.sol";
// lvl 1: equal split
contract AssociateProfitSplitter {
    using SafeMath for uint;
    address payable owner = msg.sender;
    address payable employee_one;
    address payable employee_two;
    address payable employee_three;
    
    //Create three payable addresses representing `employee_one`, `employee_two` and `employee_three`
    constructor(address payable _one, address payable _two, address payable _three) public {
        employee_one = _one;
        employee_two = _two;
        employee_three = _three;
    }

    function balance() public view returns(uint) {
        return address(this).balance;
    }
    
    
    function deposit() public payable {
        
        uint amount = msg.value.div(3); 

        // Transfer the amount to each employee
        employee_one.transfer(amount);
        employee_two.transfer(amount);
        employee_three.transfer(amount);
        

        // take care of a potential remainder by sending back to HR (`msg.sender`)
        uint reminder = msg.value.sub(amount.mul(3)); 
        return owner.transfer(reminder);
    }

    function () external payable {
        //Enforce that the `deposit` function is called in the fallback function!
       deposit();
    }
}
