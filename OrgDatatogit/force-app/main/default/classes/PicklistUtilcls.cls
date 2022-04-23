public class PicklistUtilcls {
    
    @Auraenabled
    public static Map<string,string> retrieveValues() {
        Map<String,String>DummyValuesMap = new Map<String, String>();
        
        for(Contact contObj:[SELECT id, name from Contact limit 10]) {
            
            DummyValuesMap.put(contObj.Id, contObj.Name);
        }
        return DummyValuesMap;
    }

}