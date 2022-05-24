@isTest
private  class UtilsTest {
    @istest
    private static void getPicklistValueMap() {
        String objectName = 'Contact';
        
        String fieldName ='LeadSource';
        
        Schema.SObjectType s = Schema.getGlobalDescribe().get(objectName) ;
        
        Schema.DescribeSObjectResult r = s.getDescribe() ;
        Map<String,Schema.SObjectField> fields = r.fields.getMap() ;
        Schema.DescribeFieldResult fieldResult = fields.get(fieldName).getDescribe();
        Utils.getPicklistValueMap(fieldResult );
    }
    
    @istest
    private static void sendEmailTest() {
        List<string>tomailup = New List<String>{'kpurnachandu173@gmail.com','kpurnachandu@gmail.com'};
       List<string>ccmailup = New List<String>();
        ccmailup.add('kpurnachandu1753@gmail.com');
        ccmailup.add('kpurnachandu5@gmail.com');
        
        String subjectTest = 'Demo testing Method';
        
        String mailbodyTest = 'Testing email send method';
        
         Utils.sendEmail(tomailup,ccmailup,subjectTest,mailbodyTest);
    }
}