global class SwapSLAs implements Database.Batchable<Sobject>
 {
   global Database.QueryLocator start(Database.BatchableContext btx)
     {
       return Database.getQueryLocator([select SLA__c from Account]);
     }
   global void execute(Database.BatchableContext btx, List<Sobject> scope)
     {
       List<Account> accs=(List<Account>) scope;
       for(Account a: accs)
        {
          if(a.SLA__c=='Bronze')a.SLA__c= 'Silver';
          else if(a.SLA__c=='Silver')a.SLA__c= 'Gold';
          else if(a.SLA__c=='Gold')a.SLA__c= 'Platinum';
          else {
                 a.SLA__C='Bronze';
               }
        }
       update accs;
      }
     global void finish(Database.BatchableContext btx)
      {
        //complete();
      }
 }