public class Test1Cntrlr 
{

   public String vendor{get;set;}
   public String CVV{get;set;}
   public String ListItems{get;set;}
   public String ListItems1{get;set;}
   
   public boolean January{get;set;}
   public boolean Febrauary{get;set;}
   public boolean March{get;set;}
   public boolean April{get;set;}
   public boolean May{get;set;}
   public boolean June{get;set;}
   public boolean July{get;set;}
   public boolean August{get;set;}
   public boolean September{get;set;}
   public boolean October{get;set;}
   public boolean November{get;set;}
   public boolean December{get;set;}
   
   public boolean monday{get;set;}
   public boolean tuesday{get;set;}
   public boolean wednesday{get;set;}
   public boolean thursday{get;set;}
   public boolean friday{get;set;}
   public boolean saturday{get;set;}
   public boolean sunday{get;set;}
   
   public boolean monthrender{get;set;}
   public boolean daysrendere{get;set;}
   
   public List<SelectOption> getItems() 
        {
            List<SelectOption> options = new List<SelectOption>();
            options.add(new SelectOption('','--NONE--'));
            options.add(new SelectOption('ALL','All'));
            options.add(new SelectOption('CUSTOM','Custom'));
            return options;
        }
   public List<SelectOption> getItems1() 
        {
            List<SelectOption> options = new List<SelectOption>();
            options.add(new SelectOption('','--NONE--'));
            options.add(new SelectOption('ALL','All'));
            options.add(new SelectOption('MANAGED','Managed'));
            options.add(new SelectOption('CUSTOM','Custom'));
            return options;
        }
   
   public Test1Cntrlr()
   {
      daysrendere= false;
      monthrender = false;
     
   }
   
   
    public PageReference support() 
    {
       if(ListItems == 'CUSTOM')
       {
          monthrender = true;
       }
       else
       {
           monthrender = false;
       }
        return null;
    }
    
    public PageReference support1() 
    {
       if(ListItems1 == 'CUSTOM')
       {
          daysrendere= true;
       }
       else
       {
           daysrendere= false;
       }
        return null;
    }
   
   public pageReference save()
   {
      return null;
   }
  
}