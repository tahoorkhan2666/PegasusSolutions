public  class Demo {
    
  private final Account account;
   
  public Demo(ApexPages.StandardSetController controller)
  {
      this.account = (Account) controller.getRecord();
  }
    
    public ApexPages.StandardSetController accrec{
        get
        {
         if(accrec==null)
         {
             accrec = new ApexPages.StandardSetController(Database.getQueryLocator([select  name from account where id not in(select accountid from opportunity where isclosed = true	)])) ;   
            
         }
            return accrec; 
        }
        private set;
    }
    
    public list<Account> getAccountPag()
    {
        return (list<Account>) accrec.getRecords();
        
    }
}