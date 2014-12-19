public class documentExtdemo
{

   public boolean panelhide{get;set;}
   public boolean recsave{get;set;}

    public documentExtdemo(ApexPages.StandardController controller) 
    {
        Document d = (Document) controller.getRecord();
        d.folderid = UserInfo.getUserId(); //this puts it in My Personal Documents
         
        panelhide = false;
        
    }                 
    
   public PageReference chbox()
   {
      
      if(recsave == true)
      {
          panelhide = true;
      }
      if(recsave == false)
      {
          panelhide = false;
      }
      
     return null;
   }
    
    
}