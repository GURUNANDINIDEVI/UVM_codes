`include "uvm_macros.svh" //SV based used to invke the uvm_macros
import uvm_pkg::*;        //used to involve the classes

module tb;
  initial begin
    int data=100;
    #10;
    $display("HELLO VLSI");
    `uvm_info("Top_tb","HELLO VLSI",UVM_LOW);
    #20;
    `uvm_info("Top_tb",$sformatf("Value of data = %0d",data),UVM_LOW);
  end
endmodule

// Output:
// # KERNEL: HELLO VLSI
// # KERNEL: UVM_INFO /home/runner/testbench.sv(9) @ 10: reporter [Top_tb] HELLO VLSI
// # KERNEL: UVM_INFO /home/runner/testbench.sv(11) @ 30: reporter [Top_tb] Value of data = 100
