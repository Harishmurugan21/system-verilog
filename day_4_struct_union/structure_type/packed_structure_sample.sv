module struct_packed;
  
  
  //packed struct - hardware modelling purpose
  typedef  struct packed {
    bit [7:0] address;
    bit [7:0] data;
    logic  valid_sig;
  }pac_struct ;
  
  
  //interface signal
  logic [14:0] bus_signal; 
  
  initial begin
    //create handle for pac_struct;
    pac_struct data_1 ;
    data_1='{8'h23,8'h12,1};
    
    $display ("packed struct data_1:%p",data_1);
    
    //rewrite the variable member valid_sig
    data_1.valid_sig=0;
     $display ("packed struct data_1:%p",data_1);
    
    //assign the direct packed struct to physical interface  bussignal
    
    bus_signal=data_1;//packed struct;
    
    $display("interface bus_signal:%0b",bus_signal);

    
  end
endmodule


------output-------------
packed struct data_1:'{address:'h23, data:'h12, valid_sig:'h1}
packed struct data_1:'{address:'h23, data:'h12, valid_sig:'h0}
interface bus_signal:100011000100100

endmodule
