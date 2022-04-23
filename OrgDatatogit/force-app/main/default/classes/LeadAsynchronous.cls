/*public class LeadAsynchronous {
  @future
    
    public static void updateLeadRecords(Set <Id> existingRecordsIds) {
        List <Lead> existingRecords = [SELECT ID, LeadSource FROM Lead Where Id IN :existingRecordsIds];
        for(Lead record : existingRecords) {
            record.LeadSource = 'Web';
        }
        update existingRecords;
           
    }
    
@future
    Public static void createRecords() {
        Lead Newlead = new Lead (LastName = 'Test Lead 56' , Status = 'Open - Contacted', Company = 'SFDC FACTS' );
        insert newlead;
    }
    
}

*/

public class LeadAsynchronous {

    @future
    public static void updateLeadRecords(Set<Id> existingRecordIds){
        List<Lead> existingRecords = [SELECT Id, LeadSource FROM Lead WHERE Id IN :existingRecordIds];
        for(Lead record : existingRecords){
            record.LeadSource = 'Web';
        }
        update existingRecords;

        // calling another future method - NOT ALLOWED
        // createLeadRecords();
    }

	@future
    public static void createLeadRecords(){
        Lead anotherLead = new Lead(LastName='Test Lead Single', Status='Open - Not Contacted', Company='SFDCFacts', Industry='Finance');
        insert anotherLead;
    }
}