// Create 'cache_transaction' class:
// rand bit [31:0] addr;
// rand bit [1:0]  cache_op; // 0: READ, 1: WRITE, 2: INVALIDATE, 3: CLEAN
// Constraints:
// - If READ/WRITE -> addr[4:0] == 0 (32-byte aligned)
// - If INVALIDATE -> addr inside {[0x1000:0x1FFF]}
// - CLEAN not allowed with addr > 0x2000class packet;

  rand bit [31:0] addr;
  rand bit [1:0]  cache_op;
  
  
  constraint relation{
    (!cache_op||cache_op)->addr[4:0]==0;
    cache_op==2->addr inside {[4'h1000:4'h1fff]};
    cache_op==3->addr<4'h2000;
  }
  
endclass


module test;
  initial begin
    packet p;
    repeat (15) begin
      p=new();
      p.randomize();
      $display("addr=%b(%d)|cache_op=%b|",p.addr,p.addr,p.cache_op);
    end
  end
endmodule
  
    
  
