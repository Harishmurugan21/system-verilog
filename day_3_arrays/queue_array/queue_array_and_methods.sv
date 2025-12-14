module queue;
  //bit [7:0] q  [$];
  int q [$];
  int out[$];
  int pop;
  
  initial begin
    //initialization
    q='{1,3,45,5,77,5,89,99};
    $display ("elements in q:%p",q);
    $display ("size of q:0d",q.size());
    $display ("max:",q.max());
    $display ("last element :%0d",q.pop_back());
    
    $display ("elements in q after pop last element:%p",q);
    
    //pusk pop method 
    q.push_front(34);
    q.push_back (45);
    pop = q.pop_back();
    $display ("element pop  from back:%p",out);
    $display ("size of array after push and pop elements:0d",q);
    
    
    //min value in ther queue ;
    out = q.min();
    $display ("min value :%0p",out);
    
    //find min  with condition;
    out =q.find() with (item>45);
   
     $display ("%0p",out);
    
    $display ("min element <45 is %0p",out.min());
    //find 
    out=q.find() with (item%2==0);
    $display (" even value in the queue  :%0p",out);
    
    
    //insert 
    q.insert (0,34);
    $display (" after insert at 0 index value 34 :%0p",q);
    
    //unique : fiind unique element and copy to another queue
    out=q.unique();
    $display ("unique values in the queue:%p",out);
    
    //sum
    pop =q.sum();
    $display ("sum of the queue:%0d",pop);
    
    
    //delete the queue
    q.delete();
    $display("delete the queue:%p",q);
    
  end 
endmodule

------output---------------
# run -all
# elements in q:'{1, 3, 45, 5, 77, 5, 89, 99}
# size of q:0d          8
# max:99
# last element :99
# elements in q after pop last element:'{1, 3, 45, 5, 77, 5, 89}
# element pop  from back:'{}
# size of array after push and pop elements:0d34 1 3 45 5 77 5 89
# min value :1
# 77 89
# min element <45 is 77
#  even value in the queue  :34
#  after insert at 0 index value 34 :34 34 1 3 45 5 77 5 89
# unique values in the queue:'{1, 3, 5, 34, 45, 77, 89}
# sum of the queue:293
# delete the queue:'{}
# exit

endmodule
