@RestResource(urlmapping= '/myExample/*')
global with sharing class Rest_Example {
    public static String response;
    @HttpPost
    global static String Create() {
        response = LeadUtility.CreateRecord();
        return response;
    }
    
    @HttpGet
    global static  String callMe() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String name = req.params.get('name');
        String industry = req.params.get('industry');
        String phone = req.params.get('phone');
        System.JSONGenerator js = JSON.createGenerator(true);
        js.writeStartObject();
        try {
            Account acc = New Account();
            acc.name = name;
            acc.phone = phone;
            acc.industry = industry;
            insert acc;
            js.writeStringField('Status', 'SUCCESS');
            js.writeIdField('Id', acc.Id);
            js.writeNumberField('CODE',200);
            
        }catch(Exception e) {
            js.writeStringField('Status', 'Failed');
            js.writeStringField('Error', e.getMessage());
            js.writeNumberField('CODE',400);
            
        }
        String jsonStr = js.getAsString();
        return jsonStr;
        
    }
    
}