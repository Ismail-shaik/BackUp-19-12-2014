public class Getrecords 
{

  Public List<Contact> lstcon{get;set;}
  Public Getrecords ()
   {
     lstcon= [select FirstName,Birthdate,Email,HomePhone,MobilePhone from Contact];
   }
}