public with sharing class AccountsandContactscntrl {

    public AccountsandContactscntrl(ApexPages.StandardController controller) {
     Contacts = [select id,name from Contact WHERE Accountid= :Controller.getid()];
    }
     Public List<contact>Contacts{get; set;}
}