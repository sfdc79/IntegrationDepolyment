public class TestDemoCaontactBatch implements Database.Batchable<Sobject> {
    
    public Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator('SELECT id from contact');
    }
    
    public void execute (Database.BatchableContext bc, List<Contact>sublistfromStartMethod) {
        for(Contact c : sublistfromStartMethod) {
            c.LastName = 'Batch update' + c.name;
        }
        update sublistfromStartMethod;
        
        System.debug(sublistfromStartMethod);
    }
    
    public void finish(Database.BatchableContext bc) {
        
        System.debug('@@ Batch job Completed');
    }

}