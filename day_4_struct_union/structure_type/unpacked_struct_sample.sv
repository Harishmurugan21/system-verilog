module struct_unpacked;
  
  
  //unpacked struct - hign level abstraction level modelling --transaction data objects
  typedef  struct {
    bit [7:0] address;
    bit [7:0] data;
    int dy_arr[];
    
  }unpac_struct ;
 
  
  initial begin
  
  unpac_struct ref_1,ref_2;
  
  ref_1.address='h32;
  ref_1.data='h45;
  ref_1.dy_arr='{12,23,12,23,43};
  

  $display("unpac_struct:%p",ref_1);
  
  end
endmodule



--------output--------------
#unpac_struct:'{address:'h32, data:'h45, dy_arr:'{12, 23, 12, 23, 43}
