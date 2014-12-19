public class PositionExtrnCntrlr 
{

    public PositionExtrnCntrlr(ApexPages.StandardController controller) {

    }

    Public Position__c posobj{get;set;}
    public PositionExtrnCntrlr(ApexPages.StandardSetController controller) 
    {
       posobj= new Position__c();
    }
    
   Public PageReference save()
    {
     // posobj.Min_Pay__c= posobj.Min_Pay__c;
      insert posobj;
      PageReference pageref=new PageReference('https://na15.salesforce.com/'+posobj.id);
      pageref.setRedirect(True);
      return pageref;
    }

} 
/*
public class PositionExtrnCntrlr 
{
    ApexPages.StandardSetController stdCtrl;
    public PositionExtrnCntrlr (ApexPages.StandardSetController std)
    {
       stdCtrl=std;
    }

    public PageReference save()
    {
        stdCtrl.save();
        return null;
    }
}   */