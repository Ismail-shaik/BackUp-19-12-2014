public class UpdatePositionCntrlr 
{


   public Position__c pos{get;set;}
   public list<Position__c> lstpos{get;set;}
 
   public UpdatePositionCntrlr()
   {
       lstpos = new list<Position__c>();
   }
   
  public PageReference Save() 
    {
        insert lstpos;
        return null;
    }
}