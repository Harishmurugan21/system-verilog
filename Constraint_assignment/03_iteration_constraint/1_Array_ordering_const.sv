// Create 'scheduler' class:
// rand int time_slot[4];  // 4 time slots
// rand int priority[4];   // priority 0-3
// Constraints:
// - time_slot[i] < time_slot[i+1] for i=0..2
// - priority[i] != priority[j] for i!=j (all unique priorities)
// - priority[0] must be highest (0 is highest)


//Ordering & Inequalities;

class scheduler;
  rand int time_slot[4];  // 4 time slots
  rand int prior[4];   // priority 0-3
  
  constraint time_c{
    foreach(time_slot[i]){
      if(i<=2)
        time_slot[i]<time_slot[i+1];}
  }
  
  constraint priority_c{
    unique {prior[0], prior[1], prior[2], prior[3]};
    
    foreach(prior[i]){     
      if(i==0)
        prior[0]==0;//set high priority
      else       
        prior[i] inside {[1:3]};
    }
  }
endclass
 
    
module test;
  initial begin
    scheduler p;
    repeat (10) begin
      p=new();
      p.randomize();
      $display("time_slot:%p|priority=%p|",p.time_slot,p.prior);
   end
  end
endmodule
  
          
      
      
      

      
 
      
      
   
      
      

      
      
      
  

      
      
           
    
    
      
      
    
    
      
  
  
  
