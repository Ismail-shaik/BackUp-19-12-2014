trigger Contrg on Contact(before insert) 
{
 list<Contact> conlst = new list<Contact>();
  conlst = [select id,FirstName from Contact];
   for(Contact con: trigger.new)
   {
      integer i=1;
      con.FirstName= con.FirstName+i;
      conlst.add(con);
   }
   insert conlst ;
}