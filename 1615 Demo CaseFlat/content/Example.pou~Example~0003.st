
CASE iState OF 

	0: (* Wait for start of example program *)
		iIndex := 0;
		IF xStart = TRUE THEN
			iState := 1;
		END_IF;

	1: (* Reset state *)
		(* Initial value of iteration *)
		iIteration					:= 0;
		(* Max value of iteration *)
		iIterationMax				:= 1;
		(* Activation of function block *)
		udtExample.xActivate		:= FALSE;
		(* Reset of function block *)
		udtExample.xReset			:= FALSE;
		(* Status bit for the evaluation of a valid Profinet connection *)
		udtExample.xPNIO_Data_Valid	:= TRUE;
		(* An IO-Link service is read with a positive edge *)
		udtExample.xTrigger			:= FALSE;
		(* Write instruction *)
		udtExample.xRead_Write		:= TRUE; 
		(* Port number on which to read *)
		udtExample.iPort			:= 3;
		(* Index of IOL object to be accessed to *)
		udtExample.wIndex			:= TO_WORD(INT#84); (* Article number *)
		(* Subindex of IOL object to be accessed to *)
		udtExample.bSubIndex		:= TO_BYTE(INT#1);
		(* Number of bytes to be written *)
		udtExample.iWriteLength		:= 1;

		IF udtExample.xActive = FALSE THEN
			iState := 10;
		END_IF;

	10:
		(* Activating of function block and starting read instruction *)
		udtExample.xActivate	:= TRUE;
		udtExample.xTrigger		:= TRUE;
		(* If all conditions are met...*)
		IF (
			udtExample.xActive = TRUE
			AND udtExample.xDone = TRUE
			AND udtExample.xBusy = FALSE
			AND udtExample.xError = FALSE
			AND udtExample.wDiagCode = WORD#16#8000
			AND udtExample.dwAddDiagCode = DWORD#16#00000000
		(*...then copy elementary data types from a byte stream to a variable *)
		) THEN
			// Get data from read array
			
			// Put data into write array
			udtExample.arrIOL_WriteData[1] := TO_BYTE(INT#5);
			
			// Reset trigger
			udtExample.xTrigger := FALSE;
			
			iState 					    := 100;
		END_IF;

END_CASE;

