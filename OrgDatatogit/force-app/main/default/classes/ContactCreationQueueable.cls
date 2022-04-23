public class ContactCreationQueueable implements Queueable {

    Private List <Account> ExcepectingAccountsfromTrigger;
    
    public ContactCreationQueueable(List<Account> ExcepectingAccountsfromTrigger) {
        this.ExcepectingAccountsfromTrigger = ExcepectingAccountsfromTrigger;
    }
    
    public void Execute(QueueableContext qCont)   {
        List<Contact>conlist;
        // loop all accounts inserted
        for(Account acc : ExcepectingAccountsfromTrigger) {
            contact con = new contact();
            con.LastName = acc.name ;
            con.AccountId = acc.id;

            conlist.add(con); // add all contacts to list
        }
    }
    
}