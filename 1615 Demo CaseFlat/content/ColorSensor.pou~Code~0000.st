// Figure out RGB and Intensity values from datastream

// Do some bitwise math to grab the individual variables from the smashed together process data variable
rRatioRed   := ((TO_UINT(ROL(SHL(ColorSensIn,36),12)))/4096.0)*100;
rRatioGreen := ((TO_UINT(SHR(SHL(ColorSensIn,24),52)))/4096.0)*100;
rRatioBlue  := ((TO_UINT(SHR(SHL(ColorSensIn,12),52)))/4096.0)*100;
rEnergy     := ((TO_UINT(SHR(ColorSensIn,52)))/4096.0)*100;

// Do something with the ratio values to get usable color information
