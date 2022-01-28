@istest(SeeAllData=true)

public class TestDataAccessClass {
    public static testmethod void myTest1()
    {
        Account a = [Select id,name from account where name ='heena' limit 1];
        System.assert(a!=null);
        
        Account acc = a.clone();
        acc.name ='heena1';
        insert acc;
        
        Account acttest = [Select id,name from account where name ='heena1' limit 1];
        System.assert(acttest!=null);
    }
        
   
    
}