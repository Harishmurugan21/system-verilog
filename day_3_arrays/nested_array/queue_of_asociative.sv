module q_aso;

int q_as [$][int];
  int as [int];
  
  
  initial begin
    
    q_as[0][21]=21;
    q_as[0][31]=11;
    //update an asociative array to q_as array
    as[21]=23; 
    as[24]=24;
    q_as.push_back(as);
  
    $display ("%p",q_as);
 
  end
endmodule
