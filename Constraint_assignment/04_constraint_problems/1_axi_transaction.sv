class transaction;
  
  rand bit [31:0]  addr;
  rand bit [3:0]   id;
  rand bit [7:0]   len;
  rand bit [2:0]   size;  // 0=1B, 1=2B, 2=4B, 3=8B, 4=16B, 5=32B, 6=64B, 7=128B
  rand bit [1:0]   burst; // 0=FIXED, 1=INCR, 2=WRAP
  rand bit lock;
  rand bit [3:0]   cache;
  rand bit [2:0]   prot;
  rand bit [3:0]   qos;
  rand bit valid;
  
  
  constraint burst_c{
    burst inside{[0:2]};
  }
  
  constraint len_c {
    burst==2->len inside {2,4,8,16};
    solve burst before len;
  }
  
  constraint address_c {
    addr%(1<<size)==0;
    solve size before addr;
  }
  
  constraint cache_c {
    cache[0]==1->size>=2;
    //solve cache before size;
    
  }
  
  constraint lock_c {
    lock==1->id==0;//implication
    solve lock before id;
  }
  
  
  
endclass



module test;
  initial begin
    transaction p;
    repeat (20) begin
      p=new();     
      p.randomize();
      $display("axi_packet:%p",p);
      
        								
    end
  end
endmodule
 
