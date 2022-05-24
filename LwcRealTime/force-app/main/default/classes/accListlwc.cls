public with sharing class accListlwc  {
   @AuraEnabled(cacheable=true)
   public static List<Account> accuntList5() {
           List<Account>accList = [Select id, name,Type,Industry From Account  Where type !=null Limit 5 ];
           return accList;
   }
     @AuraEnabled(cacheable=true)
   public static List<Account> findAccounts(String searchval) {
       String searchvalue = '%' + searchval +'%' ;
           List<Account>AccountList = [Select id, name,Type,Industry From Account  Where name like :searchvalue Limit 5 ];
           return AccountList;
   }
}