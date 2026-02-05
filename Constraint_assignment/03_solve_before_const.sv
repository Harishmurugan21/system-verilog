//SOLVE-BEFORE & DISTRIBUTION CONTROL

// Create 'arbiter' class:
// rand bit [3:0] request;  // One-hot request bits
// rand int       master_id; // 0-3
// Constraints:
// - request has exactly one bit set
// - master_id corresponds to set bit in request
// - Use solve...before to force request solved before master_id
// Check distribution difference with/without solve-before

class transaction;
  rand bit [3:0] request;  // One-hot request bits
  rand int master_id;
  
  constraint solve_c{
    $countones(request)==1;
    //master_id ==request;
  }
  
  constraint master_c{
    request[0]==1->master_id==0;
    request[1]==1->master_id==1;
    request[2]==1->master_id==2;
    request[3]==1->master_id==3;
  }
    
  
  constraint solve_b {
    solve request before master_id;    //solver solves and assign the request before the masterid variable 
  }
    
endclass



module test;
  initial begin
    transaction p;
    repeat (20) begin
      p=new();
      p.randomize();
      $display("requst=%b | master=%0d |",p.request,p.master_id);       								
    end
    
  end
endmodule
  
    
        
        
   
  
  
  
