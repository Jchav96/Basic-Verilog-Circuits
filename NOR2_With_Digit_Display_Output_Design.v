`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/15/2024 04:08:50 PM
// Design Name: 
// Module Name: NOR2_With_Digit_Display_Output_Design
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


module NOR2_With_Digit_Display_Output_Design(
    input a,
    input b,
    output [6:0] seg,
    output [3:0] an
    );
//NOR2 LOGIC
wire y;
assign y = ~(a+b);   
// 7 segment display module
reg [6:0] segment_pattern;  // the signal pattern will have 7 bits
always @(*) begin
    if(y == 1'b0) begin
        segment_pattern = 7'b1000000; // Display "0"
     end else begin
        segment_pattern = 7'b1111001; // Display "1"
    end
end

// connect the pattern to the output
assign seg = segment_pattern;
// enable the last 7 segment display only (leftmost)
assign an = 4'b0111;
    
    
endmodule
