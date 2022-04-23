public class UserCheck {
    public static void method1() {
        User u = [SELECT Id FROM User where alias = 'Pchan'];
    System.debug(u);
    }

}