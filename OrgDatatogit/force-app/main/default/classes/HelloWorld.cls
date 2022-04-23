public class HelloWorld

{

  String Gretting ='hello world' ;
  
   public void print_gretting()
   {
       System.debug(Gretting);
   
   }
   public void print_message(String msg)
      {
      
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
  
  public string  getday ( String dayfullform)
   {
    
    String today = '';
        
    switch on dayfullform
    {
        when  'mon'
        {
            today = 'monday';
        }
        
        when  'tues'
        {
            today = 'tuesday';
        }
         when  'wed'
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