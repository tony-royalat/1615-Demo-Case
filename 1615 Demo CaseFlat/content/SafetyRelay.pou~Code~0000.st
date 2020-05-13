// Program to handle PSR-MC42 safety relay behavior

// Left pushbutton indicator logic
IF Pushbutton2 = TRUE THEN
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