public class jsonParserExample {
    Public static String str;
    Public static List<integer>ages;
    
    public static void learntokens() {
        ages = new List<integer>();
        str = '{"Name" : "Kirn", "Salary" : 100000, "age" : 32}';
        
        System.JSONParser js = Json.createParser(str);
        
        while(js.nexttoken() != null) {
            if(js.getCurrentToken() == System.JSONToken.VALUE_NUMBER_INT) {
                 integer a = (Integer)js.getIntegerValue();
            ages.add(a);
            }
               
        }
        System.debug(ages);
    }

}