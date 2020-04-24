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
IF InputVoltage <= 24000 THEN
    
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

// Figure out Battery State Of Charge Assuming 23 to 25.4 VDC Battery Voltage
// Also include something to indicate battery charging. If on DC power supply then display battery charging?

BatteryStateOfChargeCalculated := (((25400 - 23000) - (25400 - BatteryVoltage)) / (25400 - 23000)) * 100;


// Calculate Battery Icon Visibility Dependent on State of Charge Percentage
IF UPSonBattery = TRUE THEN
    
    // 100% Icon Visibility
    IF BatteryStateOfChargeCalculated >= 95 THEN
        Battery0Visibility := FALSE;
        Battery10Visibility := FALSE;
        Battery25Visibility := FALSE;
        Battery50Visibility := FALSE;
        Battery75Visibility := FALSE;
        Battery100Visibility := TRUE;
        BatteryChargingVisibility := FALSE;    
    END_IF
    
    // 75% Icon Visibility
    IF (BatteryStateOfChargeCalculated < 95 AND BatteryStateOfChargeCalculated >= 65) THEN
        Battery0Visibility := FALSE;
        Battery10Visibility := FALSE;
        Battery25Visibility := FALSE;
        Battery50Visibility := FALSE;
        Battery75Visibility := TRUE;
        Battery100Visibility := FALSE;
        BatteryChargingVisibility := FALSE;    
    END_IF
    
    // 50% Icon Visibility
    IF (BatteryStateOfChargeCalculated < 65 AND BatteryStateOfChargeCalculated >= 35) THEN
        Battery0Visibility := FALSE;
        Battery10Visibility := FALSE;
        Battery25Visibility := FALSE;
        Battery50Visibility := TRUE;
        Battery75Visibility := FALSE;
        Battery100Visibility := FALSE;
        BatteryChargingVisibility := FALSE;    
    END_IF
    
    // 25% Icon Visibility
    IF (BatteryStateOfChargeCalculated < 35 AND BatteryStateOfChargeCalculated >= 15) THEN
        Battery0Visibility := FALSE;
        Battery10Visibility := FALSE;
        Battery25Visibility := TRUE;
        Battery50Visibility := FALSE;
        Battery75Visibility := FALSE;
        Battery100Visibility := FALSE;
        BatteryChargingVisibility := FALSE;    
    END_IF
    
    // 10% Icon Visibility
    IF (BatteryStateOfChargeCalculated < 15 AND BatteryStateOfChargeCalculated >= 5) THEN
        Battery0Visibility := FALSE;
        Battery10Visibility := TRUE;
        Battery25Visibility := FALSE;
        Battery50Visibility := FALSE;
        Battery75Visibility := FALSE;
        Battery100Visibility := FALSE;
        BatteryChargingVisibility := FALSE;    
    END_IF
    
    // 0% Icon Visibility
    IF BatteryStateOfChargeCalculated < 5 THEN
        Battery0Visibility := TRUE;
        Battery10Visibility := FALSE;
        Battery25Visibility := FALSE;
        Battery50Visibility := FALSE;
        Battery75Visibility := FALSE;
        Battery100Visibility := FALSE;
        BatteryChargingVisibility := FALSE;    
    END_IF    
    
    ELSE
    
    // Battery Charging Icon Visibility
    Battery0Visibility := FALSE;
    Battery10Visibility := FALSE;
    Battery25Visibility := FALSE;
    Battery50Visibility := FALSE;
    Battery75Visibility := FALSE;
    Battery100Visibility := FALSE;
    BatteryChargingVisibility := TRUE;
    
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