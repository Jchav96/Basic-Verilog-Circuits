`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/14/2024 04:57:02 PM
// Design Name: 
// Module Name: Inverter_Digit_Display_Output
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


module Inverter_Digit_Display_Output(
    input wire sw0, // the switch will act as an input for the inverter
    output [6:0] seg, // the seven segment display will shown the output for the inverter
    output [3:0] an // the digit on the display will be part of the output for the inverter
    );
    
// Inversion Logic
wire y;
assign y = ~sw0;
// 7 segment display module
reg [6:0] segment_pattern; // segment pattern will have 7 bits....
// the following HDL code makes its commands execute sequentially
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
