public class BootstrapExampleCntrlr 
{

    
   public Position__c position{get;set;}
   public Boolean cls{get;set;}
   public Boolean pgs{get;set;}
  // public Boolean nme{get;set;}
 
   public PageReference nextpage() 
    {
        PageReference pgf = new PageReference('/apex/BootstrapExample');
        pgf.setRedirect(true);
        return pgf;
    }
    
    public BootstrapExampleCntrlr()
    {
      
    }

}