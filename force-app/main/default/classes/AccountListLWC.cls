public with sharing class AccountListLWC {
    @AuraEnabled (cacheable = true)
    public static List<Account> queryByAccount(Integer noOfEmployees){

        return [select id,name from Account where NumberOfEmployees >= :noOfEmployees];
        
    }
}
