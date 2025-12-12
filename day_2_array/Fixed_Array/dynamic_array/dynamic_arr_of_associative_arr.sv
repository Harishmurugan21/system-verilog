module array;
  // Create an associative array with key of type string and value of type int
  // for each index in a dynamic array
  int fruits [] [string];

  initial begin
    // Create a dynamic array with size 2
    fruits = new [2];

    // Initialize the associative array inside each dynamic array index
    fruits [0] = '{ "apple" : 1, "grape" : 2 };
    fruits [1] = '{ "melon" : 3, "cherry" : 4 };
    
    fruits [1] ["grape"]=3;
    foreach(fruits[i])
    $display("%p",fruits[i]);
    
    
  end
endmodule



-----------output-----------------

'{"apple":1, "grape":2} 
'{"cherry":4, "grape":3, "melon":3} 
