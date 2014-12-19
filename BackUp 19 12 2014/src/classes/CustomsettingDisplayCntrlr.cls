public class CustomsettingDisplayCntrlr 
 {
   
    Public customsettingexample__c lstsettngs{get;set;}
    public Map<String,customsettingexample__c > maplststtngs;
    
    
    public CustomsettingDisplayCntrlr()
     {
         
          maplststtngs = new Map<String,customsettingexample__c >();
          maplststtngs = customsettingexample__c.getAll();
          
          lstsettngs = maplststtngs.values();
          
          //SiteURL = lstsettngs.SiteURL__c;
         
     }
 }