public class Covid19Class {
    
    public integer RecoveredInArea = 0;
    public static Integer recoveredInCountry = 0;
    
    public Covid19class(Integer Recoveredinarea) {
        this.RecoveredInArea = RecoveredInArea;
        recoveredInCountry = recoveredInCountry + RecoveredInArea;
    }
    public void treatpatients() {
        RecoveredInArea++;
        RecoveredInCountry++;
    }
    
    public Integer getTreatedInarea() {
        return RecoveredInArea;
    }
}