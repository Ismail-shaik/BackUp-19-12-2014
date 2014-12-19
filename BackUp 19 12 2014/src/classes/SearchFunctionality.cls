Public Class SearchFunctionality
{


  public Boolean cls{get;set;}
  public Boolean trigr{get;set;}
  public Boolean page{get;set;}
  public Boolean compnt{get;set;}
  public Boolean hideshow{get;set;}
  public Boolean trigrhide{get;set;}
  Public Boolean compHide{get;set;}
  Public Boolean pagHide{get;set;}
  Public String searchStr{get;set;}
  
  Public List<ApexClass>  clasNameslist{get;set;}
  Public List<ApexPage>   pagelist{get;set;}
  Public List<ApexComponent> componentList{get;set;} 
   Public List<ApexTrigger>  trigrList{get;set;}
  
  public SearchFunctionality()
  {
     searchStr ='Enter Your String......';
     hideshow =false;
     trigrhide =false;
     compHide =false;
     pagHide =false;
     clasNameslist=new List<ApexClass>();
     pagelist=new List<ApexPage>();
     componentList=new List<ApexComponent>();
     trigrList=new List<ApexTrigger>();
  }
  public PageReference clasNameslist()
  {
    return null;
    
  }  
    public PageReference search() 
    {
        if(cls == false && page == false)
        {
             ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'Please Select Checkbox')); 
             return null;

        }
        if(cls == True)
        {
           system.debug('clasNameslist .......0......'+searchStr);
          clasNameslist =[Select Name,Id from ApexClass where  Name LIKE : searchStr  +'%'];
           system.debug('clasNameslist .......1......'+searchStr);
          if(clasNameslist.size()>0)
          {
            hideshow = True;
          }  
        }
        
        else if(page == True)
        {
           
          pagelist=[Select Name from ApexPage where  Name LIKE : searchStr  +'%'];
          system.debug('pagelist.......0......'+pagelist);
          if(pagelist.size()>0)
          {
            pagHide = True;
          }  
        }
        
        else if(compnt== True)
        {
           
          componentList=[Select Name from ApexComponent where  Name LIKE : searchStr  +'%'];
          system.debug('pagelist.......0......'+pagelist);
          if(componentList.size()>0)
          {
            compHide = True;
          }  
        }
        else if(trigr == True)
        {
           
          trigrList=[Select Name from ApexTrigger where  Name LIKE : searchStr  +'%'];
          system.debug('pagelist.......0......'+trigrList);
          if(componentList.size()>0)
          {
            trigrhide = True;
          }  
        }
         
         return null;
    }

  
}