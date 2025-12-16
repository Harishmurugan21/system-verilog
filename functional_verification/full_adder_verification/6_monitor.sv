class monitor;
  //create virtual interface to get the signal to global interface
  virtual intf vif;
  
  //local mon_mbx
  mailbox mon_mbx;
  
  
  //function constructor to point the same memory as global mon_sb mbx and interface
  function new(mailbox mon_sb,virtual intf vif);
    mon_mbx=mon_sb;
    this.vif=vif;
    
  endfunction
  
  //task to monitor the data from global interface and put into mon_sb mbx
  
  task monitor_task();
    transaction tr;
    repeat (15)begin
      #1; //delay for safe process 
      tr=new();
      tr.a=vif.a;
      tr.b = vif.b;
      tr.c = vif.c;
      tr.sum = vif.sum;
      tr.carry = vif.carry;
      
      mon_mbx.put(tr);
      
      tr.display("monitor class signals");
      #4;
    end
    
  endtask
endclass
      
    
  
