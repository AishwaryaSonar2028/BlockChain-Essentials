pragma solidity ^0.4.21 < 0.6.12;

contract ReportCard{
    
    string public name;
    uint public rollno;
    uint public batch;
    string public status;
    uint  sub1;
    uint  sub2;
    uint  sub3;
    uint  sub4;
    
    constructor(string newName,uint newRollno,uint newBatch,uint marks_Of_C,uint marks_Of_Cpp,uint marks_Of_Python,uint marks_Of_BlockChain)public{
       
        name = newName;
        rollno = newRollno;
        batch = newBatch;
        
       
        sub1 = marks_Of_C; //outof 100
        sub2 = marks_Of_Cpp; //outof 100
        sub3 = marks_Of_Python; //outof 100
        sub4 = marks_Of_BlockChain; //outof 100
       
        uint result = sub1 + sub2 + sub3 + sub4;
        
         
        
        if(result < 200){
            status = "Fail";
        }
        else {
            status = "Pass";
        }
        
    }
    
    function getDetails()public view returns(string,uint,uint,string){
       
        return(name,rollno,batch,status);
        
    } 
    
}