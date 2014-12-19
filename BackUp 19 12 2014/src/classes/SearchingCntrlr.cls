public class SearchingCntrlr 
{

  public Boolean clas{get;set;}
  public Boolean pges{get;set;}
  public Boolean trgr{get;set;}
  public Boolean cmpt{get;set;}
  public Boolean clashide{get;set;}
  public Boolean pagehide{get;set;}
  public Boolean triggerhide{get;set;}
  public Boolean componenthide{get;set;}
  public String searchstring{get;set;}
   
  public list<ApexClass> claslist{get;set;}
  public list<ApexPage> pagelist{get;set;}
  public list<ApexTrigger> triggerlist{get;set;}
  public list<ApexComponent> componentlist{get;set;}
 
  public SearchingCntrlr()
    {
        clashide = false;
        pagehide = false;
        triggerhide = false;
        componenthide = false;
        searchstring='Enter Search String......';
        claslist = new list<ApexClass>();
    }
  
  
    public PageReference Search() 
    {
      
      if(clas == false && pges == false && trgr == false && cmpt == false)
        {
           ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'Please Select Any One Checkbox')); 
        }
      if(searchstring == '')
        {
           ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'Please Enter your Search String')); 
        }  
    
      if(clas == true)
      {
         claslist = [select Name,id from ApexClass where Name LIKE : searchstring + '%'];
        // clashide= true;
         if(claslist.size() > 0)
         {
            clashide= true;
         }     
      }
      
      if(pges == true)
      {
         pagelist = [select Name,id from ApexPage where Name LIKE : searchstring + '%'];
       //  pagehide= true;
         if(pagelist.size() > 0)
         {
            pagehide= true;
         }     
      }
      
      if(trgr == true)
      {
         triggerlist = [select Name,id from ApexTrigger where Name LIKE : searchstring + '%'];
       //  triggerhide = true;
         if(triggerlist.size() > 0)
         {
            triggerhide = true;
         }     
      }
      
      if(cmpt == true)
      {
         componentlist = [select Name,id from ApexComponent where Name LIKE : searchstring + '%'];
        // componenthide = true;
         if(componentlist.size() > 0)
         {
            componenthide = true;
         }     
      }
        return null;
    }
  
  
  
  
  
  
  
}