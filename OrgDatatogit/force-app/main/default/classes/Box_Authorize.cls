public class Box_Authorize {
    
    public String code {Set;get;}
    public PageReference requestCode() {
        Map<String,Box__c>boxref = New Map<String,Box__c>();
        Box__c b = boxref.get('IntegrationBox');
        String url = 'https://account.box.com/api/oauth2/authorize?';
        url = url+'response_type=code&client_id='+b.clientId__c;
        url= url+'&redirect_uri='+b.redirectUrl__c+'&state=HK';
        PageReference p = new PageReference(url);
       
       // System.debug(p);
        return p;
        
        
    }
    

}