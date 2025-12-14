module test;
typedef struct {
  int sum;
  int row_index;
} row_info_t;

row_info_t info[$];
  int d2 [][];
  initial begin
    
    d2=new[3];
    foreach(d2[i])
      d2[i]=new[3];
    $display("%p",d2);
    
    
    foreach (d2[i])
      foreach(d2[j])
        d2[i][j]=$urandom_range(10,1);
    $display("%p",d2);
    
    
  foreach (d2[i]) begin
  int s = 0;
  foreach (d2[i][j]) s += d2[i][j];
    info.push_back('{s,i});
end
    
    $display (" queue %p",info[0]);
    
  end
endmodule






--------output----------
'{'{0, 0, 0} , '{0, 0, 0} , '{0, 0, 0} }
'{'{9, 1, 4} , '{1, 8, 2} , '{7, 4, 3} }
queue '{sum:14, row_index:0}
  
  
endmodule
