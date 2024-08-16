`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/14/2024 05:28:39 PM
// Design Name: 
// Module Name: Inverter_With_Digit_Display_Output_Testbench
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


module Inverter_With_Digit_Display_Output_Testbench;
    reg sw0;
    wire [6:0] seg;
    wire [3:0] an;
    
    
// Instantiating the Unit Under Test (UUT)
Inverter uut (
.sw0(sw0),
.seg(seg),
.an(an)
);
initial begin
    // Initializing the inputs
    sw0 = 0;
    // Wait for 100ns for the global reset to finish
    #100;
    // Stimulus process
    sw0 = 0;
    #100;
    sw0 = 1;
    #100;
    sw0 = 0;
    #100;
    sw0 = 1;
    #100;
    // End simulation
    $stop;
end    
endmodule
