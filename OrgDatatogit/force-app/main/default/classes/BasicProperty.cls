public class BasicProperty {
    public integer prop {
        get { return prop; }
        set { prop = value; }
    }
    
    public void mainmethod() {
        
         //The following code segment calls the BasicProperty class, exercising the get and set accessors:
  BasicProperty bp = new BasicProperty();
  bp.prop = 5; // Calls set accessor
  System.assertEquals(5, bp.prop); // Calls get accessor
        System.debug(bp.prop);
}
   
}