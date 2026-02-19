// Array size between 5-10
// All elements unique
// Each element > 10


class con;
  
  rand  logic [31:0] d_arr[];
  
  
  constraint d_c {d_arr.size inside {[5:15]};}
  
  constraint u_c{ unique {d_arr};}
  
  constraint arr_c{
    
    foreach(d_arr[i]) 
      d_arr[i]<10;
    
  }
  
  
endclass


module test;
  
  con c;
  
  initial begin
    repeat(5)begin
      c=new();
      c.randomize();
      $display("d_Arr: %0p",c.d_arr);
    end
    
  end
  
endmodule

    
    
      
      
    
    
                  
 
  
  
  
