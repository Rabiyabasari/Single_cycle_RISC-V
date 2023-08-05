module data_memory(clk,rst,we,a,wd,rd);

input clk,rst,we;
input [31:0] a,wd;

output [31:0] rd;

reg [31:0] data_mem [1023:0];

assign rd=(~rst)?32'h00000000:data_mem[a];

always @(posedge clk)
begin

if(we)
begin
data_mem[a]<=wd;
end

end

initial
 begin
        data_mem[28] = 32'h00000020;
        data_mem[40] = 32'h00000002;
    end

endmodule

