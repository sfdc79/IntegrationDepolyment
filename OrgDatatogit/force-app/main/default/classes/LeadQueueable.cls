public class LeadQueueable implements Queueable {
    
    public void execute (QueueableContext context) {
        
        List<Lead>existingRecords = [SELECT Id,Leadsource From LEAD];
        
        for(Lead record : existingRecords) {
            
            record.LeadSource = 'web';
        }
        
        update existingRecords;
    }

}