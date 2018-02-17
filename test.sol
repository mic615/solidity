pragma solidity ^0.4.4;

import "https://github.com/mic615/solidity/mortal.sol";

contract Pokemon is mortal {
    
    uint number;
   
    
    function Pokemon() payable {
        number=1;
    }
    
    function setNumber(uint newNumber) onlyowner{
      
        number=newNumber;
        
    }
   
     function getNumber(uint newNumber) constant returns(uint){
        return number;
    }
    
    function getPokemonBalance() constant returns(uint){
        return this.balance;
    }
    
    function () payable{
        
    }
    
}