module instr_mem(a,rd,rst);

input [31:0] a;
input rst;

output [31:0] rd;

reg [31:0] mem [1023:0];

assign rd=(rst==1'b0)?32'h00000000:mem[a];

initial
begin
//mem[0]=32'hFFC4A303;
//mem[1]=32'h00432383;

//mem[0]=32'h0064A423;
//mem[1]=32'h00B62423;

mem[0]=32'h0062E233;
//$readmemh("memfile.hex",mem);

end

endmodule


