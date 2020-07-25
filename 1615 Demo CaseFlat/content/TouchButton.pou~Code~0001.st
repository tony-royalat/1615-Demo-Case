// Strip out binary K50 button state from IO-Link data array
K50ButtonState := TO_BOOL(K50IOLData[2]);

// Set colors to green and red and CW animation direction
K50IOLOutput[1]  := 2#00000000; // Not Used
K50IOLOutput[2]  := 2#00000000; // Not Used
K50IOLOutput[3]  := 2#00000001; // Color 2 Intensity (3) - Color 2 (5)
K50IOLOutput[4]  := 2#00000000; // Color 1 Intensity (3) - Color 1 (5)
K50IOLOutput[5]  := 2#00000000; // Sequence Start Location
K50IOLOutput[6]  := 2#00000000; // Dynamic Sequence Value
K50IOLOutput[7]  := 2#00000000; // Not Used
K50IOLOutput[8]  := 2#00000000; // Not Used
K50IOLOutput[9]  := 2#00000001; // Vibration Feedback (2) - Animation Speed (2)


// Cycle through K50 animation patterns
CASE iK50Animation OF
    
    0: (* Off *)
		strK50AnimationText := 'Off';
		K50IOLOutput[10] := 2#00010000; // Animation Pattern (3) - Animation Direction (1) - Animation Sequence (4)

	1: (* Steady *)
		strK50AnimationText := 'Steady';
		K50IOLOutput[10] := 2#00010001;
		
	2: (* Flash *)
		strK50AnimationText := 'Flash';
		K50IOLOutput[10] := 2#00010010;
		
	3: (* Two Color Flash *)
		strK50AnimationText := 'Two Color Flash';
		K50IOLOutput[10] := 2#00010011;

	4: (* 50/50 *)
		strK50AnimationText := '50/50';
		K50IOLOutput[10] := 2#00010100;

	5: (* 50/50 Rotate *)
		strK50AnimationText := '50/50 Rotate';
		K50IOLOutput[10] := 2#00010101;
		
	6: (* Chase *)
		strK50AnimationText := 'Chase';
		K50IOLOutput[10] := 2#00010110;
		
	7: (* Intensity Sweep *)
		strK50AnimationText := 'Intensity Sweep';
		K50IOLOutput[10] := 2#00010111;

	8: (* Color Sweep *)
		strK50AnimationText := 'Color Sweep';
		K50IOLOutput[10] := 2#00011000;
		
	9: iK50Animation := 0;
		
END_CASE