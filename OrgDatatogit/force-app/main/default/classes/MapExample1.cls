public class MapExample1 {
 
    List<SelectOption>objects = New List<SelectOption>();
    List<SelectOption>Fields = New List<SelectOption>();
    
    public static void method1(){
        List<string>Acc = New List<String>{'Account', 'Contact', 'Opportunity'};
              List<string>AccF = New List<String>{'Industry', 'Name', 'Email'};
            List<string>ContF = New List<String>{'LastName', 'FName', 'Email'};
               Map<String, List<string>> mapobj = new Map<String,List<string>>();
                mapobj.put('Account', AccF);
        mapobj.put('Contact', ContF);
        set<String>Sobjects = mapobj.KeySet();
        System.debug('Sobjects >>' + Sobjects);
        System.debug('KeyValue >>' + mapobj);
                 
    }
}