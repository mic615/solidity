pragma solidity ^0.4.4;

contract mortal {
    address owner;
    
    modifier onlyowner(){
        if (owner == msg.sender){
                 _;
        }else {
            throw;
        }
    }
    
     function mortal(){
         owner = msg.sender; 
     }
    
     function kill(){
       
            suicide(owner);
    
    }
}