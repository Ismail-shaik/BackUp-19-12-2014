public class checkboxRenderedCntrlr 
{

    
  public boolean checkbox1{get;set;}
  public boolean checkbox2{get;set;}
  public boolean checkbox3{get;set;}
  public boolean checkbox4{get;set;}
  public boolean rendered{get;set;}
   
  public checkboxRenderedCntrlr()
  {
      rendered = false;
  }
  
  public PageReference publicview() 
   { 
     if(checkbox1 == true)
     {
       rendered = true;
     }
     else
       rendered = false;
        return null;
   }

  
  
}