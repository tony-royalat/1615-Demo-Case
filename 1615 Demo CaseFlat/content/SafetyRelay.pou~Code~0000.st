// Program to handle PSR-MC42 safety relay behavior

// Enable / Disable via IO-Link
IF PSR_Enable = TRUE THEN
    PSRIOLOutput := 2#00000001_00000000_00000000_00000000_00000000_00000000_00000000_00000000;
ELSE
    PSRIOLOutput := 2#00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000;
END_IF

// Left pushbutton indicator logic
IF Pushbutton2 = TRUE OR HMI_Reset = TRUE THEN
    Reset_PSRMC42 := TRUE;
    Pushbutton2Red := TRUE;
    Pushbutton2Green := TRUE;
    Pushbutton2Blue := TRUE;
ELSE
    Reset_PSRMC42 := FALSE;
    IF Alarm_PSRMC42 = TRUE THEN
        Pushbutton2Red := TRUE;
        Pushbutton2Green := FALSE;
        Pushbutton2Blue := FALSE;        
    ELSE
        Pushbutton2Red := FALSE;
        Pushbutton2Green := TRUE;
        Pushbutton2Blue := FALSE;
    END_IF
END_IF


// EStop indicator logic
IF EStop1 = TRUE THEN
    // Solid Red
    EStop1Indicator := TRUE;
ELSE
    // If EStop is not tripped and safety relay is tripped - Flashing Red
    IF EStop1 = FALSE & Alarm_PSRMC42 = TRUE THEN
            CASE count OF
	0: //init
		count := count + 1;

	1: // Red
   
		EStop1Indicator := True;		
     
		wait(IN:=TRUE, PT:=T#500ms);
		
		IF wait.Q THEN
			wait(IN:=FALSE);
			count := count + 1;
		END_IF;

  	 2: // Off
   		
   		EStop1Indicator := FALSE;
    	     
     	wait(IN:=TRUE, PT:=T#500ms);
	
		IF wait.Q THEN
			wait(IN:=FALSE);
			count := count + 1;
		END_IF;
   		
		ELSE
		count := 0;

    END_CASE;
        
    ELSE 
        EStop1Indicator := FALSE;
    END_IF
    
END_IF

// Figure out PSR and CT status from IOL process data.

PSR_S0_Status   := TO_BOOL(SHR(SHL(PSRIOLData,7),63));

PSR_S1_Status   := TO_BOOL(SHR(SHL(PSRIOLData,6),63));

PSR_K12_Status  := TO_BOOL(SHR(SHL(PSRIOLData,5),63));

PSR_Error       := TO_INT(SHR(PSRIOLData,60));

CT1_Status      := TO_BOOL(SHR(SHL(PSRIOLData,15),63));

CT2_Status      := TO_BOOL(SHR(SHL(PSRIOLData,23),63));

CT3_Status      := TO_BOOL(SHR(SHL(PSRIOLData,31),63));

// Parse PSR error codes

CASE PSR_Error OF
    
    0: PSR_Error_Text := 'Normal Operation';
    
    1: PSR_Error_Text := 'Internal Error';
    
    2: PSR_Error_Text := 'Incorrect Switch Code';
    
    3: PSR_Error_Text := 'Communications Error';
    
    4: PSR_Error_Text := 'PSR-MC42 Undervoltage';
    
    5: PSR_Error_Text := 'IO-Link Undervoltage';
    
    6: PSR_Error_Text := 'Input Error';
    
    7: PSR_Error_Text := 'System Error';

END_CASE














