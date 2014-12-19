public class pagereferelCntrlr 
{

    public Boolean cls {get;set;}
    
    
     public List<SelectOption> getItems() {
        List<SelectOption> options = new List<SelectOption>(); 
        options.add(new SelectOption('US','US')); 
        options.add(new SelectOption('CANADA','Canada')); 
        options.add(new SelectOption('MEXICO','Mexico')); return options; 
        }
    
    
    public PageReference nextpage() 
    {
        PageReference pgf = new PageReference('/apex/pagereferel1');
        pgf.setRedirect(true);
        return pgf ;
    }
    
}