public class documentExtdemo1ctrlr
{

   public boolean panelhide{get;set;}
   public boolean recsave{get;set;}

    public documentExtdemo1ctrlr(ApexPages.StandardController controller) 
    {
        Document d = (Document) controller.getRecord();
        d.folderid = UserInfo.getUserId(); //this puts it in My Personal Documents
         
        
        
    } 
   
   
}