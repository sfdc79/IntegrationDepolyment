public class Covid19tracker {
    public static integer recoveredindia = 0;
    public integer recoveredarea =0;
    Public void treatingpatients(){
        
        recoveredindia++;
        recoveredarea++;
        
        
    }
    
    public Covid19tracker(){
    
    System.debug('tracker');
    
    }
    
    
    
    public Covid19tracker(integer number1 , integer number2){
    
    System.debug(number1 + number2);
    
    }
    
    // Intilization block 
    
     {
     
       recoveredarea =5;
       recoveredindia =57;
     
     
     }
    
}