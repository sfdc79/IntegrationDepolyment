public class StaticVarCheck {
    // static variable is class scope it means it is same for all methods
    // we dont need any reference obj to call static variables or methods
    // static can be used in only methods or variables
    
public static integer val =10;
  public  integer nonstaticval =11;
    public static integer staticblocval;
    
    //to intilize  static value use static block  and u can use throughout class 
    static {
        staticblocval = 79;
    }
    
    
    public static integer checkstatic1() {
        val =15;
        // a static block cannot call non static variable
        //System.debug(nonstaticval);
        return val;
    }
    public static integer checkstatic2() {
       // expecting val = 10; but val is 15 as it is class scope
        return val;
    }
    // a non static method can call static variable
    public  integer nonstaticcheckstatic3() {
       // expecting val = 10; but val is 15 as it is class scope
        return val;
    }
    
    public static void mainmethod() {
        System.debug(StaticVarCheck.checkstatic1());
System.debug(StaticVarCheck.checkstatic2());
    }
}