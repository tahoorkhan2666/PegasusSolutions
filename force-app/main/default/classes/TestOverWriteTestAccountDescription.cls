@isTest

public class TestOverWriteTestAccountDescription {
    
    public static testmethod void testoverwrite(){
        List<Account>  newacc = new List <Account>();
        
        for(Integer i = 10 ; i < 40 ; i++){
            Account acc = new Account(name = 'SFDC ACCOUNT'+i);
            newacc.add(acc);
        }
        
        System.test.startTest();
        
        insert newacc;
        
        System.Test.stopTest();
        
        List<Account> insertedacc = [select name,description from account where id in : newacc];
        
        for(Account a1 : insertedacc)
        {
            System.assertEquals('This account has a description', a1.description);
        }
    }
    
    


}