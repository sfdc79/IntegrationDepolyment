trigger UpdateName on Account (before insert) {
    
    List<Account>accntList = New List<Account>();
    for(Account a : Trigger.new) {
        
        if(a.Phone != null) {
            
            a.Name = a.Name + a.Phone;
            
        }
        
        
    }
  
}