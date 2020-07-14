(* Instances *)

// Buffer to String
BUF_TO_STRING_1(
	DST		:= strTmp, (* Destination variable of standard data type *)
	BUFFER	:= udtExample.arrIOL_ReadData (* Array with received data *)
);

strTmp						:= BUF_TO_STRING_1.DST;
iStatus						:= BUF_TO_STRING_1.STATUS;


// String to Buffer
STRING_TO_BUF1(
    SRC := strWrite,
    BUFFER := udtExample.arrIOL_WriteData (* Array with data to write *)
);

