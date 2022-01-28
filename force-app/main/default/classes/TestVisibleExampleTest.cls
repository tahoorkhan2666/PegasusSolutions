@isTest

public class TestVisibleExampleTest {
   
    @isTest public static void test1()
    {
        Integer i = TestVisibleExample.a;
            System.assertEquals(1, i);
                
         String out1 =  TestVisibleExample.mymethod('record Name')  ;
        System.assertEquals('hello', out1);
    }

    
}