public with sharing class SOSLController{
    public LIST<account> acclst{get;set;}
    public LIST<contact> conlst{get;set;}
    public LIST<opportunity> optylst{get;set;}
    public String searchStr {get;set;}
    
    public SOSLController(){}
    
    public void soslDemoMethod(){
        
        acclst = new LIST<account>();
        conlst = new LIST<contact>();
        optylst = new LIST<opportunity>();
        
        
        if(searchStr.length() > 1){
        String searchStr1 = '*'+searchStr+'*';
        String searchQuery = 'find\'' + searchStr1 + '\' in all fields returning account(name,type,id), contact(name,email), opportunity(name,stagename)';
         
        LIST<LIST<sObject>> searchlst = Search.query(searchQuery);
        acclst = ((LIST<account>)searchlst[0]);
        conlst = ((LIST<contact>)searchlst[1]);
        optylst = ((LIST<opportunity>)searchlst[2]);
        
            if(acclst.size()==0 && conlst.size()==0 && optylst.size()==0){
               ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.ERROR,'sorry,no result found with matching string ...'));                  
            }
      
        }
        
        else
        {
            ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.ERROR,'Please enter atleast two characghter....'));
        }
         
    }
    
}