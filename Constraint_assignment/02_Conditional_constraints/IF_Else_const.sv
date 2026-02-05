// Create 'dma_transfer' class:
// rand bit [2:0] transfer_size; // 0: 8B, 1: 16B, 2: 32B, 3: 64B, 4: 128B
// rand bit       direction;     // 0: HOST_TO_DEV, 1: DEV_TO_HOST
// Constraints:
// - If direction=0, size can't be 128B
// - If direction=1, size must be >= 32B
// - If size==64B, ensure some flag bit is set

class dma_transfer;
  
  rand bit [2:0] transfer_size;
  rand bit  direction;
  rand bit flag;
  
  constraint dma_direction{
    if(direction)
      transfer_size inside {[2:4]};
      //transfer_size==3->flag==1;}     
    else 
      transfer_size <=3;
  }
   
  constraint flag_en{
    (transfer_size==3)->flag==1;
    !(transfer_size==3)->flag==0;  
  }
  
//   function void post_randomize();
//     if(transfer_size==3)
//       flag=1;
//   endfunction  
endclass


module test;
  initial begin
    dma_transfer p;
    repeat (20) begin
      p=new();
      p.randomize();
      $display("transfer_size=%d|direction=%b|flag=%d|",p.transfer_size,p.direction,p.flag);
      
        								
    end
  end
endmodule
  
    
 
  
  
