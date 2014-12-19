public class CalenderConnect {

    public Boolean calenderShow { get; set; }


    public PageReference displayCalender() {
        calenderShow =true;
        return null;
    }


    public String emailValue { get; set; }

    public PageReference outlookConnect() {
        System.debug(emailValue);
        if(emailValue ==''){
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.INFO,'Email Address Should be specified'));
        }
        try{
        
        String vCal = 'BEGIN:VCALENDAR'+ '\n' 
                            +'VERSION:1.0' + '\n'
                            +'BEGIN:VEVENT' + '\n'
                            +'URL:Site Url'+ '\n'
                            +'DTSTART:20140329T223000Z'+ '\n'
                            +'DTEND:20140330T023000Z'+ '\n'
                            +'SUMMARY:Message'+ '\n'
                            +'DESCRIPTION:Body Message'+ '\n'
                            +'LOCATION:Class of 1923 Ice Rink - 3130 Walnut St - Philadelphia, PA 19104'+ '\n'
                            +'END:VEVENT'+ '\n'
                            +'END:VCALENDAR'+ '\n';
        List<String> toAddresses = new List<String>();
        toAddresses.add(emailValue);
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        email.setSubject('Test');
        email.setToAddresses(toAddresses);
        email.setHtmlBody('Test');
        email.setPlainTextBody('Test');
        Messaging.EmailFileAttachment efa = new Messaging.EmailFileAttachment();
        efa.setFileName('invite.ics');
        efa.setBody(Blob.ValueOf(vCal));
        
        //attachments.add(efa);
        efa.setContentType('text/calendar');
        email.setFileAttachments(new Messaging.EmailFileAttachment[] {efa});
         Messaging.SendEmailResult [] r = Messaging.sendEmail(new Messaging.SingleEmailMessage[] {email});
        }
        catch(Exception e){
            System.debug(e.getMessage()+e.getStackTraceString());
        }
        return null;

    }


    public PageReference googleConnectCall() {
        PageReference pr = new PageReference('https://www.google.com/calendar/render?action=TEMPLATE'+
                            '&text=Scheduling the Meeting at Test Message'+
                            '&dates=20140329T223000Z/20140330T023000Z'+
                            '&details=Body of the event'+
                            '&location=Location Where the meeting is going to hel    d'+
                            '&output=xml');
            System.debug(pr);
        return pr;
    }
    
    public Pagereference doYahooconnectCall(){
        PageReference pr = new PageReference('https://calendar.yahoo.com/?v=60&view=d'+
                               '&type=20'+
                               '&title=Scheduling the Meeting at Test Message'+
                               '&st=20140329T223000Z&dur=0400'+
                               '&desc=Body of the event' +
                               '&in_loc=Location Where the meeting is going to held');
            System.debug(pr);
        return pr;
    }


    private final string googleClientID = '306772550204-ms9hsdbhba2tr915sqlq9iue3msid9ue.apps.googleusercontent.com';
    private final string googleSecretCode = '51zOHng5-MQXjOcNiL87JwFk';
    private final string redirectURI = 'https://c.ap1.visual.force.com/apex/calender';
    private string authorizationCode = '';
    private string state = '';
    private string accessToken;
    private string refreshToken;
    private string expiresIn;
    private string tokenType;
    
     public CalenderConnect(){
        authorizationCode = System.currentPageReference().getParameters().get('code');
        if(authorizationCode != null){
            state = System.currentPageReference().getParameters().get('state');
            accessToken = '';
                retrieveGoogleAccessToken();
                if(accessToken <> ''){
                    addCalendarEntry();
                }                
        }
    }
    
    
    
    public pageReference doGoogleConnectCall(){

        PageReference pr = new PageReference('https://accounts.google.com/o/oauth2/auth' +
            '?response_type=code' +
            '&client_id=' + googleClientID + 
            '&redirect_uri=' + redirectURI +
            '&scope=https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcalendar' +
            '&state=' + 'vcalender ' + 
            '&access_type=online' +
            '&approval_prompt=auto' +  //auto, force
            '&login_hint=sureshyadav.ece@gmail.com');
            System.debug(pr);
        return pr;
    }
    private void retrieveGoogleAccessToken(){
        Http h = new Http();
        HttpRequest req = new HttpRequest();
        string endPointValue = 'https://accounts.google.com/o/oauth2/token';    
        req.setEndpoint(endPointValue);
        
        string bodyRequest = '';
        bodyRequest = 'code=' + EncodingUtil.urlEncode(authorizationCode, 'UTF-8');
        bodyRequest += '&client_id=' + EncodingUtil.urlEncode(googleClientID, 'UTF-8');
        bodyRequest += '&client_secret=' + EncodingUtil.urlEncode(googleSecretCode, 'UTF-8');
        bodyRequest += '&redirect_uri=' + EncodingUtil.urlEncode(redirectURI, 'UTF-8');
        bodyRequest += '&grant_type=authorization_code';
        req.setBody(bodyRequest);       
        req.setHeader('Content-length', string.ValueOf(bodyRequest.length()));  
        req.setHeader('Content-Type', 'application/x-www-form-urlencoded');
        req.setMethod('POST');
        req.setTimeout(10000);
        HttpResponse res = h.send(req);     
        map<string, string> jsonValues = new map<string, string>();
       
        System.debug('Response Value:'+res.getBody());
        jsonValues = parseJSONToMap(res.getBody());
        if(jsonValues.containsKey('error')){   
        }else{
            //Try to get a cell value in the Google Spreadsheet
            accessToken = jsonValues.get('access_token');
            refreshToken = jsonValues.get('refresh_token');
            expiresIn = jsonValues.get('expires_in');
            tokenType = jsonValues.get('token_type');           
        }       
    }
      private void addCalendarEntry(){
        Http h = new Http();
        HttpRequest req = new HttpRequest();
        string endPointValue = 'https://www.googleapis.com/calendar/v3/calendars/primary/events';
        //This end point does seem to work, but it is not creating an event, just creating a new calendar
        //endPointValue = 'https://www.googleapis.com/calendar/v3/calendars?key=' + googleClientID;
        req.setEndpoint(endPointValue);     
        string bodyRequest = '';
        bodyRequest = '{';
        bodyRequest += '\r\n';
        bodyRequest += '"summary": "Sales Call",';
        bodyRequest += '\r\n';
        bodyRequest += '"location": "Conference Room A",';
        bodyRequest += '\r\n';
        bodyRequest += '"start": {';
        bodyRequest += '\r\n';
        bodyRequest += '"dateTime": "2014-03-26T11:00:00.000-07:00",';
        bodyRequest += '\r\n';
        bodyRequest += '"timeZone": "America/Los_Angeles"';
        bodyRequest += '\r\n';
        bodyRequest += '},';
        bodyRequest += '\r\n';
        bodyRequest += '"end": {';
        bodyRequest += '\r\n';
        bodyRequest += '"dateTime": "2014-03-26T11:30:00.000-07:00",';
        bodyRequest += '\r\n';
        bodyRequest += '"timeZone": "America/Los_Angeles"';
        bodyRequest += '\r\n';
        bodyRequest += '},'; 
        bodyRequest += '\r\n';
        bodyRequest += '"recurrence": [';
        bodyRequest += '\r\n';
        bodyRequest += '"RRULE:FREQ=WEEKLY;UNTIL=20131226T000000Z"';
        bodyRequest += '\r\n';
        bodyRequest += '],';        
        bodyRequest += '\r\n';
        bodyRequest += '"attendees": [';
        bodyRequest += '\r\n';
        bodyRequest += '{';
        bodyRequest += '\r\n';
        bodyRequest += '"email": "sureshyadav.ece@gmail.com"';
        bodyRequest += '\r\n';
        bodyRequest += '}';
        bodyRequest += '\r\n';
        bodyRequest += ']'; 
        bodyRequest += '}';
        
        req.setBody(bodyRequest);       
        req.setHeader('Authorization', 'Bearer ' + accessToken);
        req.setHeader('Content-length', string.ValueOf(bodyRequest.length()));  
        req.setHeader('Content-Type', 'application/json; charset=UTF-8');
        req.setMethod('POST');
        req.setTimeout(10000);
        HttpResponse res = h.send(req);  
    }
    
    private map<string, string> parseJSONToMap(string JSONValue){
        JSONParser parser = JSON.createParser(JSONValue);
        map<string, string> jsonMap = new map<string, string>();
        string keyValue = '';
        string tempValue = '';
        while (parser.nextToken() != null) {
            if(parser.getCurrentToken() == JSONToken.FIELD_NAME){
                keyValue = parser.getText();
                parser.nextToken();
                tempValue = parser.getText();
                jsonMap.put(keyValue, tempValue);               
            }
        }
        return jsonMap;
    }
    
}