`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"

module env;
  
  mailbox top_mb;
  

generator gen;
driver driv;
  
initial begin
  top_mb=new();//mailbox obj alocation;
  gen=new(top_mb);
  driv=new(top_mb);
  
gen.run_gen();
driv.run_driv();
end
  
endmodule

  
 
