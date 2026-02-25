class even_num;
  
  rand bit[4:0] var1;
  
  constraint even_c1{var1%2==0;}
  constraint even_c2{var1[0]==0;}	            //lsb bit 0 maskes even number generation
  constraint even_c{$countones(var1)==1;}
  

endclass

module test;
  even_num tr;
  
  initial begin
    
    repeat(5)begin
      tr=new();
      assert(tr.randomize());
      $display("var1=%0d(%b)",tr.var1,tr.var1);
    end
  end
endmodule
    
    
    
    
    
    
    
