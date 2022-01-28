public with sharing class ViewStateController {
    
    public Integer a {get;set;}
    private Integer b {get;set;}
    Transient Integer c {get;set;}
    private Integer d {get;set;}
    public Opportunity opp {get;set;}
    
    public ViewStateController()
    {
        a=20;
        b=30;
        c=40;
        opp=new Opportunity(Name ='Test',StageName='Test');
    }
    
    public void ClickMe()
    {
        if(a==20)
        {
            a=2;
        }
        if(b==30)
        {
            b=3;
        }
        if(c==40)
        {
            d=4;
        }
        else 
        {
            d=40;
        }
    }
}