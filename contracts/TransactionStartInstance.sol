pragma solidity ^0.4.2;

//Basic stripped down transcation state

/// @title TransactionInstance
contract Transaction {
  struct data{
  	uint value;
  	string currency;
  	string sender;
  	string receiver;
  }

  data info;

  address public emiter;

  //constructor that initialises the data
  function Transaction(uint val, string cur, string s, string rec){
  	info.value=val;
  	info.currency=cur;
  	info.string=s;
  	info.receiver=rec;
  }

  function public read()constant returns(data){
  	return info;
  }

}


pragma solidity ^0.4.2;

//Contract 2

/// @title Transaction exteded once
contract TransactionExtended is Transaction {
  struct subsidiary_data{
  	bool is_modified;
  	Transaction transaction;
  	string modifier;
  } info;

  address public emiter;

  //constructor that initialises the data
  function TransactionExtended(Transacton trans, bool mod, string text){
  	info.transaction=trans;
  	info.modifier=text;
  	info.is_modified=mod;
  }

  function public read_more()constant returns(subsidiary_data){
  	return info;
  }
}

// Contract 3

contract TransactionExtended2 is Transaction Extended{
	struct subsidiary_data{
		TransactionExtended data;
		string myName;
	}
}

