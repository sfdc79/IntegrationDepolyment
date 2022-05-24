public class OpportunityTriggerController {
    // when ever opportunity updated/inserted then update projectDemo field OpportunitytotalAmount__c
    public static void updateProjectAmount(List<Opportunity>NewOpps){
       /* List<ProjectDemo__c> listOfProject = [Select id,OpportunityTotalAmount__c From ProjectDemo__c Where id =: NewOpps];
        List<AggregateResult>oppAmountList = [Select count(id),ProjectDemoId__c,Sum(OpportunityAmount__c)toalamnt From Opportunity Group by ProjectDemoId__c];
         List<ProjectDemo__c> updatelistOfProject = new List<ProjectDemo__c>();                                          
        for(ProjectDemo__c proj : listOfProject){
             proj.OpportunityTotalAmount__c = 0;
            for(AggregateResult ar : oppAmountList){
              if((Decimal)ar.get('toalamnt') != NULL)
                proj.OpportunityTotalAmount__c = (Decimal)ar.get('toalamnt') ;
                updatelistOfProject.add(proj);
            }
           
        }
        if(updatelistOfProject.size()>0)
        update updatelistOfProject; */
        
    }

}