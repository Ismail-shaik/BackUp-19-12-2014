public class InterviewFiveclass 
{
  Public list<Candidate__c> lstcan{get;set;}
  Public list<Position__c> lstpos{get;set;}
  Public InterviewFiveclass ()
   {
     lstcan = new list<Candidate__c>();
   //  lstcan = new list<Position__c>();
     lstcan= [select First_Name__c,Last_Name__c,Phone__c,Email__c  from Candidate__c];
     lstpos= [select id,Name from Position__c];
   }
}