public class ActionPolorTestCntrlr
{
    Integer count = 0;
                        
    public PageReference incrementCounter() {
        count = 5+count++;
        return null;
    }
                        
    public Integer getCount() {
        return count;
    }
}