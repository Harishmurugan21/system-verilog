module dyn_q;
int d_q [][$];
  //we first ,alocate the memory for dynamic array in each d_arr dimension can hold a queue that can grow and shrink dyanmaically;
  
  initial begin
    
    //sizing for dynamic array;
    d_q =new[3];
    
    
    for(int i;i<5;i++)
      d_q[0].push_back(i*2);
    
    
    d_q[1].push_back(90);
    
    $display ("d_q:%p",d_q);

  end

endmodule
