public class SearchExmp1Cntrlr 
{

   public Boolean clas{get;set;}
   public Boolean clashide{get;set;}
   public String searchstring{get;set;}
   
   Public List<ApexClass>  ClasList{get;set;}
  
  public SearchExmp1Cntrlr()
   {
      clashide= false;
      searchstring ='Enter Your String......';
      ClasList = new List<ApexClass>();
   } 
   
   public PageReference Search() 
    {
      if(clas == false)
        {
             ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'Please Select Checkbox')); 
             return null;

        }
    
      if(clas == true)
      { 
        ClasList= [select Name,id from ApexClass where Name LIKE : searchstring +'%'];
        if(ClasList.size()>0)
        {
          clashide= true;
        }
      }
    
        return null;
    }
    
}