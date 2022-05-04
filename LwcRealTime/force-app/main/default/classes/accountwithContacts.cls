public with sharing class accountwithContacts {
   @AuraEnabled(cacheable=true)
   public static List<Account> accuntwithConts() {
           List<Account>accList = [Select id, name,phone,(Select id, Email From Contacts) From Account Limit 5];
           return accList;
   }
}