
// Create 'burst_data' class:
// rand bit [31:0] data[];
// rand int        burst_len;
// Constraints:
// - burst_len inside {[1:8]}
// - data.size() == burst_len
// - Each data[i] should be unique
// - data[i] % 4 == 0  (word aligned

class transaction;
  
   rand bit [31:0] data[];
   rand int burst_len;
  
  constraint d_arr_c{
    burst_len inside {[1:8]};
  }
  
  constraint size_c{
    data.size == burst_len;
  }
  
  constraint unique_c{
    foreach(data[i])
      if(burst_len-1>i){
        data[i]!=data[i+1];
        data[i]%4==0;}
  }
  
  constraint set_c{
    data[burst_len-1]%4==0; 
  }
endclass



module test;
  initial begin
    transaction p;
    repeat (20) begin
      p=new();
      p.randomize();
      $display("data=%p | burst_len=%0d |",p.data,p.burst_len);      								
    end
    
  end
endmodule
  
    
        
        
        
        
  
        
  
        
    
        
  
  
  
