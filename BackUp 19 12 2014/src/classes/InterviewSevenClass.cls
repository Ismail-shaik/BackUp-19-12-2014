public with sharing class InterviewSevenClass 
{
  public list<Contact> lstcon{get;set;}
  public InterviewSevenClass ()
   {
     lstcon= [select Name,MobilePhone,Email,Fax from Contact];
   }
   
  public PageReference Click() 
    {
      ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'you clicked on name.......'));
        return null;
    }
}