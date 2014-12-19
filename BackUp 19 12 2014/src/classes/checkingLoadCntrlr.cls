public class checkingLoadCntrlr 
{

    public checking_Load__c objcheq{get;set;}
    public Integer FreeTime{get;set;}
    
    public checkingLoadCntrlr(ApexPages.StandardController controller) 
    {

    }
    
   public void calculate()
    {
    
     String load = objcheq.Load__c;
     objcheq.FreeTime__c = 8-Integer.valueOf(load);
   //  return null;
    }
    
    
    
    
    

}