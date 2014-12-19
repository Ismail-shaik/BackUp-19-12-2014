@isTest
public class FutureEventsTests{
   static testMethod void dtTests() {
       // based on salesforce documentation
       // http://wiki.developerforce.com/page/An_Introduction_to_Apex_Code_Test_Methods

       // prepatre data
       List<Event__c> evs = new List<Event__c>{};

           for(Integer i = 0; i < 10; i++) {
               Event__c e = new Event__c(Name = 'Event ' + i, 
                                         Featured_Event__c = True);
               evs.add(e);
           }

       // Start the test
       test.startTest();

       // Insert the Events records
       insert evs;

       // Stop the test
       test.stopTest();

       List<Event__c> insertedEvents = [SELECT Name FROM Event__c WHERE Featured_Event__c = TRUE];

       // Instantiate a new controller

       Integer i = 0;
       for (Event__c e : insertedEvents) {
           System.assertEquals('Event ' + i, e.Name);
           System.assert(True, e.Featured_Event__c);
           i++;
       }


   } // testMethod
} // class