public class SearchExmpCntrlr 
{

    public Boolean clas{get;set;}
    public Boolean pges{get;set;}
    public Boolean trgr{get;set;}
    public Boolean comp{get;set;}
    
    public Boolean classhide{get;set;}
    public Boolean Pagehide{get;set;}
    public Boolean Triggerhide{get;set;}
    public Boolean Componenthide{get;set;}
    public String Searchstring{get;set;}
    
    public list<ApexClass> Classlist{get;set;}
    public list<ApexPage> Pagelist{get;set;}
    public list<ApexTrigger> Triggerlist{get;set;}
    public list<ApexComponent> Componentlist{get;set;}

   public SearchExmpCntrlr()
    {
       classhide= false;
       Pagehide= false;
       Triggerhide= false;
       Componenthide= false;
       
      Classlist = new list<ApexClass>();
      Pagelist = new list<ApexPage>();
      Triggerlist = new list<ApexTrigger>();
      Componentlist = new list<ApexComponent>();
      Searchstring ='Enter Your Value......';
    }
    
  public PageReference Search() 
    {
    
        if(Searchstring == '')
        {
             ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'Please Enter your required Search String.....')); 
        }
        
        if(clas == false && pges == false && trgr == false && comp == false)
        {
             ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'Please Check any check box.....'));
        }
    
         if(clas == true)
        {
           Classlist = [select id,Name from ApexClass where Name Like:Searchstring + '%'];
           classhide= true;
        }
         if(pges == true)
        {
           Pagelist = [select id,Name from ApexPage where Name Like:Searchstring + '%'];
           Pagehide = true;
        }
         if(trgr == true)
        {
           Triggerlist = [select id,Name from ApexTrigger where Name Like:Searchstring + '%'];
           Triggerhide= true;
        }
         if(comp == true)
        {
           Componentlist = [select id,Name from ApexComponent where Name Like:Searchstring + '%'];
           Componenthide= true;
        }
        return null;
    }
}