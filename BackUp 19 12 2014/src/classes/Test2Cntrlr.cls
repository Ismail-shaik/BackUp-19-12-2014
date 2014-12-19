public class Test2Cntrlr 
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
   
   public boolean mnthrndr{get;set;}
   
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
   
   public Test2Cntrlr()
   {
     
   
     
   }
   
   public pageReference save()
   {
      return null;
   }
  
}