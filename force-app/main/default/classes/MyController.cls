public with sharing class MyController {
    
  private final Account acct;
    
  public MyController()
  {
      acct = [select name, site, id from Account where id = '0015g00000Zjy2kAAB'];
  }
  
    public Account getAccount()
    {
        return acct;
    }
    
    
    public PageReference save()
    {
        update acct;
        return null;
    }
    

}


//error coming in viewing page