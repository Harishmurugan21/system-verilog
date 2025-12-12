module dynamic_array_1D;
  
  // 1d dynamic array declaration;
  bit [3:0] dyn_arr [];
   
  logic [3:0] data;
 
  initial begin
    
    //allocate the size
    dyn_arr=new[5];
    dyn_arr[3]='h2;
    $display ("%p",dyn_arr);
    
    //array reallocate and assign value
    dyn_arr='{15,3,4};
    $display("size of dyn_arr=%0d",dyn_arr.size());
    $display ("%p",dyn_arr);
    
    
    
    //resize and extend old array;
    dyn_arr=new[5](dyn_arr);
    $display("size of dyn_arr=%0d",dyn_arr.size());
    $display ("%p",dyn_arr);
    
    dyn_arr[1]='h8;
    dyn_arr[3]='h4;
    dyn_arr[4]='h1;
    $display ("%p",dyn_arr);
    
    
    //access 
    data=dyn_arr[0];
    $display ("%0b",data);
    
    $display ("%p",dyn_arr);
    
    //array locator method
     $display("max value in the array =%b ", dyn_arr.max());

  end
endmodule

//output
'{'h0, 'h0, 'h0, 'h2, 'h0} 
size of dyn_arr=3
'{'hf, 'h3, 'h4} 
size of dyn_arr=5
'{'hf, 'h3, 'h4, 'h0, 'h0} 
'{'hf, 'h8, 'h4, 'h4, 'h1} 
1111
'{'hf, 'h8, 'h4, 'h4, 'h1} 
max value in the array =0000 
 
