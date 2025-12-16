class generator;
  //object creation for transaction class
  transaction tr;
  
  //local mailbox to put the generator transation data object
  mailbox gen_mbx;
  
  //function for local gen_mbx to point the same memory as global mbx 
  function new(mailbox gen_driv);
    gen_mbx=gen_driv;
    
  endfunction
    
    
    //task to randamixe the trnsaction data obj and put in the mbx
    task gen_task();
      repeat(15) begin
        //allocat mem to transaction obj
        tr=new();
      tr.randomize();
      gen_mbx.put(tr);
      tr.display("generator class signal");
      end
      
    endtask
    
    endclass
      
      
  
  
