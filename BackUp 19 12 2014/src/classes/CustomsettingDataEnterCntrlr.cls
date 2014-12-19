public class CustomsettingDataEnterCntrlr 
 {
   
   public customsettingexample__c objsettngs{get;set;}
   public List<customsettingexample__c> listcustmsettngs = new List<customsettingexample__c>();
   
    public CustomsettingDataEnterCntrlr()
     {
        
         listcustmsettngs = [select id,Name,SiteURL__c from customsettingexample__c];
         System.debug('listcustmsettngs-----------------------------------------'+listcustmsettngs);
         
         for(customsettingexample__c settingsobj :listcustmsettngs)
          {
             objsettngs = new customsettingexample__c();
             objsettngs.id = settingsobj.id;
             objsettngs.Name = settingsobj.Name;
             objsettngs.SiteURL__c = settingsobj.SiteURL__c;
          }
        
     }
     
   public pageReference save()
    {
         insert objsettngs;
         return null;
    }
    
   public pageReference cancel()
    {
         return null;
    }
   
 }