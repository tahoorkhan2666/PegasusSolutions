public class MyControllerExtension1{
    
    private final Account acc;
    
    public MyControllerExtension1(ApexPages.StandardController strctr)
    {
        this.acc = (Account)strctr.getRecord();
    }
    
    public String getgreeting()
    {
        return 'Hello' + acc.name +'('+acc.Id + ')';
    }
    
}