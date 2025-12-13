
//Keys are not continuous
//Memory must grow dynamically
//Efficient lookup/search needed

module associative_arr;
   
  //array declaration
  int a_arr [int];
  int a_arr1 [string];
  
  initial begin
    //   key values
    
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
    
  
    //delete key
    a_arr.delete(8);//delete the key
    $display ("array elements after  :%p",a_arr);
 
    
  end
endmodule

------------output--------------
array elements:'{0x2:3, 0x64:12, 0x7c:15} 
array elements:'{"diwakar":2, "harish":1, "parvathi":4} 
array elements after overwrite :'{0x2:3, 0x5:7, 0x8:4} 
key 8 is exist its value is 4
array elements after  :'{0x2:3, 0x5:7}
