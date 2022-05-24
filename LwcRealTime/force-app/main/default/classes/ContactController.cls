public with sharing class ContactController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> fetchContact(){
        try {
            List<Contact> contactList = new List<Contact>();
            contactList = [select id, Name from Contact order by Name ASC limit 10];
            return contactList;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}