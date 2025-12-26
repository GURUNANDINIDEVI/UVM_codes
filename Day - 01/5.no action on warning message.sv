`include "uvm_macros.svh" //SV based used to invke the uvm_macros
import uvm_pkg::*;        //used to involve the classes

 module tb;
  initial begin
    uvm_top.set_report_severity_action(UVM_WARNING,UVM_NO_ACTION);
    `uvm_info("Top_tb","Info Message",UVM_NONE);
    `uvm_error("Top_tb","Error Message");
    `uvm_warning("Top_tb","Warning Message");
  end
  endmodule

// Output:
// # KERNEL: UVM_INFO /home/runner/testbench.sv(7) @ 0: reporter [Top_tb] Info Message
// # KERNEL: UVM_ERROR /home/runner/testbench.sv(8) @ 0: reporter [Top_tb] Error Message
