public class AccountController {
    /* Find total average opportunity size of amount for each account for all opportunities
of the current quarter (consider year from Jan to Dec).
 If average &gt; 10000- mark Key account, if 5000&lt;Average&lt;= 10000 mark Engage
account, else mark Low engagement account */
    public static void totalamountofOpportunities(List<Account>accList) {
        
        List<Aggregateresult> res = [Select AccountId,count(id)noofopps,sum(Amount)totalopps  From opportunity Group by AccountId Having AccountId IN: accList];
        
        for(Account a : accList) {
            for(Aggregateresult ar : res) {
                decimal totalval =  (Decimal)ar.get('totalopps');
                integer numberofopps =  (integer)ar.get('noofopps');
                Decimal Averageamount = totalval/numberofopps;
                System.debug('Averageamount'+ Averageamount);
                if(Averageamount >10000) {
                    a.AccountPicklist__c = 'Key account';
                    
                }
                else if(Averageamount >5000 && Averageamount <=10000) {
                    a.AccountPicklist__c = 'Engage account';
                }
                else {
                    a.AccountPicklist__c = 'Low engagement account';
                }
                System.debug(a.AccountPicklist__c);
                
            }
        }
        
        
    }
}