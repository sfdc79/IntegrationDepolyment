@isTest
public class FitnessClassTest {
    @isTest
    public static void calculatefitness() {
    decimal z = fitnessclass.calculateBMI(56, 5) ;
        z = z.setScale(2);
        System.assert(z == 2.2 , 'Case Failed' );
    }
        @isTest
         public static void calculatefit() {
       decimal v = Fitnessclass.calculatepace(2 , 120);
              v = v.setScale(2);
         System.assert(v == 1 , 'Case Failed' );
   }
}