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

// Figure out Battery State Of Charge Assuming 3-ish Hour Runtime (bad assumption... I know)

BatteryStateOfCharge := (TO_REAL(TimeToShutdown)/10500.0)*100.0;

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

// Build string for PSR error message display
PSRErrorDisplay := CONCAT('Status: ', PSR_Error_Text);

// Turn motor starter on and off with IO-Link data
// Enable / Disable via IO-Link
IF ELR_Enable = TRUE THEN
    ELRIOLOutput := 2#00000000_00000001_00000000_00000000_00000000_00000000_00000000_00000000;
ELSE
    ELRIOLOutput := 2#00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000;
END_IF

// Motor starter input data
ELR_Enable_Signal := TO_BOOL(SHR(SHL(ELRIOLInput,60),63));

ELR_Forward := TO_BOOL(SHR(SHL(ELRIOLInput,62),63));

ELR_Error := TO_BOOL(SHR(SHL(ELRIOLInput,63),63));

IF ELR_Error = TRUE THEN
    
    ELR_Enable := FALSE;
    
END_IF

// QS18 PhotoEye Trigger from IO-Link Data
QS18Sense := TO_BOOL(SHR(SHL(QS18IOLInput,31),31));

// QS18 Emitter Enable / Disable
IF QS18EmitterEnable = TRUE THEN
    QS18IOLOutput := 2#00000000_00000000_00000000_00000000;
ELSE
    QS18IOLOutput := 2#00000001_00000000_00000000_00000000;
END_IF

// CBMC Circuit Breaker Data

CBMC_CH1Status := TO_BOOL(SHR(SHL(CBMCIOLInput,0),63));

CBMC_CH2Status := TO_BOOL(SHR(SHL(CBMCIOLInput,1),63));

CBMC_CH3Status := TO_BOOL(SHR(SHL(CBMCIOLInput,2),63));

CBMC_CH4Status := TO_BOOL(SHR(SHL(CBMCIOLInput,3),63));

CBMC_CH1Setpoint := TO_INT(SHR(SHL(CBMCIOLInput,8),60));

CBMC_CH2Setpoint := TO_INT(SHR(SHL(CBMCIOLInput,12),60));

CBMC_CH3Setpoint := TO_INT(SHR(SHL(CBMCIOLInput,16),60));

CBMC_CH4Setpoint := TO_INT(SHR(SHL(CBMCIOLInput,20),60));

CBMC_CH1Current := (TO_INT(SHR(SHL(CBMCIOLInput,24),56))/10.0);

CBMC_CH2Current := (TO_INT(SHR(SHL(CBMCIOLInput,32),56))/10.0);

CBMC_CH3Current := (TO_INT(SHR(SHL(CBMCIOLInput,40),56))/10.0);

CBMC_CH4Current := (TO_INT(SHR(SHL(CBMCIOLInput,48),56))/10.0);

CBMC_CH1Display := CONCAT('CH1: (', TO_STRING(CBMC_CH1Setpoint, '{0}'), ' A) / ', TO_STRING(CBMC_CH1Current, '{0:f2}'), 'A');

CBMC_CH2Display := CONCAT('CH2: (', TO_STRING(CBMC_CH2Setpoint, '{0}'), ' A) / ', TO_STRING(CBMC_CH2Current, '{0:f2}'), 'A');

CBMC_CH3Display := CONCAT('CH3: (', TO_STRING(CBMC_CH3Setpoint, '{0}'), ' A) / ', TO_STRING(CBMC_CH3Current, '{0:f2}'), 'A');

CBMC_CH4Display := CONCAT('CH4: (', TO_STRING(CBMC_CH4Setpoint, '{0}'), ' A) / ', TO_STRING(CBMC_CH4Current, '{0:f2}'), 'A');

// CBMC CH3 Circuit Breaker Setpoint Adjust

CASE CBMC_CH3Setpoint_Out OF
    
    1: CBMCIOLOutput  := 2#10001111_01000011_00010011_00000000_00000000_00000000_00000000_00000000;
    
    2: CBMCIOLOutput  := 2#10001111_01000011_00100011_00000000_00000000_00000000_00000000_00000000;
    
    3: CBMCIOLOutput  := 2#10001111_01000011_00110011_00000000_00000000_00000000_00000000_00000000;
    
    4: CBMCIOLOutput  := 2#10001111_01000011_01000011_00000000_00000000_00000000_00000000_00000000;
    
    5: CBMCIOLOutput  := 2#10001111_01000011_01010011_00000000_00000000_00000000_00000000_00000000;
    
    6: CBMCIOLOutput  := 2#10001111_01000011_01100011_00000000_00000000_00000000_00000000_00000000;
    
    7: CBMCIOLOutput  := 2#10001111_01000011_01110011_00000000_00000000_00000000_00000000_00000000;
    
    8: CBMCIOLOutput  := 2#10001111_01000011_10000011_00000000_00000000_00000000_00000000_00000000;
    
    9: CBMCIOLOutput  := 2#10001111_01000011_10010011_00000000_00000000_00000000_00000000_00000000;
    
    10: CBMCIOLOutput := 2#10001111_01000011_10100011_00000000_00000000_00000000_00000000_00000000;
    
    11: CBMC_CH3Setpoint_Out := 1;

END_CASE