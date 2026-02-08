class grey_transaction;
  rand bit [3:0] bin;
  rand bit [3:0] grey;
  
  constraint grey_c {
    grey == bin^(1<<bin);
        
  }
  
  constraint solve_c{
    solve bin before grey;
  }
  
endclass



module test;
  initial begin
    grey_transaction p;
    repeat (10) begin
      p=new();     
      p.randomize();
      $display("binary=%b (%d)| grey=%b(%d)",p.bin,p.bin,p.grey,p.grey);
             								
    end
  end
endmodule
  
    
