public class TwoobjectRecordscontroller

{

    public List<Question__c> QccLst{get; set;}
    public List<Answer__c> AccLst {get; set;}
    public List<MyWrapper> wrapper {get; set;}
    public Answer__c AccRec {get; set;}
    public TwoobjectRecordscontroller()
    {
        QccLst = [select id,name,Question_Number__c from Question__c] ;
        AccLst = [select id,name,Answer_No__c,Status__c from Answer__c] ;
        wrapper = new List<MyWrapper>() ;
        for(Integer i=0 ; i < 2 ; i++)
            wrapper.add(new MyWrapper(QccLst[i] , AccLst[i])) ;
    }
    public class MyWrapper
    {
        public Question__c QccRec {get; set;}
        public Answer__c AccRec {get; set;}
        public MyWrapper(Question__c Qcc , Answer__c Acc)
        {
            QccRec = Qcc ;
            // AccRec = Acc ;
        }
    }
   
    public PageReference save() 
     {  
       AccRec = new  Answer__c();
        
        insert AccRec;
        return null;
     }
}