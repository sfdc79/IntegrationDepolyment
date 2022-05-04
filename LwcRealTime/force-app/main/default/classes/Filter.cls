public with sharing class Filter {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getconList() {
        return[Select id,Name,Email,phone From Contact Limit 20];
    }
}