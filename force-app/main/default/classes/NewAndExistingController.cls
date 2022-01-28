public class NewAndExistingController {
    
    public Account account{get;private set;}
    
    public NewAndExistingController()
    {
        ID id = ApexPages.currentPage().getParameters().get('id');
        account = (id == null)? new Account() : [select name,phone ,industry from account where id=:id];
    }
    
    public PageReference save()
    {
        try{
            upsert account;
        }
        catch(DmlException e){
            ApexPages.addMessages(e);
            return null;
        }
        
        PageReference redirectsuccess = new ApexPages.StandardController(Account).view();
        return redirectsuccess;
        
    }

}


//return null in catch