  bit [2:0] [3:0] [7:0] arr;   //total of 12 bytes  stores in a contiguous set of bits
  
  
  initial begin
    
    //array initailization
    
    arr [0]=32'h2d_f1_ab_3c;
    arr [1]='d549;
    arr [2]='{12,45,34,45};
    
    $display("arr:%p (%b)",arr,arr);
    
    arr [2][3][7]=1;
    $display ("arr:%b",arr[2]);
    
    foreach(arr[i])begin
      foreach(arr[i][j])begin
        $display ("arr[%0d][%0d]=%0b",i,j,arr[i][j]);
      end
    end
      
  
  end
endmodule


-----------output---------------
arr: 3768383170302702381134097212 (11000010110100100010001011010000000000000000000000100010010100101101111100011010101100111100)
arr:10001100001011010010001000101101
arr[2][3]=10001100
arr[2][2]=101101
arr[2][1]=100010
arr[2][0]=101101
arr[1][3]=0
arr[1][2]=0
arr[1][1]=10
arr[1][0]=100101
arr[0][3]=101101
arr[0][2]=11110001
arr[0][1]=10101011
arr[0][0]=111100
