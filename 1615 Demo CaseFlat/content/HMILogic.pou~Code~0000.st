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

// UPS Voltage Source Display
UPSOnBattery := TimeToShutdownDisplayVisibility;

IF UPSOnBattery = TRUE THEN
    
    UPSSourceDisplay := 'UPS Source: On Battery';
    
    ELSE
    
    UPSSourceDisplay := 'UPS Source: DC Power Supply';
    
END_IF

// Build string for Input Voltage HMI text display
InputVoltageDisplay := CONCAT('Input Voltage: ', TO_STRING((InputVoltage / 1000.0), '{0:f2}'), ' VDC');

// Build string for Input Current HMI text display
InputCurrentDisplay := CONCAT('Input Current: ', TO_STRING((InputCurrent / 1000.0), '{0:f2}'), ' A');

// Build string for Output Voltage HMI text display
OutputVoltageDisplay := CONCAT('Output Voltage: ', TO_STRING((OutputVoltage / 1000.0), '{0:f2}'), ' VDC');

// Build string for Input Voltage HMI text display
OutputCurrentDisplay := CONCAT('Output Current: ', TO_STRING((OutputCurrent / 1000.0), '{0:f2}'), ' A');

// Build string for Battery Voltage HMI text display
BatteryVoltageDisplay := CONCAT('Battery Voltage: ', TO_STRING((BatteryVoltage / 1000.0), '{0:f2}'), ' VDC');

// Build string for Battery Charging Current HMI text display
BatteryChargingCurrentDisplay := CONCAT('Battery Charging Current: ', TO_STRING((BatteryChargingCurrent / 1000.0), '{0:f2}'), ' A');

// Build string for Battery Temperature HMI text display
BatteryTemperatureDisplay := CONCAT('Battery Temperature: ', TO_STRING((1.8 * (BatteryTemperature - 273) + 32), '{0:f1}'), ' Deg F');

// Build string for Device Temperature HMI text display
DeviceTemperatureDisplay := CONCAT('Device Temperature: ', TO_STRING((1.8 * (DeviceTemperature - 273) + 32), '{0:f1}'), ' Deg F');