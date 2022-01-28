public class AccountPagination {
   private final Account acct;
   
    public AccountPagination( ApexPages.StandardSetController controller)
    {
       this.acct = (Account)controller.getRecord(); 
    }
    
    public ApexPages.StandardSetController accRec{
        get{
            if(accRec == null)
        {
            accRec = new ApexPages.StandardSetController(Database.getQueryLocator([select name from Account where id  not in (select accountid from opportunity where isclosed = true)]));
        }
            return accRec;
        }
        private set;
            
       }
     
    public list<account> getAccountPagination()
    {
        return (list<account>)accRec.getRecords();
    }
}