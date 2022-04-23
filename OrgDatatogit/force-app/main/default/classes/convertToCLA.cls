public class convertToCLA {
    
    List<Contact>con;
    List<Lead>le;
    List<Account>acc;
    
    
    public void Converttype(Integer PhoneNumber)  {
        
        List<List<sObject>> results = [FIND '4155557000'
                                      IN Phone FIELDS 
                                      RETURNING Contact(ID, Phone, LastName),
                                      Lead(Id, Phone,FirstName,LastName), Account(Id, phone, Name)];
        sObject[] records = ((List<sObject>)results[0]);
        
        if(!records.isEmpty()) {
            for (Integer i = 0; i<records.size(); i++) {
                sObject record = records[i];
                
                 if(record.getSobjectType() == Contact.sObjectType) {
                con.add((Contact) record);
                
            }   
            
            else if(record.getSobjectType() == Lead.sObjectType) {
                le.add((Lead) record);
            }
            else if(record.getSobjectType() == Account.sObjectType) {
                Acc.add((Account) record);
            }
            }
            
           
            
        }
        
      
    }

}