public class InterviewSixClass 
{
  public list<Position__c> lstpos{get;set;}
  public list<Candidate__c > lstcan{get;set;}
  public InterviewSixClass ()
   {
     lstpos= new list<Position__c>();
     lstpos= [select Name from Position__c];
     lstcan= [select Position__c,First_Name__c,Last_Name__c,Phone__c from Candidate__c ];
   }
}