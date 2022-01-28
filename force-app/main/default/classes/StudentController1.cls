public with sharing class StudentController1 {
    public String student {get;set;}
    public List<String> studentlist{get;set;}
    
    public StudentController1()
    {
        student='abc';
        studentlist = new List<String>();
        studentlist.add('a');
        studentlist.add('b');
    }
    
    public void fetchstudent()
    {
        student ='pqr';
        studentlist.add('c');
        
    }
    
}