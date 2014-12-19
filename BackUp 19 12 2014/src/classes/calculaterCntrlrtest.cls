@isTest
 public class calculaterCntrlrtest
 {
    static testMethod void testcalculaterCntrlr()
    {
        calculaterCntrlr cntrlr = new calculaterCntrlr();
        cntrlr.Find();
        cntrlr.getFuncs();
        
    }
   static testMethod void testaddmethod()
    {
        calculaterCntrlr cntrlr = new calculaterCntrlr();
        cntrlr.first = 5;
        cntrlr.Second = 5;
        cntrlr.function = 'add';
        cntrlr.Find();
        System.AssertEquals(cntrlr.Result,10);
    }
   static testMethod void testsubmethod()
    {
        calculaterCntrlr cntrlr = new calculaterCntrlr();
        cntrlr.first = 5;
        cntrlr.Second = 5;
        cntrlr.function = 'sub';
        cntrlr.Find();
        System.AssertEquals(cntrlr.Result,0);
    }
   static testMethod void testmulmethod()
    {
        calculaterCntrlr cntrlr = new calculaterCntrlr();
        cntrlr.first = 5;
        cntrlr.Second = 5;
        cntrlr.function = 'mul';
        cntrlr.Find();
        System.AssertEquals(cntrlr.Result,25);
    }
   static testMethod void testdivmethod()
    {
        calculaterCntrlr cntrlr = new calculaterCntrlr();
        cntrlr.first = 5;
        cntrlr.Second = 5;
        cntrlr.function = 'div';
        cntrlr.Find();
        System.AssertEquals(cntrlr.Result,1);
    }
 }