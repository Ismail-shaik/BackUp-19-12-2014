public class OpportunityViewCntrl 
{

    public String getLstopp() {
        return null;
    }


    public Opportunity opp{get;set;}
    public OpportunityViewCntrl()
    {
      list<Opportunity> opp = new list<Opportunity>();     /* here we can write the command as a list<Opportunity> lstopp = new list<Opportunity>();*/
      opp= [select id,Name,Active__c,DeliveryInstallationStatus__c,TrackingNumber__c,CloseDate,Description,LeadSource,NextStep,Type,StageName from Opportunity];            /* here we have to mention lstopp= [select id,Name from Opportunity];  */
    }                                                      /* in page also we can mention as a lstopp in accessing a inputfield value{!lstopp.Name} */
    public PageReference Save()                            /* then that results to crate a method of getLstopp(){}  */
    {                                                      /* this results an error Could not resolve the entity from <apex:inputField> value binding '{!lstopp.Name}'. <apex:inputField> can only be used with SObjects, or objects that are Visualforce field component resolvable.  */ 
                                                           /**/
        return null;
    }

}