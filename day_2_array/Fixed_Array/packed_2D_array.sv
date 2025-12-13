module packed_2D ;
  //unpacked array 1d declaratoion
  //2D packed array that occupies 32-bits or 4 bytes 
  bit [3:0] [7:0] arr;
  
  
  initial begin
    
    //initialize unpacked array values
    arr='d4;
    $display ("array=%p (%b)",arr,arr);
    
    arr='{12,57,100,3};
    $display ("array=%p (%b)",arr,arr);
    
    arr[3]='hfa;
    $display ("array=%p (%b)",arr,arr);
    
    arr[3][7]=0;
    $display ("array=%p (%b)",arr,arr);
    
    $display ("array[%0d]=%b",3,arr[1]);

  end
endmodule


-------------output-----------------
array=         4 (00000000000000000000000000000100)
array= 205087747 (00001100001110010110010000000011)
array=4198065155 (11111010001110010110010000000011)
array=2050581507 (01111010001110010110010000000011)
array[3]=01100100
