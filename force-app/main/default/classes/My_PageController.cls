public with sharing class My_PageController {
    public PageReference saveMethod()
    {
        PageReference pgref = new PageReference('http://www.google.com');
        return pgref;
    }

}