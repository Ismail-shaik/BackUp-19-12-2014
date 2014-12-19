public class BarcodeController {
    public Contact cont;
    public Id contactId; 

    public BarcodeController(ApexPages.StandardController controller) {
        cont=(Contact)controller.getRecord();
        contactId=controller.getId();
        system.debug('contactId.................'+contactId);
    }
    
    public void sendEmail()
    {
        if(contactId !=null || contactId != '')
        {
            Cont=[select Id,Bar_Code__c,Qr_Code__c from Contact where id =:'0039000000qwN3e' limit 1];
            system.debug('cont.............'+Cont);
        }
        String email='jabee.cloud@gmail.com';
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
            mail.setToAddresses(new String[] { email });
            mail.setSubject('Bar Code and the Q.R Code Demo');
           
            String body = cont.Bar_Code__c+
                        +cont.Qr_Code__c;
            mail.setHtmlBody('Scan the Qr code and the Bar code'+body );
     
        // Send the email
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
    }

}