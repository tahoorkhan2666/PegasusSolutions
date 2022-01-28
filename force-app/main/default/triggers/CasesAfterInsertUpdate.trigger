trigger CasesAfterInsertUpdate on Case (before insert) {
    
    List<Account> updacclst = new List<Account>();
    List<Id> ids = new List<Id>();
    for(Case c : Trigger.new)
    {
        ids.add(c.Accountid);
    }
    
    Map<Id,Account> newact = new Map<Id,Account>();
    for(Account a : [Select id,Last_Survey_Sent__c from Account where id in : ids]){
        newact.put(a.id,a);
    }
    
    for(Case c : Trigger.new)
    {
        Account a1 = newact.get(c.AccountId);
        a1.Last_Survey_Sent__c = c.Last_Survey_Sent__c;
        updacclst.add(a1);
    }
    
    try{
        update updacclst;
        
    }
    catch(Exception ex)
    {
        System.debug('Today is Today');
    }
   
}