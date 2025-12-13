module aso_arr;
  int aa_array [int];

  initial begin
    int idx;

    // Initialized indices in a mixed order, not 1,2,5,8
    aa_array[5] = 20;
    aa_array[8] = 10;
    aa_array[1] = 50;
    aa_array[2] = 100;

    // Finds the smallest index whose value is greater than the given index
    // Current index is 0, the next smallest value out of 1,2,5,8 is 1
    aa_array.next(idx);
    $display("aa_array[%0d]=%0d", idx, aa_array[idx]);

    // Current index is 1, the next smallest value out of 2,5,8 is 2
    aa_array.next(idx);
    $display("aa_array[%0d]=%0d", idx, aa_array[idx]);

    // Finds the largest index whose value is smaller than the given index
    // Current index is 5, the next largest value out of 1,2 is 2
    idx = 5;
    aa_array.prev(idx);
    $display("aa_array[%0d]=%0d", idx, aa_array[idx]);
  end
endmodule


