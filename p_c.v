module p_c(pc_next,pc,rst,clk);

input [31:0] pc_next;
input rst,clk;

output reg [31:0] pc;

always @(posedge clk)
begin

if(rst==1'b0)
begin
pc<=32'h00000000;
end

else
begin
pc<=pc_next;
end

end

endmodule


