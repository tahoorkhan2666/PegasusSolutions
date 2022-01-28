public with sharing class STudentController{
    public String student {get;set;}
    
    public STudentController(){
        student ='abc';
    }
    
    public void fetchStudent(){
        student = 'pqr';
        
    }
    
}