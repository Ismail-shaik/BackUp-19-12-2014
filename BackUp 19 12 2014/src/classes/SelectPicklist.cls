public class SelectPicklist 
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
         
        public void PickList()
         {
           if(YearValue=='1')
             {
               YearValue1=true;
               YearValue2=false;
             }
           else if(YearValue=='2')
             {
               YearValue2=true;
               YearValue1=false;
             }  
           else if(YearValue=='--NONE--')
             {
               YearValue2=false;
               YearValue1=false;
             }
         }
         
    public SelectPicklist(ApexPages.StandardController controller) 
    {

    }
    

}