public class documentExt 
{

   public boolean panelhide{get;set;}
   public boolean recsave{get;set;}

    public documentExt(ApexPages.StandardController controller) 
    {
        Document d = (Document) controller.getRecord();
        d.folderid = UserInfo.getUserId(); //this puts it in My Personal Documents
         
        panelhide = false;
        
    }                 
    
    public PageReference open()
    {
    
         if(recsave == true)
         { 
            panelhide = true;
         }
      
       return null;  
    }
}