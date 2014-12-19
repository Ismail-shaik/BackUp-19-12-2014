public class CheckboxFieldHidingcntrlr 
{
  public String Active{get;set;}
  public Boolean Active1{get;set;}
  public Boolean Active2{get;set;}
  public Contact con{get;set;}
   public List<SelectOption> getActiveList() 
    {
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('','--NONE--'));
        options.add(new SelectOption('1','Active'));
        options.add(new SelectOption('2','Active2'));
        return options;
    }
  public CheckboxFieldHidingcntrlr()
   {
     list<Contact> con = new list<Contact>();
   }
  public void Validatelist()
   {
      if(Active=='1')
       Active1=true; 
      else if(Active=='2')
       Active2=true; 
   }
}