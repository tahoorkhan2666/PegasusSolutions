public class OpportunityList2Con {
    //ApexPages.StandardSetController must be instantiated for standard list controllers
    public ApexPages.StandardSetController setcon{
        get{
             if(setcon==null)
        {
            setcon = new ApexPages.StandardSetController(Database.getQueryLocator([select name,closedate from opportunity]));
           
            
        }
             return setcon;
        }
       
        set;
    }
    
    public List<Opportunity> getOpportunities()
    {
        return (List<Opportunity>)setcon.getRecords();
    }
}



// 20 records are displaying and it is not pagination
// standardsetcontroller