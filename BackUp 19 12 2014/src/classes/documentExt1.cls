public class documentExt1
{

   public boolean panelhide{get;set;}
   public boolean recsave{get;set;}

    public documentExt1(ApexPages.StandardController controller) 
    {
        Document d = (Document) controller.getRecord();
        d.folderid = UserInfo.getUserId(); //this puts it in My Personal Documents
       
        panelhide = false;
    }     
    public pageReference save()
    {
   
       if(recsave == true)
       {
          panelhide = true; 
       }
       else
          panelhide = false;
         
            
      return null;
    }            

}