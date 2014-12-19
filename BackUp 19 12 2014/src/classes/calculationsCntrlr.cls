public class calculationsCntrlr 
{

    public void Find() 
    {
        if(Functions == 'add')
        {
          Result= Value1+Value2;
        }
       else if(Functions =='sub')
        {
           Result= Value1-Value2;
        }
         else if(Functions =='mul')
        {
           Result= Value1*Value2;
        }
         else if(Functions =='div')
        {
           Result= Value1/Value2;
        }
    }


  public Integer Value1{get;set;}
  public Integer Value2{get;set;}
  public String Functions{get;set;}
  public Integer Result{get;set;}
  
  
  public List<SelectOption> getValues() 
   {
        List<SelectOption> options = new List<SelectOption>(); 
        options.add(new SelectOption('add','ADD')); 
        options.add(new SelectOption('sub','SUB')); 
        options.add(new SelectOption('mul','MUL'));
        options.add(new SelectOption('div','DIV')); 
        return options; 
    }
    
    
    
  public calculationsCntrlr()
   {
     
   }
   
   
}