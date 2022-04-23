public class Spoonacular {
   private static final String SPOONACULAR_API = 'https://api.spoonacular.com' ;
   private static final String API_KEY = 'b098abbe6e8745afac108b81cf332b73' ;
    
    public static void getRandomReceipe() {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint( SPOONACULAR_API+'/recipes/random?apiKey='+API_KEY);
        request.setMethod('GET');

      HttpResponse response = http.send(request);
     // If the request is successful, parse the JSON response.
      System.debug('response' +response.getStatusCode());
      if(response.getStatusCode() == 200) {
       System.debug('response' +response.getBody());
    }
        
    }
    
    public static void getReceipe(String ReceipeId) {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint( SPOONACULAR_API+'/recipes/'+receipeId+'/information?apiKey='+API_KEY);
        request.setMethod('GET');

      HttpResponse response = http.send(request);
     // If the request is successful, parse the JSON response.
      System.debug('response' +response.getStatusCode());
      if(response.getStatusCode() == 200) {
       System.debug('response' +response.getBody());
    }
        
    }
    
     public static void getReceipeByIngredients(String Ingredients) {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint( SPOONACULAR_API+'/recipes/findByIngredients?apiKey='+API_KEY+'&ingredients='+ingredients);
        request.setMethod('GET');

      HttpResponse response = http.send(request);
     // If the request is successful, parse the JSON response.
      System.debug('response' +response.getStatusCode());
      if(response.getStatusCode() == 200) {
       System.debug('response' +response.getBody());
    }
        
    }
}