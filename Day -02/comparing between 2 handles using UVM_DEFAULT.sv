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
  //`uvm_field_int(b, UVM_NOPRINT | UVM_BIN)
  `uvm_field_int(b, UVM_DEFAULT | UVM_BIN)
  `uvm_object_utils_end

endclass

module tb;
  vlsi v1,v2;
  bit result;
  initial begin
    v1 = new("v1");
    v2 = new("v2");
    v1.randomize();
    v2.randomize();
	v2.a = v1.a;
    v2.b = ~v1.b;
    // `uvm_info("Top_tb", $sformatf(" value of object=%0d", v.a), UVM_NONE);
    result = v2.compare(v1);
    if(result)
      $display("pass");
    else
      $display("fail");
    
    v1.print();
    v2.print();
  end
endmodule

// Output:
// # KERNEL: fail
// # KERNEL: --------------------------------
// # KERNEL: Name  Type      Size  Value     
// # KERNEL: --------------------------------
// # KERNEL: v1    vlsi      -     @335      
// # KERNEL:   a   integral  8     'b1000110 
// # KERNEL:   b   integral  8     'b10100101
// # KERNEL: --------------------------------
// # KERNEL: -------------------------------
// # KERNEL: Name  Type      Size  Value    
// # KERNEL: -------------------------------
// # KERNEL: v2    vlsi      -     @336     
// # KERNEL:   a   integral  8     'b1000110
// # KERNEL:   b   integral  8     'b1011010
// # KERNEL: -------------------------------
