public class MultipleContactRelationships 
{
    public list<Contact> lstcon{get;set;}
    public MultipleContactRelationships(ApexPages.StandardController controller) 
    {

    }
    public list<Contact> getConres()
     {
       Contact c = new Contact();
      lstcon= [ select id,Name,Title,Phone,Email from Contact where Accountid=:ApexPages.currentPage().getParameters().get('id') and Contact_Relationship__c= false];
      system.debug('******************'+lstcon);
       return lstcon;
     }

}