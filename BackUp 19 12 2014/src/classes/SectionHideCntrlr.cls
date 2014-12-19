public class SectionHideCntrlr 
{

    public String YearValue{get;set;}
    public Boolean YearValue1{get;set;}
    public Boolean YearValue2{get;set;}
    public List<SelectOption> getYearList() 
        {
            List<SelectOption> options = new List<SelectOption>();
            options.add(new SelectOption('','--NONE--'));
            options.add(new SelectOption('1','2010'));
            options.add(new SelectOption('2','2011'));
            return options;
        }
        
     public void picklist()
     {
       if(YearValue=='1')
       YearValue1 = true;
       else
       YearValue2 = true;   
     }
        
    public SectionHideCntrlr(ApexPages.StandardController controller) 
    {

    }
  

}