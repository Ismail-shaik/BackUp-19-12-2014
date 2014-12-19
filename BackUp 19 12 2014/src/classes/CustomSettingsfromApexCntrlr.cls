public class CustomSettingsfromApexCntrlr
     {
     public  XYZSettings__c mySettings {get; set;}
     public XYZSettings__c myOrgSettings{get; set;}

     public CustomSettingsfromApexCntrlr()
        {

          mySettings = XYZSettings__c.getValues(System.Userinfo.getUserId());
          myOrgSettings = XYZSettings__c.getInstance();
            if(mySettings == null)
              {
              mySettings = new XYZSettings__c(SetupOwnerId=System.Userinfo.getUserId());
              }    

         }
    public String getOrgUrl()
    {
    return   myOrgSettings.XYZ_Url__c;
    }

    public String getOrgEmail()
    {
            return   myOrgSettings.XYZ_Email__c;
    }

    public String getUrl()
    {
            return   mySettings.XYZ_Url__c;
    }

    public String getEmail()
    {

           return   mySettings.XYZ_Email__c;
    }

    public PageReference save() {

      if(mySettings.id == null){                   
           upsert mySettings;
             }
      else{
           update mySettings;
             }
      return null;
    }
    }