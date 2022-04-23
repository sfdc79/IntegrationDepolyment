public class SalesforceConnects {
public static String getCasesFromSalesforceOrgB() {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint( 'https://purnachandukakileti-dev-ed.my.salesforce.com/services/apexrest/Case');
        request.setMethod('GET');
        request.setHeader('Authrorization','Bearer !AQgAQJ2tgAMb_N56TBmkwvxJ3fYRw3d9gGNFzdVYuI5pRnwsQjRbzBSkR1iERTMwQV5TyG68NDmU5qYZ1YHhFXMJBGRW.q1E');

      HttpResponse response = http.send(request);
     // If the request is successful, parse the JSON response.
      System.debug('response' +response.getStatusCode());
      if(response.getStatusCode() == 200) {
       return(response.getBody());
    }
         return('');
    }
}