public class Recordctrlr 
{
  Public List<Contact> Listacc{get;set;}
  Public Recordctrlr()
   {
     Listacc= [select FirstName,Fax,Phone,HomePhone,Description,AssistantName from Contact];
   }
}