`include "uvm_macros.svh" //SV based used to invke the uvm_macros
import uvm_pkg::*;        //used to involve the classes

 module tb;
  initial begin
    int err_count;
    `uvm_error("Top_tb","Error Message-1");
    `uvm_error("Top_tb","Error Message-2");
    `uvm_error("Top_tb","Error Message-3");
    err_count = uvm_report_server::get_server().get_severity_count(UVM_ERROR);
    `uvm_info("Top_tb",$sformatf("Error Messages = %0d",err_count),UVM_NONE);
  end
  endmodule

// Output:
// # KERNEL: ASDB file was created in location /home/runner/dataset.asdb
// # KERNEL: UVM_ERROR /home/runner/testbench.sv(7) @ 0: reporter [Top_tb] Error Message-1
// # KERNEL: UVM_ERROR /home/runner/testbench.sv(8) @ 0: reporter [Top_tb] Error Message-2
// # KERNEL: UVM_ERROR /home/runner/testbench.sv(9) @ 0: reporter [Top_tb] Error Message-3
// # KERNEL: UVM_INFO /home/runner/testbench.sv(11) @ 0: reporter [Top_tb] Error Messages = 3
// # KERNEL: Simulation has finished. There are no more test vectors to simulate.
