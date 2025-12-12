module dynamic_array_multidimension;
  
  //2D unpacked dynamic array each element with 32 bit signed int type
  int d_arr [][];
  int sum;
  int maximum [$];
  
  int sum;
  
  initial begin
    
    //allocation
    d_arr=new[4];  //4 rows
    
    foreach (d_arr[i])
      d_arr[i]=new[4];   //4 coloumn for each rows
    
    foreach (d_arr[i])
      foreach(d_arr[j])
        d_arr[i][j]=$urandom_range(10,1);
    
    
    $display ("d_arr before initialize values %p",d_arr);
    $display ("size of d_arr:%0d",d_arr.size());
    
    // row sum
    sum=d_arr[1].sum();
    $display ("%0d",sum);
    
    
    //total element sum
    foreach (d_arr[i])
      sum+=d_arr[i].sum();
    $display ("%0d,",sum);
    
    
    //array resizing
    d_arr=new[6] (d_arr);
   // d_arr[0]=new[7](d_arr[0]);
    $display ("array after resizing:%p",d_arr);

    
    for (int i=4;i<d_arr.size();i++)begin
      d_arr[i]=new[4];
    end
      $display ("%p",d_arr);
   
    d_arr[4][2]=2;
     $display ("%p",d_arr);
    foreach(d_arr[i])
    d_arr[i].sort();
    $display ("array after sorting=%p",d_arr);
    
 
  end
endmodule



----------output------------------

d_arr before initialize values '{'{9, 1, 4, 1} , '{8, 2, 7, 4} , '{3, 8, 2, 1} , '{9, 6, 8, 1} }
size of d_arr:4
21
95,
array after resizing:'{'{9, 1, 4, 1} , '{8, 2, 7, 4} , '{3, 8, 2, 1} , '{9, 6, 8, 1} , '{}, '{}}
'{'{9, 1, 4, 1} , '{8, 2, 7, 4} , '{3, 8, 2, 1} , '{9, 6, 8, 1} , '{0, 0, 0, 0} , '{0, 0, 0, 0} }
'{'{9, 1, 4, 1} , '{8, 2, 7, 4} , '{3, 8, 2, 1} , '{9, 6, 8, 1} , '{0, 0, 2, 0} , '{0, 0, 0, 0} }
array after sorting='{'{1, 1, 4, 9} , '{2, 4, 7, 8} , '{1, 2, 3, 8} , '{1, 6, 8, 9} , '{0, 0, 0, 2} , '{0, 0, 0, 0} }
