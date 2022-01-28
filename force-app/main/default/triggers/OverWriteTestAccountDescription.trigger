trigger OverWriteTestAccountDescription on Account (before insert) {
    
   for(Account a : Trigger.new)
   {
       if(a.name.contains('SFDC ACCOUNT'))
       {
           a.description = 'This account has a description';
       }
   }

}