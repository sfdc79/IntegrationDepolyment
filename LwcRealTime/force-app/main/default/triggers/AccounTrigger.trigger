trigger AccounTrigger on Account (before update,before insert, before delete, after insert, after update) {
    if(trigger.isBefore && trigger.isUpdate) {
        AccountController.totalamountofOpportunities(Trigger.new);
    }
    
        

}