// Time To Shutdown Display

// Figure out hour / minute / second
TimeToShutdownHour := TimeToShutdown / 3600;
TimetoShutdownMinute := (TimetoShutdown / 60) - (TimeToShutdownHour * 60);
TimetoShutdownSecond := TimeToShutdown - (TimeToShutdownHour * 3600) - (TimeToShutdownMinute * 60);

// Build string for UPS HMI text display

TimeToShutdownDisplay := CONCAT('Time to Shutdown: ', TO_STRING(TimeToShutdownHour, ''), 'h ',
                                                      TO_STRING(TimeToShutdownMinute, ''), 'm ',
                                                      TO_STRING(TimeToShutdownSecond, ''), 's');

// TTS Display Visibility
IF InputVoltage <= 23500 THEN
    
    TimeToShutdownDisplayVisibility := TRUE;
    
    ELSE
    
    TimeToShutdownDisplayVisibility := FALSE;
    
END_IF

