 module array_locator;
  
   //array declaration
   bit [3:0] d_arr[];
   int q[$]; 
   bit [3:0] queue [$];
   bit [3:0] q_unique [$];
   int sum,product;
   bit [3:0] first[$];
   int idx[$];
   
   initial begin
    
     //memory allocation
     d_arr=new[4];
    
     d_arr='{1,4,2,6};
    
     $display ("array valus:%p",d_arr);
     $display ("size of dyn_array=%0d",d_arr.size());
    
     //array ordering methods
     //
     d_arr.sort();
     $display ("array valus after sorting:%p",d_arr);
    
     d_arr.rsort();
     $display ("array valus after  dec_sorting:%p",d_arr);
    
     d_arr.reverse();
     $display ("array valus after  reversing:%p",d_arr);
    
     d_arr.shuffle();
     $display ("array valus after  shuffling:%p",d_arr);
    
     //array reduction methods
     foreach (d_arr[i])
    q.push_back(d_arr[i]);
     
     $display("%p",q);
     foreach(q [i])
       $display("q[%b]=%b",i,q[i]);
     
     $display ("sum=%d",q.sum());
     $display ("product=%d",q.product());
     $display("Max      = %0d", q.max());
    $display("Min      = %0d", q.min());
     
     //sum
      $display ("array valus:%p",d_arr);
     sum=0;
     foreach (d_arr[i])
       sum+=d_arr[i];
     $display("sum of all element in array =%0d",sum);
    
     //product 
     product =1;
     foreach(d_arr[i])
       product*=d_arr[i];
     $display ("product  of all elements=%0d",product);
        
    
   //locator method
    
     queue=d_arr.find() with (item>2);
    
     $display ("element greater then %p",q);
     
     $display ("array valus:%p",d_arr);
     
     d_arr=new[15](d_arr);
     $display("d_arr resizing %p",d_arr);
     
     //initialize values
     foreach(d_arr[i])
       d_arr[i]=$random;
     $display ("array valus:%p",d_arr);
     
     //find unique element 
     q_unique = d_arr.unique();
     $display ("unique elements %p",q_unique);
     
     
     q_unique.push_back(1);
     $display ("elements  in queue %p",q_unique);
     
     //find last with condition
    idx = d_arr.find_index(item) with (item > 4);
    $display("Indexes = %p", idx);
 
  /*
 module arry_locator;

  bit [3:0] d_arr[];
  int q[$];            // <-- use int queue

  initial begin

    d_arr = new[4];
    d_arr = '{8,4,5,6};

    // convert dynamic array to int queue
    foreach(d_arr[i])
      q.push_back(d_arr[i]);

    $display("Queue: %p", q);

    $display("Sum      = %0d", q.sum());
    $display("Product  = %0d", q.product());
    $display("Max      = %0d", q.max());
    $display("Min      = %0d", q.min());
    $display("And      = %0b", q.and());
    $display("Or       = %0b", q.or());
 */ end

endmodule
