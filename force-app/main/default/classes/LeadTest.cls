@isTest
public class LeadTest {
    public static testmethod void test1(){
        Lead l = new Lead();
        l.FirstName = 'Swati';
        l.LastName = 'nau';
        l.Company = 'FreeLance';
        insert l;
        
        Lead li = [select id , firstname from lead where lastname = 'nau'];
        System.assertEquals('Dr.Swati', li.firstname);
        
            
    }

}