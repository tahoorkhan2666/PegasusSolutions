public class CreateContactUtility {
    
    public static void method1(List<Account> lstact){
        List<Contact> conlst = new List<Contact>();
        if(lstact.size()>0){
         for(Account acc : lstact)
        {
            Contact c = new Contact(lastname = acc.name , accountid = acc.id , email = 'tahoor@tahoor786.com');
            conlst.add(c);
        }
            insert conlst;
            
        }
       
        
    }
    
  

}