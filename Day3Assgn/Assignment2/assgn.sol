pragma solidity >=0.4.21 <0.6.12;
contract Land{
    string public owner;
    string public value;
    
    function Land(string newOwner,string newValue)public{
        owner=newOwner;
        value=newValue;
        
    }
    function setDetail(string newOwner,string newValue)public{
        owner=newOwner;
        value=newValue;
                
    }
    function getDetail()public view returns(string,string){
        return (owner,value);
    }               
}