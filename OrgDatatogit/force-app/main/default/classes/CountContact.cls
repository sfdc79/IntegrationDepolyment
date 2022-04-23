public class CountContact {
    
    public static void countcontacts(List<Contact>newcontact, List <Contact> oldcontact) {
        
        set<id>contactids;
        try {
            
            if(newcontact != null) {
            for(Contact c : newcontact) {
                if(c.AccountId != null) {
                    contactids.add(c.accountid);
                } 
            }
        }
        
        if(oldcontact != null) {
            for(Contact c : oldcontact) {
                if(c.AccountId != null) {
                    contactids.add(c.accountid);
                } 
                
            }
        }
      
        List<Account> acc =New List < Account>([SELECT id, CountContacts__c, (SELECT Id From contacts) from Account where ID IN : contactids]); 
        
        if(acc != null) {
            
            for(Account a : acc) {
                
                a.CountContacts__c = a.Contacts.size();
            }
        }
        
        if(! acc.isEmpty()) {
            
            update acc;
        }
            
        }  
        
        Catch(Exception e) {
            
            System.debug('e.getMessage' + e.getMessage());
        }
        
    }

}