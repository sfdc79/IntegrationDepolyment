public class ContactListController {
    
    @AuraEnabled
    
    public static List<Contact> getcontactlist(String accid) {
        
        List<Contact>cont = new List<Contact>([SELECT id, name, FirstName, Lastname, Email, phone from contact where Email != null AND AccountId =:accid]);
        
        return cont;
        
    }
    
    
     @AuraEnabled
    
    public static Contact insertcontacts(Contact con, Id AcctId) {
        
        con.AccountId = AcctId;
        
        insert con;
        
        return con;
    }

}