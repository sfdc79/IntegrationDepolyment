/*Public Class FirstProgram{
 Public String Gretting = 'HelloWorld';
        Public Void printgreting(){
            System.debug(Gretting);
            }
}
*/

// Parameterization//



Public Class Parameterization{
 /*private String Gretting1 = 'Goodmorning';
  private String Gretting2 = 'GoodAfternoon';
   private String Gretting3 = 'Goodevening';
        Public Void printgreting1(){
            System.debug(Gretting1);
            }
        Public Void printgreting2(){
            System.debug(Gretting2);
            }
        Public Void printgreting3(){
            System.debug(Gretting3);
            }
  */
  
  Public void Gretting(String msg){
    System.debug(msg);
  
  }
     
    
   public string  getday ( Integer daynumber)
   {
    
    String today = '';
        
    switch on daynumber
    {
        when  1
        {
            today = 'monday';
        }
        
        when  2
        {
            today = 'tuesday';
        }
         when  3
        {
            today = 'wednesday';
        }
        
        when else
        {
           today = 'invalid';
        }
 
 
     }
   return today;
  }
  

                        
}