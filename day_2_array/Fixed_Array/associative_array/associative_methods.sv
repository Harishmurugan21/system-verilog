module associative_arr_methods;
  
  //array declaration
  int a_arr [int];
  int a_arr1 [string];
  int key;
  int next;
 
  initial begin
    
    //values initialization
    a_arr[2]=3;
    a_arr[100]=12;
    a_arr[124]=15;
    
    $display ("array elements:%p",a_arr);
    
    a_arr1["harish"]=1;
    a_arr1["diwakar"]=2;
    a_arr1["parvathi"]=4;
    
    $display ("array elements:%p",a_arr1);
    
    
    //overwrite asociative
    a_arr='{2:3,5:7,8:4};
    $display ("array elements after overwrite :%p",a_arr);
    
    //exist method
    if (a_arr.exists(8))//if key exist meand it return 1
      $display ("key 8 is exist its value is %0d",a_arr[8]);
    
    
    //iteration method
    //find first
    
    a_arr.first(key);
    $display("First key = %0d", key);
    $display("First key value = %0d", a_arr[key]);
    
    //find_last key
     a_arr.last(key);
    $display("last key = %0d", key);
    $display("last key value = %0d", a_arr[key]);
    
    //find next
    key=2;
    $display("present key  = %0d", key);
    a_arr.next(key);
    $display("next key = %0d", key);
    $display("next key value = %0d", a_arr[key]);
    
    //size of array
    $display("sixe of array:%0d",a_arr.num());
    
    $display("sum = %0d", a_arr.sum());
    $display("max = %0d", a_arr.max());
    $display("min = %0d", a_arr.min());
    
 
  end
  
endmodule


--------------output----------------
array elements:'{0x2:3, 0x64:12, 0x7c:15} 
array elements:'{"diwakar":2, "harish":1, "parvathi":4} 
array elements after overwrite :'{0x2:3, 0x5:7, 0x8:4} 
key 8 is exist its value is 4
First key = 2
First key value = 3
last key = 8
last key value = 4
present key  = 2
next key = 5
next key value = 7
sixe of array:3
sum = 14
max = -1372994560
min = -1372993824
endmodule
