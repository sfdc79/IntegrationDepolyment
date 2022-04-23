public class TestScheduleBatch implements Schedulable {
    
    public void execute(SchedulableContext sc) {
        
        List<Account>acc = [SELECT id, Name From Account Where CreatedDate = today];
        
        for(Account a : acc) {
            
            a.name = 'Created Today' + a.name;
        }
       update acc; 
    }

}