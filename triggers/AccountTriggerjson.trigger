trigger AccountTriggerjson on Account (before insert) {
    
    String accJSON = JSON.serialize(trigger.new);
    
    ContactCreatorJson.createContact(accJSON);
   
}