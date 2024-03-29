module DSP (
	input [17:0] A,B,D,BCIN,
	input [47:0] C,PCIN,
	input [7:0] OPMODE,
	input CLK,CARRYIN,RSTA,RSTB,RSTM,RSTP,RSTC,RSTD,RSTCARRYIN,RSTOPMODE,
	input CEA,CEB,CEM,CEP,CEC,CED,CECARRYIN,CEOPMODE,
	output [17:0] BCOUT,
	output [47:0] PCOUT,P,
	output [35:0]M,
	output CARRYOUT,CARRYOUTF
	);
 /**Output of each BLOCK */  
reg D_reg_output; 
reg B0_reg_output; 
reg A0_reg_output; 
reg C_reg_output; 

    


/*module BLOCK_MUX_DFF #(parameter N = 1) (input [N-1:0]D , CLK, reset,output reg [N-1:0]Q
); */

/******** <  D Reg ********/
BLOCK_MUX_DFF #(.N(18)) D_REG_18 (D , CED , RSTD ,D_reg_output );
/******** < END D Reg ********/



/******** < MUX before the B0 Reg ********/
wire B0_input ;
wire B_SEL;
assign B0_input = B_SEL?BCIN:B;
/******** < ENd of the MUX ********/

/******** <  B0 Reg ********/
BLOCK_MUX_DFF #(.N(18)) B0_REG_18 (B0_input , CEB , RSTB ,B0_reg_output );
/******** <  END B0 Reg ********/


/******** <  A Reg ********/
BLOCK_MUX_DFF #(.N(18)) A0_REG_18 (A , CEA , RSTA ,A0_reg_output );
/******** <  END A Reg ********/


/******** <  C Reg ********/
BLOCK_MUX_DFF #(.N(48)) C_REG_48 (C , CEC , RSTC ,C_reg_output );
/******** <  END C Reg ********/



wire [17:0] w1; //wire oof the mux(opMode4)



always @(posedge CLK ) begin
    if(OPMODE[4])begin //if OPMODE == 1 adder will work
      if(OPMODE[6])  //if OPMODE == 1 SUB will work ( D - B)
    end

    
end



endmodule