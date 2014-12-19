public with sharing class Mycontroller 
{

    public PageReference save() {
        return null;
    }

   Public Account acc;
   Public Mycontroller ()
    {
    //  List<Account> acc= new List<Account>();
     // acc=[select id,Name from Account where id=:ApexPages.currentPage().getParameters().get('id')];
    }
    public Account getAccount() 
    {
        return acc;
    }


    public PageReference SaveMethod() 
    {
   //     update acc;
          return null;
    //    PageReference pageRef= new ApexPages.StandardController(acc).view();
   //     return pageRef;
    }

 
}