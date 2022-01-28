public with sharing class ControllerPassParamNew {
    
    public Account account {get;set;}
    
    public ControllerPassParamNew()
    {
        if(account == null)
        account = [select name from account where id = '0015g00000ZhCG6AAN'];
    }
    
    public PageReference save()
    {
        update account;
        Pagereference obj = Page.mySecondPage;
        obj.setRedirect(true);
        obj.getParameters().put('id' , account.id);
        return obj;
        
    }
    
    public PageReference goToNewPage()
    {
        Pagereference obj = Page.mySecondPage;
        obj.setRedirect(true);
        obj.getParameters().put('id' , account.id);
        return obj;
        
    }
    

}