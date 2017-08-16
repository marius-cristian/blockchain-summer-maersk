pragma solidity ^0.4.2;

contract Migrations {
  address public owner;
  uint public last_completed_migration;
  string from;
  uint value;
  string to;

  modifier restricted() {
    if (msg.sender == owner) _;
  }

  function Migrations() {
    owner = msg.sender;
  }

  function setCompleted(uint completed) restricted {
    last_completed_migration = completed;
  }

  function upgrade(address new_address) restricted {
    Migrations upgraded = Migrations(new_address);
    upgraded.setCompleted(last_completed_migration);
  }

  function computeVAT(uint rate) public return(uint tax){
    return value*tax;
  }
}

