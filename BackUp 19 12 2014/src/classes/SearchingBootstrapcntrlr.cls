public class SearchingBootstrapcntrlr 
{

    
      public boolean cls{get;set;}
      public boolean pgs{get;set;}
      public boolean tgr{get;set;}
      public boolean cmt{get;set;}
      public boolean clshide{get;set;}
      public boolean pgehide{get;set;}
      public boolean Tgrhide{get;set;}
      public boolean Cmphide{get;set;}
      public string Searchstring{get;set;}
   
      public list<Apexclass> listcls{get;set;}
      public list<Apexpage> listpge{get;set;}
      public list<Apextrigger> listtgr{get;set;}
      public list<Apexcomponent> listcmp{get;set;}
  

  public SearchingBootstrapcntrlr()
   {
     clshide = false;
     pgehide = false;
     Tgrhide = false;
     Cmphide = false;
   }
  
  public PageReference searching() 
    {
        if(cls == false && pgs == false && tgr == false && cmt == false)
        {
          ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'Please Select Any One Checkbox'));
        }
        
        else if(Searchstring == '')
        {  
         ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'You will get all records so Please Enter your required search string'));
        }
    
        if(cls == true)
        {
           listcls = [select id,Name from Apexclass where Name LIKE : Searchstring + '%'];
           if(listcls.size() > 0 )
           {
             clshide = true;
           }
        }
        if(pgs == true)
        {
           listpge = [select id,Name from Apexpage where Name LIKE : Searchstring + '%'];
           if(listpge.size() > 0 )
           {
             pgehide = true;
           }
        }
        if(tgr == true)
        {
           listtgr = [select id,Name from Apextrigger where Name LIKE : Searchstring + '%'];
           if(listtgr.size() > 0 )
           {
             Tgrhide = true;
           }
        }
        if(cmt == true)
        {
           listcmp = [select id,Name from Apexcomponent where Name LIKE : Searchstring + '%'];
           if(listcmp.size() > 0 )
           {
             Cmphide = true;
           }
        }
       
        return null;
    }


  
}