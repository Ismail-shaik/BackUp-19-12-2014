public class checkingIdcntrlr 
{
  public list<Contact> Conlist{get;set;}
  
  public checkingIdcntrlr()
  {
     Conlist = new list<Contact>();
     Conlist = [select id,Name,phone,email,password__c from Contact where id='0039000001522J9'];
  }
}