public class LoginpageCntrlr 
{

    
      public String forgotPassword { get; set; }
      public String Searchstring{get;set;}
      public String UserName{get;set;}
      public String Password{get;set;}
      public String Email{get;set;}
      public String ipPassword{get;set;}
      public String Lastname{get;set;}
      public List<Contact> conlst{get;set;}
      public List<Contact> newconlst{get;set;}
      public String conid{get;set;}
      public Boolean Op1{get;set;}
      public Boolean Op2{get;set;}
      
      public String Firstname{get;set;}
      public String RePassword{get;set;}
      public String Password1{get;set;}
      public String Phone{get;set;}
      public String Mobile{get;set;}
      public Date Birthdate{get;set;}
      public String Address{get;set;}
      public String City{get;set;}
      public String State{get;set;}
      public String Cuntry{get;set;}
      public Integer Pincode{get;set;}
      public String AltrEmail{get;set;}
      Public Boolean termsconds{get;set;}
      public Boolean Op3{get;set;}
  
    public LoginpageCntrlr()
    {
      conlst = new List<Contact>();
    //  conlst= [select id,Name,email,Password__c from Contact];
       
      newconlst = new List<Contact>();
    //  newconlst = [select id,email from Contact where email =: UserName];
    
           
           Op1 = true;
           Op3 = false;
        
    }
   
    public PageReference loginpage() 
     {
       
        for(Contact cl:[select id,email,name,Password__c from contact where email =: UserName])
        { 
          
         //for(Contact ncl:newconlst)
           for(Contact ncl: [select id,email,password__c from Contact where email =: UserName limit 1])
           {
            
            conid = ncl.id;
            
            System.debug('conid -------------------'+conid);
           
            
            if(cl.email != UserName || cl.Password__c != Password)
             {
                  System.debug('cl.Email------------------'+cl.Email);
                  System.debug('cl.password__c------------------'+cl.password__c);
                  System.debug('UserName------------------'+UserName);
                   System.debug('Password------------------'+Password);
                  
                  
                  
                ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'Please Enter Valid UserName and Password'));
             }
            else 
             {
                  
                  System.debug('cl.Email------------------'+cl.Email);
                  System.debug('cl.password__c------------------'+cl.password__c);
                  System.debug('UserName------------------'+UserName);
                  System.debug('Password------------------'+Password);
               
               pageReference pgf = new pageReference('https://ap1.salesforce.com/'+conid);
               pgf.setRedirect(true);
               return pgf;
             }
           }
        }
        
        return null;
     }
    public PageReference Reset() 
     {
       UserName = null;
       Password = null;
        return null;
     }
    public PageReference Cancel() 
     {
        Op1 = true;
        Op2 = false;
        return null;
     }
    public PageReference forgotPassword()
     {
        return null;
     }
   
    public PageReference SignIn() 
     {
        Op1 = false;
        Op2 = true;
        return null;
     }
     
    public pageReference getGooglelogin() 
     {
        pageReference pgf = new pageReference('https://accounts.google.com/ServiceLogin?hl=en&continue=https://www.google.co.in/');
        pgf.setRedirect(true);
        return pgf;
     }
   
    public PageReference Signup() 
     {
     
        /* Password1 == null || Password1 == '' || FirstName == null || FirstName == '' || Lastname == null || Lastname == '' || RePassword == null || RePassword == '' || Email == null || Email == '' || phone == null || phone == '' || Birthdate == null || Cuntry == null || Cuntry == '' || Pincode == null */
        if(termsconds == false)
          {
             ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'Please accept to the Terms of Service and Privacy Policy'));
          }
          
        else if(Password1 != RePassword)
          {
             ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'Password Doesn\'t Match Please check once'));
          }
          
        else 
          {
     
                Contact con = new Contact();
                 con.LastName = Lastname;
                 con.FirstName = Firstname;
                 con.Password__c= Password1;
                 con.Email = Email;
                 con.phone = Phone;
                 con.Mobilephone = Mobile;
                 con.Birthdate = Birthdate;
                 con.Address__c = Address;
                 con.City__c = City;
                 con.State__c = State;
                 con.Cuntry__c = Cuntry;
                 con.Pincode__c = Pincode;
                 insert con;
                 
                 Op3 = true;
                 
                 con = null;
           }
          
            
         
          
        return null;
     }

    



    


}