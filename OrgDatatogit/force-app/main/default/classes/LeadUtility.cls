public class LeadUtility {
    public static String jsonString{get;set;}
    
    public class  WrapperRequest {
        public string name {get;set;} 
        public string phone {get;set;}
        public string industry {get;set;}
        
    }
    
    public static  string CreateRecord() {
        String jsonStng;
        RestRequest req = RestContext.request;
        System.debug('RestRequest'+ req);
        /* 19:08:12:007 USER_DEBUG [17]|DEBUG|RestRequestRestRequest:[headers={Accept=application/json, Accept-Encoding=gzip, 
* CipherSuite=ECDHE-RSA-AES256-GCM-SHA384 TLSv1.2 443, Content-Type=application/json; charset=UTF-8, 
* Host=clientpc-dev-ed.my.salesforce.com, User-Agent=Workbench/54.0.0, X-B3-Sampled=0, X-B3-SpanId=0e7506b1ad543b91, 
* X-B3-TraceId=0e7506b1ad543b91, X-PrettyPrint=true, ...}, httpMethod=POST, params={}, remoteAddress=35.173.67.53, 
* requestBody=Blob[94], requestURI=/myExample/, resourcePath=/services/apexrest/myExample/*] */
        jsonString = req.requestBody.tostring();
        System.debug('jsonString' + '= '+ jsonString);
        /* jsonString = {
*  "name" : "PC Testing25645",
*  "Phone" : "56213468944",
*  "industry" : "Agriculture"
} */
        
        WrapperRequest wResp=(WrapperRequest) JSON.deserialize(jsonString,WrapperRequest.class);
        System.debug('wResp '+'= '+ wResp);
        /*wResp = WrapperRequest:[industry=Agriculture, name=PC Testing25645, phone=56213468944] */
        System.JSONGenerator Js = JSON.createGenerator(true);
        System.debug('Js '+'=' +Js);
        /* Js = JSONGenerator:[delegate=common.apex.json.ApexJsonGenerator@6bfdad3] */
        Js.writeStartObject();
        try {
            Account acc = New Account();
            acc.name =  wResp.name;
            acc.phone =  wResp.phone;
            acc.industry =  wResp.industry;
            insert acc;
            js.writeStringField('Status', 'SUCCESS');
            js.writeIdField('Id', acc.Id);
            js.writeNumberField('CODE',200);
            
        }catch(Exception e) {
            js.writeStringField('Status', 'Failed');
            js.writeStringField('Error', e.getMessage());
            js.writeNumberField('CODE',400);
            
        }
        jsonStng = js.getAsString();
        
        return  jsonStng;
    }
    
}