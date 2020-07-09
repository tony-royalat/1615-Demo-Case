
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
		udtExample.xRead_Write		:= FALSE; 
		(* Port number on which to read *)
		udtExample.iPort			:= 2;
		(* Index of IOL object to be accessed to *)
		udtExample.wIndex			:= WORD#16#13; (* Article number *)
		(* Subindex of IOL object to be accessed to *)
		udtExample.bSubIndex		:= BYTE#0;
		(* Number of bytes to be written *)
		udtExample.iWriteLength		:= 1;

		IF udtExample.xActive = FALSE THEN
			iState := 10;
		END_IF;

	10:
		IF(iIteration = 0) THEN
			(* AXL E IOL DO8 M12 6P - 2702659 *)		
			udtExample.iPort	:= 1; (* Port number on which to read *)
			strRef := '2702659'; (* Reference value *)
		ELSE
			(* AXL E IOL DI8 M12 6P - 2702658 *)
			udtExample.iPort	:= 2; (* Port number on which to read *)
			strRef := '2702658'; (* Reference value *)
		END_IF;
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
			BUF_TO_STRING_1.REQ 		:= TRUE;
			BUF_TO_STRING_1.BUF_OFFS 	:= DINT#0;
			BUF_TO_STRING_1.BUF_CNT 	:= DINT#7;
			iState 					:= 20;
		END_IF;

	20: (* When copy operation is complete....*)
		IF (
			BUF_TO_STRING_1.DONE = TRUE
			(*...and strTemp = strRef *)
			AND EQ_STRING(strTmp, strRef)
		) THEN
			(*...then reset udtExample.xTrigger and BUF_TO_STRING.REQ *)
			udtExample.xTrigger := FALSE;
			BUF_TO_STRING_1.REQ 	:= FALSE;
			(*...and go to next state *)
			iState 				:= 100;
		END_IF;

	100: (* If iteration is finished then go to next state... *)
		IF(iIteration = iIterationMax) THEN
			iState		:= 32000;
		ELSE
			(*...else start next iteration with read of port number 2 *)
			iIteration 	:= iIteration + 1;
			iState		:= 10;
		END_IF;

	32000: (* End *)
		iState	:= 32000; (* End of demo *)

END_CASE;
