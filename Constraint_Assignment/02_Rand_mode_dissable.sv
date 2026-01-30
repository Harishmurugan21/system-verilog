class transaction;
  rand bit [8:0] var1;
  rand bit var2;
  rand bit var3;
  rand bit var4;
  
  
  constraint range_1{
    var1 inside {[1:34],[129:156],[192:202],[257:260],127};
  }
  
//   constraint range_2{
//     var1 inside {127};
//   }
  
//   constraint range_3{
//     var1 inside {[129:156]};
//   }
  
//   constraint range_4{
//     var1 inside {[192:202]};
//   }
//   constraint range_5{
//     var1 inside {[257:260]};
 
//   }
  
endclass



module test_c;
  transaction tr;
  initial begin
    repeat(5) begin
      tr=new();
      
      //disabbling randand constraint mode
      tr.range_1.constraint_mode(0);
      tr.var1.rand_mode(0);
      tr.var3.rand_mode(0);
      tr.var4.rand_mode(0);
      
      
      
      tr.randomize();
      $display("var1=%b(%d)|var2=%b| var3=%b| var4=%b|",tr.var1,tr.var1,tr.var2,tr.var3,tr.var4);
    end
  end
endmodule
      
    
