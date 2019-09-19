pragma solidity ^0.4.19;

contract Token {

 mapping(address => uint) balances;
 function transfer(address _to, uint8 _value) public {
   require(balances[msg.sender] – _value >= 0);
   balances[msg.sender] -= _value; //Underflow here
   balances[_to] += _value;
 }
}
