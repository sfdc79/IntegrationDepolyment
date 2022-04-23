public class AccountUtility {
    public static void viewAnnualRevenue(){
        List<Account> accountsList = [SELECT Name, AnnualRevenue FROM Account];
        for (Account con : accountsList){
            String fullname = 'Account Name: ' + con.Name + ', Annual Revenue: ' + con.AnnualRevenue;
            system.debug(fullname);
        }
    }
}