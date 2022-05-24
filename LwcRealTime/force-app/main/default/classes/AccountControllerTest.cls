@isTest
private class AccountControllerTest {
    @istest
    private static void updateAccount() {
         Test.startTest();
        List<account>accList = new List<Account>();
        Account acc = new Account();
        acc.name = 'Acc testing';
        acc.BillingCity = 'Hyd';
        accList.add(acc);
        insert accList;
        
        
        Opportunity opp = new Opportunity();
        opp.Name = 'Testing opt';
        opp.AccountId = acc.id;
            opp.Amount = 50000;
        opp.CloseDate = System.today();
        Opp.StageName = 'Prospecting';
        insert opp;
        Opportunity opptn = new Opportunity();
        opptn.Name = 'Testing opt2';
        opptn.AccountId = acc.id;
            opptn.Amount = 20000;
        opptn.CloseDate = System.today();
        opptn.StageName = 'Prospecting';
        insert opptn;
        
        Account accnts = [Select id , AccountPicklist__c From Account Limit 1];
        System.debug(accnts.AccountPicklist__c);
       
        
        Account accnt = [Select id , AccountPicklist__c,BillingCity From Account Limit 1];
        List<account>accListupDate = new List<Account>();
        accnt.BillingCity = 'Bang';
        accListupDate.add(accnt);
        update accListupDate;
        AccountController.totalamountofOpportunities(accListupDate);
        System.assertEquals('Key account', accListupDate[0].AccountPicklist__c);
         Test.stopTest();
        
    }

}