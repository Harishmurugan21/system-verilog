//pattern -122112211--->1221 1221.

class arr_const;
  
  rand int dyn[];
  //local 
  int pattern[3]='{1,4,5};
  
  constraint size_c{dyn.size() inside {[5:15]};}
  
  constraint order_c{
    foreach (dyn[i])
      dyn[i]==pattern[i%3];}
    
endclass

module pattern_const;
  arr_const c;
  initial begin
    c=new();
    repeat(3)begin
      c.randomize();
      $display("%p",c);
    end
  end
endmodule
    
  
  
  
      
      
                
