trigger AccountTriggerjson on Account (before insert) {
    
    String accJSON = JSON.serialize(trigger.new);
    // testing git desktop

    ContactCreatorJson.createContact(accJSON);
System.debug();   
}