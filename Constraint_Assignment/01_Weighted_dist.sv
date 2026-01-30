class generic;
  rand bit [7:0] var1;
   bit [3:0] var2;
  
  constraint range_c{
    var1 dist {[0:100]:/80,[101:255]:/20};
  }
  
endclass


module test_c;
  generic obj;
  initial begin
    repeat(20) begin
      obj=new();
      obj.randomize();
      $display("var=%b(%d)",obj.var1,obj.var1);
    end
  end
endmodule
      


  
    
    
  
