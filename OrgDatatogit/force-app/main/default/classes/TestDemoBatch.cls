public class TestDemoBatch implements Database.Batchable<Sobject> {
    
    public Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator('SELECT id from Account');
    }
    
    public void execute (Database.BatchableContext bc, List<Account>sublistfromStartMethod) {
        for(Account acc : sublistfromStartMethod) {
            acc.name = 'Batch update' + acc.name;
        }
        update sublistfromStartMethod;
        
        System.debug(sublistfromStartMethod);
    }
    
    public void finish(Database.BatchableContext bc) {
        
        System.debug('@@ Batch job Completed');
        
        Database.executeBatch(new TestDemoCaontactBatch(), 20);
    }

}