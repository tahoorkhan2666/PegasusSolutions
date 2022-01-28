
public with sharing class AccountListLWC1 {
    @AuraEnabled (cacheable = true)
    public static List<Account> query1(Integer noofemp){
        return[select name from account where NumberOfEmployees >: noofemp];
        
}
}
 