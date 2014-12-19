public class WPRController 
{
 Public Opportunity opp{get;set;}
    public WPRController()
     {
       List<Opportunity> Lst=new List<Opportunity>();
/*opp*/ // Lst = [SELECT Id, Name, DeliveryInstallationStatus__c,TrackingNumber__c,CloseDate   FROM Opportunity WHERE Id = :ApexPages.currentPage().getParameters().get('id')];
     }
    public Opportunity getOpportunity ()
    {
      return opp;
    }   
    public PageReference SaveMethod() 
     {
    //    update opp;
        return null;
    }
   
}