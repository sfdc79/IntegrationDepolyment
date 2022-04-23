@RestResource(urlMapping='/ContactAPI/*')
global with sharing class ContactResource {

    // Get Method
    @HTTPGet
    global static List<Contact> getContactIdAndNames() {
        // Initializing the request parameter with the incoming request
        RestRequest contactRequest = RestContext.request;
        // Getting the request URI
        String contactRequestURI = contactRequest.requestURI;
        // Getting the limit from the request URI
        Integer contactLimit = Integer.valueOf(contactRequestURI.substring(contactRequestURI.lastIndexOf('/') + 1));
        // Querying contacts
        List<Contact> contactList = [SELECT Id, Name FROM Contact LIMIT :contactLimit];
        // Returning the contacts in the response
        return contactList;
    }
    
    // POST Method
    @HTTPPost
    global static Contact createNewContact(String firstName, String lastName, String birthDate, String leadSource) {
        // Initializing New Contact
        Contact contact = new Contact();
        contact.FirstName = firstName;
        contact.LastName = lastName;
        contact.Birthdate = Date.parse(birthDate);
        contact.LeadSource = leadSource;
        // Inserting Contact
        insert contact;
        // Returning the contact in the response
        return contact;
    }
}