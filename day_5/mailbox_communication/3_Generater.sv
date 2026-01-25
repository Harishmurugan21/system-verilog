class generator;
  
  mailbox mb;
  
  //construtoor
  function new(mailbox mb);
  this.mb=mb;
endfunction
  
 
  task run_gen();
    repeat(5)
      begin
    transaction tr;
    tr=new;
    tr.randomize();
    mb.put(tr);
      end
  endtask
endclass
