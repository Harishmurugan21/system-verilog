class packet;
  
  rand bit [7:0] src_addr;
  rand bit [7:0]dst_addr;
  rand bit [7:0]length;
  
  constraint addr_c {
    src_addr inside {[10:50]};
    dst_addr inside {1,2,4,8};
    length inside {[64:1500]};
  }
  
  function void display();
    $display("src_addr=%d| dst_addr=%d|length=%d|",src_addr,dst_addr,length);
  endfunction  
endclass

module cons;
initial begin
  packet p;
  repeat(5)begin
  run;
  end
end
  
function void run;
  packet p;
  p=new();
  p.randomize();
  p.display();
endfunction
  
endmodule
  
  
  
