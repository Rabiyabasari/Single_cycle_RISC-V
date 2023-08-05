`include "ALU.v"
`include "control_unit_top.v"
`include "p_c.v" 
`include "instr_mem.v"
`include "pc_adder.v"
`include "register_file.v"
`include "data_mem.v"
`include "sign_extend.v"
`include "mux.v"

module single_cycle_top(clk,rst);

input clk,rst;

wire [31:0] pc_top,rd_instr,rd1_top,
rd2_top,imm_ext_top,aluresult,readdata,pcplus4,srcb,result;
wire regwrite,memwrite,resultsrc,alusrc;
wire [1:0] immsrc;
wire [2:0] alucontrol_top;


p_c p_c1(.pc_next(pcplus4),
         .pc(pc_top),
         .rst(rst),
         .clk(clk));

pc_adder pc_adder1(.a(pc_top),
                   .b(32'd4),
                   .c(pcplus4));

instr_mem instr_mem1(.a(pc_top),
                     .rd(rd_instr),
                     .rst(rst));

reg_file reg_file1(.a1(rd_instr[19:15]),
                   .a2(rd_instr[24:20]),.a3(rd_instr[11:7]),
                   .wd3(result),
                   .we3(regwrite),
                   .clk(clk),
                   .rst(rst),
                   .rd1(rd1_top),
                   .rd2(rd2_top));

sign_extend sign_extend1(.in(rd_instr),
                         .imm_ext(imm_ext_top),
                         .immsrc(immsrc[0]));

mux mux_register_to_alu(.a(rd2_top),
                        .b(imm_ext_top),
                        .s(alusrc),
                        .c(srcb));

alu alu1(.a(rd1_top),
         .b(srcb),
         .alucontrol(alucontrol_top),
         .result(aluresult),
         .z(),.n(),.v(),.c());

control_unit_top control_unit_top1(.op(rd_instr[6:0]),
                                   .regwrite(regwrite),
                                   .immsrc(immsrc),
                                   .alusrc(alusrc),
                                   .memwrite(memwrite),
                                   .resultsrc(resultsrc),
                                   .branch(),
                                   .funct3(rd_instr[14:12]),
                                   .funct7(),
                                   .alucontrol(alucontrol_top));

data_memory data_memory1(.clk(clk),
                         .rst(rst),
                         .we(memwrite),
                         .a(aluresult), 
                         .wd(rd2_top),
                         .rd(readdata));

mux mux_datamem_to_register(.a(aluresult),
                            .b(readdata),
                            .s(resultsrc),
                            .c(result));

endmodule



















