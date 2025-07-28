`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 02:51:16
// Design Name: 
// Module Name: ALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU #(parameter WIDTH=8)(
input [WIDTH-1:0] a,b,
input [1:0] opcode,
output reg [WIDTH-1:0] result
);
always @(*)
begin
case(opcode)
    2'b00: result =a+b;
    2'b01: result =a-b;
    2'b10: result =a&b;
    2'b11: result =a|b;
    default result=0;
    endcase
end
endmodule
