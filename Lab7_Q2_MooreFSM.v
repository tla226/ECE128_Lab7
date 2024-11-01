`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2024 01:58:05 PM
// Design Name: 
// Module Name: Lab7_Q2_MooreFSM
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


module Lab7_Q2_MooreFSM(
    input P1,P2,clk, reset, // P1 is 1, p2 is 0
    output reg z
    );
 
parameter S0 = 0 , S1 = 1 , S2 = 2 , S3 = 3, S4 = 4;
reg [2:0] PS,NS ;

    always@(posedge clk or posedge reset)
        begin
            if(reset)
                PS <= S0;   
            else    
                PS <= NS ;
        end             

    always@(*)
        begin 
        case (PS)
        S0 : z = 0;
        S1 : z = 0;
        S2 : z = 0;
        S3 : z = 0;
        S4 : z = 1;
        
        endcase
            case(PS)
              S0 : begin 
                    z = 0 ;
                    if (P1)
                        NS = S1;
                    else 
	                    NS = S0;
                end
                S1 : begin 
                    if (P1)
                        NS = S2;
                    else 
                        NS = S0;
                    end
                S2 : begin 
                      if (P2)
                        NS = S3;
                      else
                        NS = S1;   
                      end 
                S3 : begin 
                       if (P2)
                        NS = S4;
                       else
                        NS = S1;
                     end
                 S4 : begin
                       if (P1)
                        NS = S1;
                       else
                        NS = S0;
                     end   
            endcase
        end
        
/*
always @ (PS) begin
case (PS)
        S0 : z = 0;
        S1 : z = 0;
        S2 : z = 0;
        S3 : z = 0;
        S4 : z = 1;
    endcase
end*/                   
endmodule
