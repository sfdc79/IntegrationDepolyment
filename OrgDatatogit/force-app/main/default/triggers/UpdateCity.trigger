trigger UpdateCity on Account (before insert) {
    set<Id>AccountIds = New set<Id>();
    
    for(Account acc : Trigger.new) {
        
        if(acc.City__c != Trigger.oldmap.get(acc.Id).City__c) {
            
            AccountIds.add(acc.id);
        }
        
       
    }
    List<Opportunity>opp = [SELECT id , Name , City__c from Opportunity where accountId in :AccountIds];
    
    for(Opportunity opport: opp) {
        
        opport.City__c = Trigger.Newmap.get(opport.accountId).City__c;
        
        opp.add(opport);
        
    }
    
    update opp;
}