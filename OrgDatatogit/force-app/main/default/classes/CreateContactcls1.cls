public class CreateContactcls1 {
          
    @Auraenabled
    
    public static string createContact(Contact contObj) {
        
        System.debug('Contact ::' + contObj.FirstName);
        
        insert contObj;
        
        return contObj.Id;  
    }
    
    @Auraenabled
    
    public static List<Contact> retrieveContacts() { 
    
    
    return[select id, FirstName, LastName, email from Contact order by createdDate desc limit 5];
    
    }
    
}