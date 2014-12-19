public class DynamicTableCntrlr 
{

   Public List<Contact> conlist{get;set;}
   
   public DynamicTableCntrlr()
   {
     conlist = [select id,LastName,FirstName,PhoneNumber__c from Contact Limit 1];
   }
   
   public PageReference addRow() 
    {
        conlist.add(new Contact());
        return null;
    }

   public pageReference Save() 
    {
        insert conlist;
        return null;
    }


  
}