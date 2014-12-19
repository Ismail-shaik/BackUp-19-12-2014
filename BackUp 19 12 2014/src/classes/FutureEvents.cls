public with sharing class FutureEvents 
{
   Transient public List<Event__c> events;
   public List<Event__c> getEvents() 
   {
       if(events == null) 
       {
           events = [SELECT Name, Event_Website__c FROM Event__c WHERE Event_Start_Date__c > TODAY AND Featured_Event__c = TRUE];
       }
       return events;
   }
}