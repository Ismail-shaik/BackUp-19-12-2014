public class Interviewfourclass 
{

    public String getEacc() {
        return null;
    }

  Public List<Account> lstacc{get;set;}
  Public List<Contact> lstcon{get;set;}

  Public Interviewfourclass ()
   {
    lstcon= new list<Contact>();
    lstacc = new list<Account>();
   // lstacc= [select id,name,(select id,firstname,lastname,phone,Email from Contacts),phone from Account];
    lstcon= [select id,firstname,lastname,phone,Email from Contact];
    
 //   ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,''This page is created ONLY one QUERY'));
   }
}