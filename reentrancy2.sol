pragma solidity ^0.4.8;

contract Victim {mapping(address => uint) public _balanceOf;

  function withdraw(){
      require (_balanceOf[msg.sender] > 0);
      uint x = _balanceOf[msg.sender];
      msg.sender.call.value(x)();
      _balanceOf[msg.sender] = 0;
  }

  function deposit() payable {
      _balanceOf[msg.sender] = msg.value;
  }
}
  
