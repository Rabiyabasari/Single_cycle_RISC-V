module alu(a,b,alucontrol,result,z,n,v,c);

input [31:0] a,b;
input[2:0] alucontrol;

output [31:0] result;
output z,n,v,c;

wire [31:0] a_and_b,a_or_b, not_b,mux_1,sum,mux_2,slt;
wire cout;

assign a_and_b=a&b;
assign a_or_b=a|b;
assign not_b=~b;

assign mux_1=(alucontrol[0]==1'b0)?b:not_b;
assign {cout,sum}=a+mux_1+alucontrol[0];
assign mux_2=(alucontrol[2:0]==3'b000)?sum:
             (alucontrol[2:0]==3'b001)?sum:
             (alucontrol[2:0]==3'b010)?a_and_b:
             (alucontrol[2:0]==3'b011)?a_or_b:
             (alucontrol[2:0]==3'b101)?slt:32'h00000000;
assign result=mux_2;

//flags
assign z=&(~result);
assign n=result[31];
assign c=(cout&(~alucontrol[1]));
assign v=(~alucontrol[1])&(a[31]^sum[31])&(~(a[31]^b[31]^alucontrol[0]));

//zero extention
assign slt={31'b0000000000000000000000000000000,sum[31]};


endmodule

