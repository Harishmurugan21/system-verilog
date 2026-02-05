
// class router_packet;
//   rand bit [7:0] ttl;
//   rand bit [3:0] priority;
//   rand bit       emergency;
//   
//   // Soft defaults
//   constraint soft_defaults {
//     soft ttl inside {[32:64]};
//     soft priority inside {[1:3]};
//   }
//   
//   constraint emergency_c {
//     emergency -> priority == 0;
//   }
// endclass
//
// Test: Randomize normally, then randomize with:
// - ttl inside {[1:10]} (should override soft)
// - priority == 7


class router_packet;
  rand bit [7:0] ttl;
  rand bit [3:0] prior;
  rand bit       emergency;
  
  // Soft defaults
  constraint soft_defaults {
    soft ttl inside {[32:64]};     //soft contraint have the lowest priority in the solver
    soft prior inside {[0:3]};     //if conflict with hard or inline constraint it will just ignore
  }
  
  constraint emergency_c {
    emergency -> prior == 0;
    solve emergency before prior;
  }
endclass


module generation;
  
  initial begin
    router_packet p;
    repeat(15)begin
    p=new();
      p.randomize() with {ttl inside {[1:10]};prior==7;};  
    $display("packet:%p:",p);
    end
  end
endmodule
    
  
  
