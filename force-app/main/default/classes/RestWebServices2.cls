@RestResource(urlMapping = '/Account1/*')

global class RestWebServices2 {
    
    @HttpPost
    global static String doPost(String name,String phone , String website)
    {
        Account a = new Account();
        a.name = name;
        a.phone = phone;
        a.website= website;
        insert a;
        return a.id;
    }
    
 //   @HttpGet
 //   global static Account doGet(){
 //       RestRequest req =  RestContext.request;
 //       String actid = req.requestURI.substring(req.requestURI.lastindexof('/')+1);
 //       Account a = [select id,name,phone,website from Account where id =:actid];
 //       return a;
        
 //   }
      
    @HttpGet
    global static List<Account> doGet(){
        List<Account> a1 = [select name,phone ,website from account];
        return a1;
    }
    
 //   @HttpPut
//   global static String doPut(String name,String phone , String website)
 //  {
 //       RestRequest req2= RestContext.request;
  //      String actid = req2.requestURI.substring(req2.requestURI.lastindexof('/')+1);
 //      Account a = new Account(id = actId);
  //         a.name = name;
   //       a.phone = phone;
   //         a.website = website;
   //          update a;
   //         return a.id;
  // }  
    
     @HttpPut
   global static String doPut(String name,String phone , String website,String id)
   {
        
       Account a = new Account();
            a.name = name;
            a.phone = phone;
            a.website = website;
            a.id = id;
            update a;
            return a.id;
   }  
    
    
 
                  
        
        @httpDelete
        global static void dodelete(){
              RestRequest req3= RestContext.request;
              String actid = req3.requestURI.substring(req3.requestURI.lastindexof('/')+1);
              Account a = [Select id from account where id=:actid];
              delete a;
        }
    }