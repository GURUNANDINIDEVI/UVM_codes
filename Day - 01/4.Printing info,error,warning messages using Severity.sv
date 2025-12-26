`include "uvm_macros.svh" //SV based used to invke the uvm_macros
import uvm_pkg::*;        //used to involve the classes

 module tb;
  initial begin
    
    `uvm_info("Top_tb","Info Message",UVM_NONE);
    `uvm_error("Top_tb","Error Message");
    `uvm_warning("Top_tb","Warning Message");
  end
  endmodule

// Output:
// # KERNEL: UVM_INFO /home/runner/testbench.sv(7) @ 0: reporter [Top_tb] Info Message
// # KERNEL: UVM_ERROR /home/runner/testbench.sv(8) @ 0: reporter [Top_tb] Error Message
// # KERNEL: UVM_WARNING /home/runner/testbench.sv(9) @ 0: reporter [Top_tb] Warning Message
// # KERNEL: Simulation has finished. There are no more test vectors to simulate.
