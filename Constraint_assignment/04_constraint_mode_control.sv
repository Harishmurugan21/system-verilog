/Constraint Mode Control

// Create 'config_reg' class with 3 constraints:
// 1. Basic range constraint (always enabled)
// 2. Alignment constraint (default enabled)
// 3. Special mode constraint (default disabled)
// Write test that:
// - Randomizes with all constraints
// - Disables constraint 2, randomizes again
// - Enables constraint 3, disables 1, randomizes


class transaction;
  
  rand bit [31:0] data[];
  rand bit[3:0] burst_len;
  
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
    repeat (10) begin
      p=new();
      p.set_c.constraint_mode(0); 
      p.d_arr_c.constraint_mode(0);//disabelling the constraint
      
      p.randomize();
      $display("data=%p | burst_len=%0d |",p.data,p.burst_len);    								
    end
    
  end
endmodule
  
