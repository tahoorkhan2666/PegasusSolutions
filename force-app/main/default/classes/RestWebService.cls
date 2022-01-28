@RestResource (urlMapping = '/Account/*')

global with sharing class RestWebService{
    
    @HttpPost
    global static String doPost(String name, String phone , String Website){
        Account a = new Account ();
        a.name = name ;
        a.phone = phone ;
        a.website = website ; 
        insert a ;
        return a.Id;
    }
    
    @HttpGet
    global static List<Account> doGet(){
       RestRequest req =   RestContext.request;
       String ActId = req.requestURI.substring(req.requestURI.lastindexof('/')+1);
       List<Account> a1 = [select id,name,phone from account];
       return a1;
         }
   
   //  @HttpGet
   // global static List<Contact> doGet1(){
   //     RestRequest req1 = RestContext.request;
   //     String ConId = req1.requestURI;
   //     Integer int1 = Integer.valueOf(ConId.substring(ConID.lastIndexOf('/')+1));
     //   List<Contact> lstcon = [Select id,lastname from contact limit:int1];
       // return lstcon;
        
   // }
      
    @HttpPut
    global static String doPut(String name , String phone , String website){
        RestRequest req2 =  RestContext.request;
        String Accountid = req2.requestURI.substring(req2.requestURI.lastindexof('/') +1);
        Account a = new Account(Id =Accountid );
        a.name  =name;
        a.phone = phone ;
        a.website= website;
         update a;
         return a.id;   
    }
    
    @HttpDelete
    global static void doDelete(){
        RestRequest req3 = RestContext.request;
        String actid = req3.requestURI.substring(req3.requestURI.lastindexof('/')+1);
        Account a = [Select id from account where id = :actid];
        delete a;
        
    }
    
        
        
    }