public class OppStandardCntrlr 
{

    public Boolean bolPrintableView {get;set;}
    public List<Contact> lstcon{get;set;}
   
    public OppStandardCntrlr(ApexPages.StandardController controller) 
     {
          lstcon = new List<Contact>();
          lstcon = [select id,Contact_Id__c,Email,Name,Bar_Code__c,QR_Code__c from Contact where Contact.id = :ApexPages.currentPage().getParameters().get('Contact.id')];
          
     }
   
    public void init() 
      {
         String strPrintableView = ApexPages.currentPage().getParameters().get('print');
         bolPrintableView = (strPrintableView == '1');
      }

}