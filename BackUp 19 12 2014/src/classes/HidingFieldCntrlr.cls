public class HidingFieldCntrlr 
{

  public Contact objEmpInf{get;set;}
  public Boolean classes{get;set;}
  Public Opportunity opp{get;set;}
  public Boolean show{get;set;}
  public Boolean show1{get;set;}
  public HidingFieldCntrlr ()
  {
    list<Contact> objEmpInf = new list<Contact>();
    objEmpInf = [select Name from Contact];
    
     show=false;
     show1=false;
  }
  
 Public PageReference dispaly()
 {
    show=true;
    show1=true;
    return null;
 }
 
 public PageReference reference() 
 
    {
        PageReference pgf = new PageReference('/apex/TestPosition');
        pgf.setRedirect(true);
        return pgf;
    }
 
 
 
 
 
 
 
 
 
 
}