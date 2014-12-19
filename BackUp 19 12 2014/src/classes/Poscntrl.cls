public class Poscntrl 
{
  Public list<Position__c> lstpos{get;set;}
  public Position__c posobj{get;set;}
  Public Poscntrl ()
   {
     lstpos= [select Name,Close_Date__c,Days_Open__c,Hire_By__c,Job_Level__c,Location__c,Max_Pay__c,Min_Pay__c,Responsibilities__c from Position__c];
   }
}