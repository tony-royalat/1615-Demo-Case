
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
		(* Read instruction *)
		udtExample.xRead_Write		:= TRUE; 
		(* Port number on which to read / write *)
		udtExample.iPort			:= 3;
		(* Index of IOL object to be accessed to *)
		udtExample.wIndex			:= WORD#16#54;
		(* Subindex of IOL object to be accessed to *)
		udtExample.bSubIndex		:= BYTE#1;
		(* Number of bytes to be written *)
		udtExample.iWriteLength		:= 1;

		IF udtExample.xActive = FALSE AND iTemp <> iK50Animation THEN
		    iTemp := iK50Animation;
			iState := 10;
		END_IF;

	10:	(* Activating of function block and starting read / write instruction *)
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
			INT_TO_BUF1.REQ 		:= TRUE;
			INT_TO_BUF1.BUF_OFFS 	:= DINT#0;
			INT_TO_BUF1.BUF_CNT 	:= DINT#4;
			iState 					:= 20;
		END_IF;

	20: (* When copy operation is complete....*)
		IF (
			INT_TO_BUF1.DONE = TRUE
			(*...and strTemp = strRef *)
		) THEN
			(*...then reset udtExample.xTrigger and BUF_TO_STRING.REQ *)
			udtExample.xTrigger := FALSE;
			INT_TO_BUF1.REQ 	:= FALSE;
			(*...and go to next state *)
			iState 				:= 0;
		END_IF;

	//100: (* If iteration is finished then go to next state... *)
	//	IF(iIteration = iIterationMax) THEN
	//		iState		:= 32000;
	//	ELSE
	//		(*...else start next iteration with read of next port number *)
	//		iIteration 	:= iIteration + 1;
	//		iState		:= 10;
	//	END_IF;

	32000: (* End *)
		iState	:= 0; (* Do it all again *)

END_CASE;
