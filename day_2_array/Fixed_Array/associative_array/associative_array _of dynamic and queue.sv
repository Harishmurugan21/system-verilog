module ass_of_dyn;
  
  //dedclaration
  int d_arr[int][];   // associative of dynamic arrays
  int q_arr[int][$];  // associative of queues
  int key;
  
  initial begin
    
    // Dynamic Arrays
    d_arr[10] = '{1,2,3};
    d_arr[20] = '{5,6};
    d_arr[3]='{1,6,3,5};
    
    $display ("array %p",d_arr);
    
    //resizing the dynamic array for a key
    d_arr[3]=new[5](d_arr[3]);
    $display ("array  after resizing:%p",d_arr);
    
    if (d_arr.first(key))
     do $display("%0d,%p",key,d_arr[key]);
     while (d_arr.next(key));

     
    // Queues
    q_arr[10].push_back(100);
    q_arr[10].push_back(200);
    
    q_arr[20].push_back(50);
    
    $display("Dynamic array at key 10 = %p", d_arr[10]);
    $display("Queue at key 10 = %p", q_arr[10]);
    
  end
endmodule


------------output---------------
# array '{3:'{1, 6, 3, 5}, 10:'{1, 2, 3}, 20:'{5, 6} }
# array  after resizing:'{3:'{1, 6, 3, 5, 0}, 10:'{1, 2, 3}, 20:'{5, 6} }
# 3,'{1, 6, 3, 5, 0}
# 10,'{1, 2, 3}
# 20,'{5, 6}
# Dynamic array at key 10 = '{1, 2, 3}
# Queue at key 10 = '{100, 200}
