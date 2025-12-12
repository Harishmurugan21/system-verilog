module static_array;
  
  logic [3:0] arr [0:3][0:1]='{'{2,3},'{4,6},'{3,6},'{1,5}};
 
  initial begin
   $display ("arr=%p",arr);
    foreach (arr[i,j])begin
      $display("arr[%0d][%0d]=[%b]",i,j,arr[i][j]);
     
   end
 end
   
  
endmodule


----------output-------------

arr='{'{'h2, 'h3}, '{'h4, 'h6}, '{'h3, 'h6}, '{'h1, 'h5}} 
arr[0][0]=[0010]
arr[0][1]=[0011]
arr[1][0]=[0100]
arr[1][1]=[0110]
arr[2][0]=[0011]
arr[2][1]=[0110]
arr[3][0]=[0001]
arr[3][1]=[0101]
