trigger AddOwnerColor on Account (before insert,before update) {
    
    Set<id> ownersid = new Set<id>();
    for(Account a :Trigger.New)
        ownersid.add(a.OwnerId);
    
    Map<id,User> owners = new Map<id,User>([select Favourite_color__c from user where id in : ownersid ]);
    
    for(Account a : Trigger.new)
        a.Owner_Favourite_color__c = owners.get(a.OwnerId).Favourite_color__c;
    
    
}