public class FitnessClass {
    public static Decimal calculateBMI(Decimal weight, Decimal height) {
        if(weight <=0 || height <= 0) {
            return -1;
        }
        Decimal result = Weight / (height * height);
        return result;
        }
    
    public static Decimal calculatepace(Decimal distance, Decimal minutes) {
        if(distance <=0 || minutes <= 0) {
            return -1;
        }
        Decimal hr = minutes/60;
        Decimal pace = Distance/hr;
        return pace;
    }
}