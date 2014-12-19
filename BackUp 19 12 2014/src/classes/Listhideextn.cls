public with sharing class Listhideextn 
{
  Public Boolean show{get;set;}
  Public Boolean show1{get;set;}
    public Listhideextn(ApexPages.StandardController controller) 
    {
      show=false;
      show1=false;
    }
   Public PageReference dispaly()
    {
      show=true;
      show=true;
      return null;
    }
}