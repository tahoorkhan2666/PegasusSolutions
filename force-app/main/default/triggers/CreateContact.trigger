trigger CreateContact on Account (after insert) {
    
    if(Trigger.isInsert)
    {
        List<Contact> conlst = new List<Contact>(); 
        for(Account a : Trigger.New)
        {
            Contact con = new Contact(lastname = a.name , accountid = a.id , email='tahoor@tahoor123.com');
            conlst.add(con);
        }
        
        insert conlst;
        
    }
    
   
        
    
    
    
        
   
}