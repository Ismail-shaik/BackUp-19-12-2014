public class PrintIdcardsCntrlr 
{

  public Contact conobj{get;set;}
  
  public List<Contact> lstcon{get;set;}

  public PrintIdcardsCntrlr()
   {
       
        lstcon = new List<Contact>();
        lstcon = [select id,Contact_Id__c,Name,Bar_Code__c,QR_Code__c from Contact where Contact.id = :ApexPages.currentPage().getParameters().get('Contact.id')];
        System.debug('Contact.id------------------------------'+Contact.id );
        
   }
}