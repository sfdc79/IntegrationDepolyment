public class SalesforceConnect {
    

  // Pass in the endpoint to be used using the string url
  public Static String getCasesFromOrgA() {

    // Instantiate a new http object
    Http h = new Http();

     // Instantiate a new HTTP request, specify the method (GET) as well as the endpoint
    HttpRequest req = new HttpRequest();
    req.setEndpoint('https://cyient-2c-dev-ed.my.salesforce.com/services/apexrest/Cases');
    req.setMethod('GET');
      req.setHeader('Authorization', 'Bearer !ARwAQL7grsWZ0NqvfH9Y855go40QLmS2zmF.mZ4V6y2M.w.wL2.Ulkd5qp_Ua_WkgtyqBX_8c23O2cfzNgkjnQarKXRtQdu6');

    // Send the request, and return a response
    HttpResponse res = h.send(req);
        System.debug(res.getBody());
    return res.getBody();
    
  }

    

}