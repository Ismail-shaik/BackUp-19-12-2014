public with sharing class ListsController
 {
   
  
    public List<String> Foos {get; set;}
    public List<String> Bars {get; set;}

    public ListsController() {
        this.Foos = new List<String>{'one', 'two', 'three', 'four', 'five'};
        this.Bars = new List<String>{'a', 'b', 'c', 'd', 'e'};
    }

    //you need only avail this sequence
    public List<Integer> getIndexes() {
        List<Integer> indexes = new List<Integer>();
        for (Integer i = 0; i < this.Foos.size(); i++) indexes.add(i);
        return indexes;
    }
   

     
 }