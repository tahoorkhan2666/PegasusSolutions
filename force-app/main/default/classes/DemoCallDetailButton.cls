public class DemoCallDetailButton{
    private ApexPages.StandardController standardcontroller;
    public String greeting{get;set;}

    public DemoCallDetailButton(ApexPages.StandardController standardcontroller){
        this.standardcontroller = standardcontroller;
    }    
    
    public PageReference doSomething(){
        Contact con = (Contact)standardcontroller.getRecord();
        greeting = 'Hello' + '' + con.id;
        return null;
    }
    // commit changes to today
    
}