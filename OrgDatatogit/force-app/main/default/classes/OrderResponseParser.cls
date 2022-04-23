public class OrderResponseParser {

    public String status;
    public String customerId;
    public String txn_id;
    public list <orderDetails> orders;
    
    public class orderDetails {
        
        public String orderId;
        public Decimal amount;
        public String OrderCreatedDate;
        public list <String> locations;
    }
}