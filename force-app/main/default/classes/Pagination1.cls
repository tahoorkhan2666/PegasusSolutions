public class Pagination1{
    private Integer totalrec = 0;
    private Integer OffsetSize = 0;
    private Integer limitSize = 5;
    
    public Pagination1(){
        totalrec = [select count() from account];
    }
    
    public List<Account> getacclst(){
        List<Account> a = Database.Query('select id,name,website,annualrevenue,description,type from account limit '+limitSize+' offset '+offsetSize);
        return a ;
    }
    
    public void previous(){
        offsetSize = OffsetSize - limitSize;
    }
    public void next(){
        offsetSize = OffsetSize + limitSize;
    }
}