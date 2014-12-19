@isTest(SeeAllData=true)
public class SearchingBootstrapcntrlrtest 
 {
   static testMethod void testSearchingBootstrapcntrlr()
   {
      SearchingBootstrapcntrlr cntrlr = new SearchingBootstrapcntrlr();
      cntrlr.searching();
      cntrlr.Searchstring = '';
      
   }
   static testMethod void testcls()
   {
     SearchingBootstrapcntrlr cntrlr = new SearchingBootstrapcntrlr();
     Apexclass listcls = [select id,Name from Apexclass where Name = 'sampleCon'];
   }
 }