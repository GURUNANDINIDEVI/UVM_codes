`include "uvm_macros.svh" //SV based used to invke the uvm_macros
import uvm_pkg::*;        //used to involve the classes

 module tb;
  initial begin
    int verb;
    verb=uvm_top.get_report_verbosity_level();
    `uvm_info("Verbosity",$sformatf("Default Verbosity level = %0d",verb),UVM_LOW);
  end
  endmodule

// Output:
// # KERNEL: UVM_INFO /home/runner/testbench.sv(8) @ 0: reporter [Verbosity] Default Verbosity level = 200
