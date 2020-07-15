// Convert UPS Byte array to something usable
FOR n := 0 TO 31 BY 1 DO
    UPSDataArray_Int[n] := TO_INT(UPSDataArray[n]);
END_FOR


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

BatteryStateOfCharge := UPSDataArray_Int[16];


// Calculate Battery Icon Visibility Dependent on State of Charge Percentage
IF UPSonBattery = TRUE THEN
    
    // 100% Icon Visibility
    IF BatteryStateOfCharge >= 95 THEN
        Battery0Visibility := FALSE;
        Battery10Visibility := FALSE;
        Battery25Visibility := FALSE;
        Battery50Visibility := FALSE;
        Battery75Visibility := FALSE;
        Battery100Visibility := TRUE;
        BatteryChargingVisibility := FALSE;    
    END_IF
    
    // 75% Icon Visibility
    IF (BatteryStateOfCharge < 95 AND BatteryStateOfCharge >= 65) THEN
        Battery0Visibility := FALSE;
        Battery10Visibility := FALSE;
        Battery25Visibility := FALSE;
        Battery50Visibility := FALSE;
        Battery75Visibility := TRUE;
        Battery100Visibility := FALSE;
        BatteryChargingVisibility := FALSE;    
    END_IF
    
    // 50% Icon Visibility
    IF (BatteryStateOfCharge < 65 AND BatteryStateOfCharge >= 35) THEN
        Battery0Visibility := FALSE;
        Battery10Visibility := FALSE;
        Battery25Visibility := FALSE;
        Battery50Visibility := TRUE;
        Battery75Visibility := FALSE;
        Battery100Visibility := FALSE;
        BatteryChargingVisibility := FALSE;    
    END_IF
    
    // 25% Icon Visibility
    IF (BatteryStateOfCharge < 35 AND BatteryStateOfCharge >= 15) THEN
        Battery0Visibility := FALSE;
        Battery10Visibility := FALSE;
        Battery25Visibility := TRUE;
        Battery50Visibility := FALSE;
        Battery75Visibility := FALSE;
        Battery100Visibility := FALSE;
        BatteryChargingVisibility := FALSE;    
    END_IF
    
    // 10% Icon Visibility
    IF (BatteryStateOfCharge < 15 AND BatteryStateOfCharge >= 5) THEN
        Battery0Visibility := FALSE;
        Battery10Visibility := TRUE;
        Battery25Visibility := FALSE;
        Battery50Visibility := FALSE;
        Battery75Visibility := FALSE;
        Battery100Visibility := FALSE;
        BatteryChargingVisibility := FALSE;    
    END_IF
    
    // 0% Icon Visibility
    IF BatteryStateOfCharge < 5 THEN
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

// START IO-LINK STUFF HERE

// Build string for Device Temperature HMI text display
DeviceTemperatureDisplay := CONCAT('Device Temperature: ', TO_STRING((1.8 * (DeviceTemperature - 273) + 32), '{0:f1}'), ' Deg F');

// Build string for Red Ratio text display
RedRatioDisplay := CONCAT('Red Color Ratio: ', TO_STRING(rRatioRed, '{0:f2}'), '%');

// Build string for Green Ratio text display
GreenRatioDisplay := CONCAT('Green Color Ratio: ', TO_STRING(rRatioGreen, '{0:f2}'), '%');

// Build string for Blue Ratio text display
BlueRatioDisplay := CONCAT('Blue Color Ratio: ', TO_STRING(rRatioBlue, '{0:f2}'), '%');

// Build string for Energy text display
EnergyDisplay := CONCAT('Color Energy: ', TO_STRING(rEnergy, '{0:f2}'), '?');

// Strip out binary K50 button state from IO-Link datastream
K50ButtonState := TO_BOOL(SHR(SHL(K50IOLData,15),15));

// Build string for PSR error message display
PSRErrorDisplay := CONCAT('Status: ', PSR_Error_Text);