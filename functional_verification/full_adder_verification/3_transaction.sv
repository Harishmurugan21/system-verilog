//transaction class 
class transaction;
  
  randc bit a;
  randc bit b;
  randc bit c;
  //output ports
  
  	bit sum;
  	bit carry;
  
  
  //display method to track transaction data object;
  function void display (string name);
     $display("%s",name);
    $display("a=%b,b=%b,c=%b,sum=%b,carry=%b",a,b,c,sum,carry);
  endfunction
  
endclass
  	 
