//`include "transaction.sv"
class driver;
  
  mailbox mb;

  
 //construtoor
  function new(mailbox mb);
  this.mb=mb;
  endfunction
  
  
  task run_driv();
    repeat (5)
    begin
    transaction tr;
    mb.get(tr);
    $display("transaction object get fro  driver a=%b,b=%b",tr.a,tr.b);
    end
  endtask
  
endclass
