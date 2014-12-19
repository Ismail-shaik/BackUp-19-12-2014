public class InterviewOne_Controller 
{

  /*  public String lstcon { get; set; }

  //  public Boolean lstcon { get; set; }

  Public list<Account> listacc{get;set;}
  Public List<Contact> listcon{get;set;}
  
  Public InterviewOne_Controller()
   {
  //    list<Account> = new list<Account>();
  //    listacc= [select Name from Account];
        listcon=[select FirstName from Contact];
  
   }  */
   
   Public List<Contact> Listacc{get;set;}
  Public InterviewOne_Controller ()
   {
     Listacc= [select FirstName,Fax,Phone,HomePhone,Description,AssistantName from Contact];
   }

}