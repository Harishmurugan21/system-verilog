module packed_arr_1d ;
  //packed array 1d declaratoion
  bit [4:0] arr;
  
  initial begin
    
    //initialize packed array values
    arr=5'd4;
    foreach (arr[i]) begin
      $display("arr[%0d]=%b",i,arr[i]);
    end
    
    arr[4]=1;
    $display("arr:%b",arr);
    
  end
endmodule



------------output--------------

arr[4]=0
arr[3]=0
arr[2]=1
arr[1]=0
arr[0]=0
arr:10100
 
