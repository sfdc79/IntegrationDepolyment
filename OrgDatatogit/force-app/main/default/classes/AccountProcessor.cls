public class AccountProcessor {
   /* @Future 
    public static void countContacts(List<id>ids) {
       List<Account>acc = [Select id, Name, Number_Of_Contacts__c, (Select id, lastName From Contacts)  From Account where Id =: ids];
        for(Account a : acc) {
            List<Contact>num = acc. Contact;
        }
    }
*/
 @future
  public static void countContacts(Set<id> setId) 
  {
      List<Account> lstAccount = [select id,Number_of_Contacts__c , (select id from contacts ) from account where id in :setId ];
      for( Account acc : lstAccount )
      {
          List<Contact> lstCont = acc.contacts ;
          
          acc.Number_of_Contacts__c = lstCont.size();
      }
      update lstAccount;
  }
}