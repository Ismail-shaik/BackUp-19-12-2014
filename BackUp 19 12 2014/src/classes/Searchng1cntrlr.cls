public class Searchng1cntrlr 
{


   public boolean clas{get;set;}
   public boolean pges{get;set;}
   public boolean trgr{get;set;}
   public boolean cmpt{get;set;}
   public boolean clashide{get;set;}
   public boolean pagehide{get;set;}
   public boolean triggerhide{get;set;}
   public boolean componenthide{get;set;}
   public String searchstring{get;set;}
   
   public list<ApexClass> claslist{get;set;}
   public list<ApexPage> pagelist{get;set;}
   public list<ApexTrigger> triggerlist{get;set;}
   public list<ApexComponent> componentlist{get;set;}

   Public Searchng1cntrlr()
    {
      searchstring = 'Enter search string......';
      claslist = new list<Apexclass>();
      clashide = false;
      pagehide = false;
      triggerhide = false;
      componenthide = false;
    }
   
   
   public PageReference Searching() 
    {
    
      if(clas == false && pges == false && trgr == false && cmpt == false)
       {
         ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'Please Select Any One Checkbox'));
       }
      if(searchstring == '' || searchstring == 'Enter your searching string......')
      {  
         ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'Please Enter your required search string'));
      }
      
      
      if(clas == true)
       {
         claslist = [select Name,id from Apexclass where Name LIKE : searchstring + '%'];
         if(claslist.size() > 0)
         {
           clashide = true;
         }
       }
      if(pges == true)
       {
         pagelist = [select Name,id from ApexPage where Name LIKE : searchstring + '%'];
         if(pagelist.size() > 0)
         {
           pagehide = true;
         }
       }
      if(trgr == true)
       {
         triggerlist = [select Name,id from ApexTrigger where Name LIKE : searchstring + '%'];
         if(triggerlist.size() > 0)
         {
           triggerhide = true;
         }
       }
      if(cmpt == true)
       {
         componentlist = [select Name,id from ApexComponent where Name LIKE : searchstring + '%'];
         if(componentlist.size() > 0)
         {
           componenthide = true;
         }
       }
    
        return null;
    }
}