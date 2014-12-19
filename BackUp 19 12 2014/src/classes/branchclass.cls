public class branchclass 
{

    public branchclass(ApexPages.StandardController controller) 
    {
    
        

    }
public string studentname{set;get;}
public string branchname{set;get;}

public boolean studentname1{set;get;}
public boolean studentname2{set;get;}
public boolean studentname3{set;get;}

public boolean branchname11{set;get;}
public boolean branchname12{set;get;}
public boolean branchname13{set;get;}
public boolean branchname21{set;get;}
public boolean branchname22{set;get;}
public boolean branchname23{set;get;}
public boolean branchname31{set;get;}
public boolean branchname32{set;get;}
public boolean branchname33{set;get;}

public list<selectoption> getstudentlist()
{
list<selectoption> option=new list<selectoption>();
option.add(new selectoption ('','--None--'));
option.add(new selectoption ('1','st1'));
option.add(new selectoption ('2','st2'));
option.add(new selectoption ('3','st3'));
return option;
}
public list<selectoption> getbranchlist()
{
list<selectoption> option1=new list<selectoption>();
option1.add(new selectoption('','--None--'));
option1.add(new selectoption('100','ECE'));
option1.add(new selectoption('200','CSE'));
option1.add(new selectoption('300','EEE'));
return option1;
}

public void pickliststudent()
{
if(studentname=='1')
{
studentname1=true;
studentname2=false;
studentname3=false;

    branchname21=false;
    branchname22=false;
    branchname23=false;
    branchname31=false;
    branchname32=false;
    branchname33=false;
}

else
if(studentname=='2')
{
studentname1=false;
studentname2=true;
studentname3=false;

    branchname11=false;
    branchname12=false;
    branchname13=false;
    branchname31=false;
    branchname32=false;
    branchname33=false;
}
else
if(studentname=='3')
{
studentname1=false;
studentname2=false;
studentname3=true;

    branchname11=false;
    branchname12=false;
    branchname13=false;
    branchname21=false;
    branchname22=false;
    branchname23=false;
}
else
{
studentname1=false;
studentname2=false;
studentname3=false;

    branchname11=false;
    branchname12=false;
    branchname13=false;
    branchname21=false;
    branchname22=false;
    branchname23=false;
    branchname31=false;
    branchname32=false;
    branchname33=false;
}

}
public void picklistbranch()
{
    if(studentname=='1' && branchname=='100')
    {
    branchname11=true;
    branchname12=false;
    branchname13=false;
    branchname21=false;
    branchname22=false;
    branchname23=false;
    branchname31=false;
    branchname32=false;
    branchname33=false;
    }
   else if(studentname=='1' && branchname=='200')
    {
    branchname11=false;
    branchname12=true;
    branchname13=false;
    branchname21=false;
    branchname22=false;
    branchname23=false;
    branchname31=false;
    branchname32=false;
    branchname33=false;
    }
   else if(studentname=='1' && branchname=='300')
    {
    branchname11=false;
    branchname12=false;
    branchname13=true;
    branchname21=false;
    branchname22=false;
    branchname23=false;
    branchname31=false;
    branchname32=false;
    branchname33=false;
    }
else
    if(studentname=='2' && branchname=='100')
    {
    branchname11=false;
    branchname12=false;
    branchname13=false;
    branchname21=true;
    branchname22=false;
    branchname23=false;
    branchname31=false;
    branchname32=false;
    branchname33=false;
    }
    else if(studentname=='2' && branchname=='200')
    {
    branchname11=false;
    branchname12=false;
    branchname13=false;
    branchname21=false;
    branchname22=true;
    branchname23=false;
    branchname31=false;
    branchname32=false;
    branchname33=false;
    }
    else if(studentname=='2' && branchname=='300')
    {
    branchname11=false;
    branchname12=false;
    branchname13=false;
    branchname21=false;
    branchname22=false;
    branchname23=true;
    branchname31=false;
    branchname32=false;
    branchname33=false;
    }
else
    if(studentname=='3' && branchname=='100')
    {
    branchname11=false;
    branchname12=false;
    branchname13=false;
    branchname21=false;
    branchname22=false;
    branchname23=false;
    branchname31=true;
    branchname32=false;
    branchname33=false;
    }
    else if(studentname=='3' && branchname=='200')
    {
    branchname11=false;
    branchname12=false;
    branchname13=false;
    branchname21=false;
    branchname22=false;
    branchname23=false;
    branchname31=false;
    branchname32=true;
    branchname33=false;
    }
    else if(studentname=='3' && branchname=='300')
    {
    branchname11=false;
    branchname12=false;
    branchname13=false;
    branchname21=false;
    branchname22=false;
    branchname23=false;
    branchname31=false;
    branchname32=false;
    branchname33=true;
    }
    
    else
    {
     branchname11=false;
     branchname12=false;
     branchname13=false;
     branchname21=false;
     branchname22=false;
     branchname23=false;
     branchname31=false;
     branchname32=false;
     branchname33=false;
    }

}

}