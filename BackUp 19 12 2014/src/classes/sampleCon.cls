public class sampleCon {
      String[] YearValue= new String[]{};
       
        Public Boolean YearValue1{get;set;}
        Public Boolean YearValue2{get;set;}
        Public Integer  countries{get;set;}
            
        public List<SelectOption> getItems() 
        {
            List<SelectOption> options = new List<SelectOption>();
            options.add(new SelectOption('','--NONE--'));
            options.add(new SelectOption('1','2010'));
            options.add(new SelectOption('2','2011'));
            return options;
        }
        
        Public void Picklist()
        {
         if(countries==1)
          YearValue1=true;
         else
          YearValue2=true;
        }
            
        public String[] getCountries() {
            return YearValue;
        }
            
        public void setCountries(String[] YearValue) {
            this.YearValue= YearValue;
        }  
    }