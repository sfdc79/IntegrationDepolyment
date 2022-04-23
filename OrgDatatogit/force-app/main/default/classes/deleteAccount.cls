public class deleteAccount {
 
    Public static void deletematchedaccount(String accname) {
        List<Account> acc = [select id, name From Account  where name =: accname ];
        System.debug(acc);
        if(acc != null) {
            delete acc; 
        }
       
        
    }
}