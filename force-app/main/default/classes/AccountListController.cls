public with sharing class AccountListController {
    @AuraEnabled (cacheable=true)
    public static List<Contact> queryrelatedrecord(String acctId){

        return [select Id,AccountId,LastName,FirstName,Email,Phone,Account.name from Contact where AccountId = :acctId];
         
    
   }
}