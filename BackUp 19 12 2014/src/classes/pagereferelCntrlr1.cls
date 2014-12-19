public class pagereferelCntrlr1 
{

    public Boolean cls {get;set;}
    
    public PageReference nextpage() 
    {
        PageReference pgf = new PageReference('/apex/pagereferel');
        pgf.setRedirect(true);
        return pgf ;
    }
    
}