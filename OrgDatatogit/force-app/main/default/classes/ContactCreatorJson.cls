public class ContactCreatorJson {
    
     @future
    
    public static void createContact (String accJson) {
        
        list<account>accList = (list <account>) JSON.deserialize(accJson, list<Account>.class);
        
        Contact con;
        
        list<Contact> conList = new list <Contact> ();
        
        for(Account acc : accList) {
            
            con = new Contact (LastName = acc.Name + '- Con');
                
                conList.add(con);
            
        }
       insert  conList;
    }

}