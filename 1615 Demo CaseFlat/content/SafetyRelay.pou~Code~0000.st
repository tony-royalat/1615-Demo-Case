// Program to handle PSR-MC42 safety relay behavior

// Left pushbutton indicator logic
IF Pushbutton2 = TRUE THEN
    Reset_PSRMC42 := TRUE;
    Pushbutton2Red := TRUE;
    Pushbutton2Green:= TRUE;
    Pushbutton2Blue:= TRUE;
ELSE
    Reset_PSRMC42 := FALSE;
    IF Alarm_PSRMC42 = TRUE THEN
        Pushbutton2Red := TRUE;
        Pushbutton2Green:= FALSE;
        Pushbutton2Blue:= FALSE;
    ELSE
        Pushbutton2Red := FALSE;
        Pushbutton2Green := TRUE;
        Pushbutton2Blue := FALSE;
    END_IF
END_IF