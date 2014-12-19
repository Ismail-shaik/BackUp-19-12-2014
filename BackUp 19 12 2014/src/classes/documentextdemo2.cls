public class documentextdemo2 
{
  
  public Boolean cls {get;set;}
  
  public PageReference nextpage() 
    {
        PageReference pgf = new PageReference('/apex/inputfiledmo1');
        pgf.setRedirect(true);
        return pgf ;
    }
}