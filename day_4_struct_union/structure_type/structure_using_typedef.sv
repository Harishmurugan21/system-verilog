module structure_typedef;
  
  
  
  typedef struct {
    bit [3:0] age;
    int  roll;
    int id;
  }employee;
  
  
  //array size of 2 that can store structure sata type
  employee a_s [2];
  employee q_s [$];
  
  initial begin
    
    employee e1,e2;
    //store  the employee struct using in e1 handle
    e1.age=12;
    e1.roll=13;
    e1.id=1;
    $display ("%p",e1);
    
    //access
    $display("induvidual access rolle1:%0d",e1.roll);
    
    
    e2.age=12;
    e2.roll=13;
    e2.id=2;
    $display ("%p",e2);
    
    //access
    $display("induvidual access rolle2:%0d",e2.roll);
    
    
    //array of structure
    //fixed
    
    a_s[0]=e1;
    a_s[1]='{age:14,roll:23,id:2};
    
    $display("array of struc:%p",a_s);
    
    //queue of struct
    q_s.push_back(e1);
    q_s.push_back(e2);
    $display ("queue of struct : %p",q_s);
  end
endmodule



----------output----------
'{age:'hc, roll:13, id:1}
induvidual access rolle1:13
'{age:'hc, roll:13, id:2}
induvidual access rolle2:13
array of struc:'{'{age:'hc, roll:13, id:1}, '{age:'he, roll:23, id:2}} 
queue of struct : '{'{age:'hc, roll:13, id:1}, '{age:'hc, roll:13, id:2}} 
  
endmodule
