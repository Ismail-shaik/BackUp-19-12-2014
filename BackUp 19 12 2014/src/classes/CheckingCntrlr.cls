public class CheckingCntrlr 
{


   public Position__c Pos{get;set;}
   public Boolean fieldhide{get;set;}

   public CheckingCntrlr()
   {
      
        fieldhide= false;
        
   }
   public PageReference Next() 
    {
        if(Pos.Travel_Required__c == true)
        { 
           fieldhide= true;
        }
     
        return null;
    }

}