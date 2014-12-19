public class calculaterCntrlr 
{

    public void Find() 
    {
        if(function=='add')
        {
          Result=first+Second ;
          System.debug('Result is....................'+ Result);
        }
        else if(function=='sub')
        {
          Result=first-Second ;
        }
        else if(function=='mul')
        {
          Result=first*Second ;
        }
        else if(function=='div')
        {
          Result=first/Second ;
        }
    }


   public Double first{get;set;}
   public Double Second {get;set;}
   public String function{get;set;}
   public Double Result{get;set;}
   
   public List<SelectOption> getFuncs()
    {
        List<SelectOption> options = new List<SelectOption>(); 
        options.add(new SelectOption('add','ADD')); 
        options.add(new SelectOption('sub','SUB')); 
        options.add(new SelectOption('mul','MUL')); 
        options.add(new SelectOption('div','DIV'));
        return options; 
    }
   
   public calculaterCntrlr()
    {
       
    }
}