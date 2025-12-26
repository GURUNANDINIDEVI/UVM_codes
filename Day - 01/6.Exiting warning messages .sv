`include "uvm_macros.svh" //SV based used to invke the uvm_macros
import uvm_pkg::*;        //used to involve the classes

 module tb;
  initial begin
    uvm_top.set_report_severity_action(UVM_WARNING,UVM_EXIT);
    `uvm_info("Top_tb","Info Message",UVM_NONE);
    `uvm_error("Top_tb","Error Message");
    `uvm_warning("Top_tb","Warning Message");
  end
  endmodule

// Output:
// # KERNEL: ASDB file was created in location /home/runner/dataset.asdb
// # KERNEL: UVM_INFO /home/runner/testbench.sv(7) @ 0: reporter [Top_tb] Info Message
// # KERNEL: UVM_ERROR /home/runner/testbench.sv(8) @ 0: reporter [Top_tb] Error Message
// # KERNEL: UVM_INFO /home/build/vlib1/vlib/uvm-1.2/src/base/uvm_report_server.svh(869) @ 0: reporter [UVM/REPORT/SERVER] 
// # KERNEL: --- UVM Report Summary ---
// # KERNEL: 
// # KERNEL: ** Report counts by severity
// # KERNEL: UVM_INFO :    2
// # KERNEL: UVM_WARNING :    1
// # KERNEL: UVM_ERROR :    1
// # KERNEL: UVM_FATAL :    0
// # KERNEL: ** Report counts by id
// # KERNEL: [Top_tb]     3
// # KERNEL: [UVM/RELNOTES]     1
// # KERNEL: 
//# RUNTIME: Info: RUNTIME_0068 uvm_root.svh (135): $finish called.
