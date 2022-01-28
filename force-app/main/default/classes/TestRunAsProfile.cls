@isTest

public class TestRunAsProfile {
    
    public static testmethod void test1()
    {
        Profile p = [select id from profile where name ='System Admin -1'];
        User u = new User(Alias='calva2',Email='anhdsjhb@gmail.com',EmailEncodingKey='UTF-8',LastName='Alvarez',LanguageLocaleKey='en_US',LocaleSidKey='en_US',ProfileId=p.id,
                         TimeZoneSidKey='America/Los_Angeles',UserName='cskdnckj@gmail.com');
        
        System.runAs(u){
            System.debug('Current User :' + UserInfo.getUserName());
            System.debug('Current Profile :'+ userinfo.getProfileId());
        }
        
    }  
}