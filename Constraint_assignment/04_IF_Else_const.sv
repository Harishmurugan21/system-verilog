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
  
    
  
  
  
  
