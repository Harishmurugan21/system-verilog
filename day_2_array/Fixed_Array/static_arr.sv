module array ;
  //array size declaration
  logic [7:0] fixed_arr [8];
  //size is 8 elelement of each withn 8 bits
  
  initial begin
  fixed_arr ='{1,2,3,4,5,6,7,8};
  $display ("arr:%p",fixed_arr);
    
    fixed_arr[5]=10;
     $display ("arr:%p",fixed_arr);
    
    fixed_arr[5][1]=1'b0;
    $display ("arr:%b",fixed_arr[5]);
    
    $display ("arr:%p",fixed_arr);
    end
endmodule



//output
arr:'{'h1, 'h2, 'h3, 'h4, 'h5, 'h6, 'h7, 'h8} 
arr:'{'h1, 'h2, 'h3, 'h4, 'h5, 'ha, 'h7, 'h8} 
arr:00001000
arr:'{'h1, 'h2, 'h3, 'h4, 'h5, 'h8, 'h7, 'h8} 
