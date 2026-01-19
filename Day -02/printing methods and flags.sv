`include "uvm_macros.svh"
import uvm_pkg::*;

class vlsi extends uvm_object;

  // `uvm_object_utils(vlsi)

  function new(string path = "vlsi");
    super.new(path);
  endfunction

  rand bit [7:0] a;
  rand bit [7:0] b;

  `uvm_object_utils_begin(vlsi)
    `uvm_field_int(a, UVM_DEFAULT | UVM_BIN)
    `uvm_field_int(b, UVM_NOPRINT | UVM_BIN)
  `uvm_object_utils_end

endclass


module tb;

  vlsi v;

  initial begin
    v = new("vlsi");
    v.randomize();

    // `uvm_info("Top_tb", $sformatf(" value of object=%0d", v.a), UVM_NONE);

    v.print(uvm_default_tree_printer);
  end

endmodule

// Output:
// # KERNEL: vlsi: (vlsi@335) {
// # KERNEL:   a: 'b1000110 
// # KERNEL: }
