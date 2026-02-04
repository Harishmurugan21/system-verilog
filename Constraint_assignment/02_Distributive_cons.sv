class traffic_gen;
  
  rand bit [1:0] packet_type;
  
  
  constraint control_c {
    packet_type dist {0:=70,1:=20,2:=5,3:=5};//weighted distriibution
  }
  
endclass


module dist_const;
  
  initial begin
    traffic_gen obj;
    repeat (20)begin
      obj=new();
      obj.randomize();
      $display("packet_type=%b",obj.packet_type);
    end
  end
endmodule
    
   
