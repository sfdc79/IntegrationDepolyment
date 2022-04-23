@isTest
public class Covid19classTest {
    @isTest
    public static void treatpatientsTest() {
        // create the instance of the class
        Covid19class jaipur = new Covid19class(15);
        // check count is 15 or not
        integer y =jaipur.getTreatedInarea();
        System.assertEquals(15, y,'Treatment count doesnt matched');
       
        Covid19class coun = new Covid19class(110);
        // check count is 15 or not
        
        System.assertEquals(110, Covid19class.recoveredInCountry,'Treatment count doesnt matched');
        
        
        jaipur.treatpatients();
        integer a = jaipur.RecoveredInArea;
        System.assert(a == 16,'Treatment count doesnt matched');
        System.assert(Covid19class.recoveredInCountry == 111,'Treatment count doesnt matched');
    }
    
    
}