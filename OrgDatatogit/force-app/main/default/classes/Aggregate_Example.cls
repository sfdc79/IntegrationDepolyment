public class Aggregate_Example {
    public AggregateResult result;
    public Decimal total;
    public Decimal minval;
    public Decimal maxval;
    public Aggregate_Example() {
        result = [Select Sum(Amount)total,MIN(Amount)minval, MAX(Amount)maxval From Opportunity Where StageName ='Closed Won'];
        minval = (Decimal)result.get('minval') ;
        total = (Decimal)result.get('total') ;
        maxval = (Decimal)result.get('maxval') ;
        
        System.debug('minval:>>>>>>'+ minval);
           System.debug('total:>>>>>>'+ total);
           System.debug('maxval:>>>>>>'+ maxval);
    }

}