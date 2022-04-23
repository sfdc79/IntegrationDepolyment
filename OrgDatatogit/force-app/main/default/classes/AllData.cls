@RestResource(urlmapping= '/AllRecords/*')
global with sharing class AllData {
    @HttpGet
   global static  String getAllLeads() {
        String jsonString ;
       integer Count;
       
        RestRequest request = RestContext.request;
        // grab the caseId from the end of the URL
        String caseId = request.requestURI.substring(
          request.requestURI.lastIndexOf('/')+1);
       Boolean value = Boolean.valueOf(caseId);
        List<Lead> result =  [SELECT RecordSend__c,Phone,Company,Name,Createddate
                        FROM Lead
                        WHERE RecordSend__c = :value and Createddate = LAST_YEAR];
       integer recordsSize = result.size();
        System.JSONGenerator js = JSON.createGenerator(true);
       
       js.writeStartObject();
      
           try {
             js.writeStringField('Status', 'SUCCESS');
            js.writeNumberField('Record Number', recordsSize);
            js.writeNumberField('CODE',200);
       }
       Catch(Exception e) {
           js.writeStringField('Status', 'FAILED');
           //js.writeNumberField('Record Number', i);
            js.writeStringField('Error', e.getMessage());
            js.writeNumberField('CODE',400);
       }
          jsonString = js.getAsString();
        return jsonString;
    }
}