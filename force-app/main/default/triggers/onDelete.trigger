trigger onDelete on Account (before delete) {
// prevent deletion of account which are related to contact
    
    for(Account a : [select id from account where id in (select accountid from contact) AND id in : Trigger.old]){
           Trigger.oldMap.get(a.id).addError('cannot delete account related to contact');
    }
 
    
}