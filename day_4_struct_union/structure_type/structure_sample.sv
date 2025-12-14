module structure;
  
  struct {
    bit [3:0] age;
    int  roll;
    int id;
  }employee;
  
  initial begin
    
    employee.age=12;
    employee.roll=13;
    employee.id=2;
    
    
    //access
    $display("induvidual access:%0d",employee.id);
    
    $display ("%p",employee);
    
  end
endmodule


-----output---------
#induvidual access:2
#'{age:'hc, roll:13, id:2}
