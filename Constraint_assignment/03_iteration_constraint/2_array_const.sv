
// Create 'memory_test' class:
// rand bit [7:0] mem_data [16];  // 16-byte memory
// Constraints:
// - First byte (mem_data[0]) always 0xA5
// - Bytes must be strictly increasing (mem_data[i] < mem_data[i+1])
// - Sum of all bytes < 1024
// Use foreach loop in constraint

//ARRAY & ITERATIVE CONSTRAINTS

class trans;
  
  rand bit [7:0] mem_data [16];
 
  constraint arr_c{
    foreach(mem_data[i])
      if(i==0)
        mem_data[i]==8'ha5;
      else if (i>=1&&i<=14) 
        mem_data[i]<mem_data[i+1];
  } 
  constraint sum{
    mem_data.sum()<1024;
  }
endclass


    

module test;
  initial begin
    trans p;
    repeat (10) begin
      p=new();
      p.randomize();
      $display("mem_data=%p | %d",p.mem_data,p.mem_data.sum());    								
    end
    
  end
endmodule
  
          

    

    

      
      
      
      
      
   
  
  
