module q_q;  
  int qq[$][$];   // queue of queue

initial begin
    qq.push_back('{1,2,3});     // first inner queue
    qq.push_back('{10,20});     // second inner queue
    
    $display("%p", qq);
end


  end
endmodule
