EESchema Schematic File Version 4
LIBS:RotaryEncoder-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Rotary Encoder example1"
Date ""
Rev ""
Comp "http://meon.eu/190108"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RotaryEncoder-rescue:CONN_01X04 P1
U 1 1 5C311AAC
P 3900 3000
F 0 "P1" H 3900 3250 50  0000 C CNN
F 1 "CONN_01X04" V 4000 3000 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 3900 3000 50  0001 C CNN
F 3 "" H 3900 3000 50  0000 C CNN
	1    3900 3000
	-1   0    0    -1  
$EndComp
$Comp
L RotaryEncoder-rescue:CP C1
U 1 1 5C311BB8
P 4400 3250
F 0 "C1" H 4425 3350 50  0000 L CNN
F 1 "0.1ųF" H 4425 3150 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 4438 3100 50  0001 C CNN
F 3 "" H 4400 3250 50  0000 C CNN
	1    4400 3250
	1    0    0    -1  
$EndComp
$Comp
L RotaryEncoder-rescue:R R1
U 1 1 5C31DB67
P 5150 2850
F 0 "R1" V 5230 2850 50  0000 C CNN
F 1 "22k" V 5150 2850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5080 2850 50  0001 C CNN
F 3 "" H 5150 2850 50  0000 C CNN
	1    5150 2850
	0    -1   -1   0   
$EndComp
$Comp
L RotaryEncoder-rescue:R R2
U 1 1 5C31DFB8
P 5150 3050
F 0 "R2" V 5230 3050 50  0000 C CNN
F 1 "22k" V 5150 3050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5080 3050 50  0001 C CNN
F 3 "" H 5150 3050 50  0000 C CNN
	1    5150 3050
	0    -1   -1   0   
$EndComp
$Comp
L RotaryEncoder-rescue:R R3
U 1 1 5C31DFDB
P 5150 2650
F 0 "R3" V 5230 2650 50  0000 C CNN
F 1 "22k" V 5150 2650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5080 2650 50  0001 C CNN
F 3 "" H 5150 2650 50  0000 C CNN
	1    5150 2650
	0    -1   -1   0   
$EndComp
$Comp
L RotaryEncoder-rescue:CP C2
U 1 1 5C31E0BD
P 4650 3250
F 0 "C2" H 4675 3350 50  0000 L CNN
F 1 "0.1ųF" H 4675 3150 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 4688 3100 50  0001 C CNN
F 3 "" H 4650 3250 50  0000 C CNN
	1    4650 3250
	1    0    0    -1  
$EndComp
$Comp
L RotaryEncoder-rescue:CP C3
U 1 1 5C31E0E8
P 4900 3250
F 0 "C3" H 4925 3350 50  0000 L CNN
F 1 "0.1ųF" H 4925 3150 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 4938 3100 50  0001 C CNN
F 3 "" H 4900 3250 50  0000 C CNN
	1    4900 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3150 4100 3400
Wire Wire Line
	4100 3400 4400 3400
Connection ~ 4400 3400
Connection ~ 4650 3400
Wire Wire Line
	6350 3400 6350 3050
Connection ~ 4900 3400
Wire Wire Line
	6350 3050 6150 3050
Wire Wire Line
	6150 2850 6350 2850
Wire Wire Line
	6350 2850 6350 2650
Wire Wire Line
	6350 2650 5300 2650
Wire Wire Line
	4100 3050 4250 3050
Wire Wire Line
	4400 3100 4400 2850
Connection ~ 4400 2850
Wire Wire Line
	4650 3100 4650 2950
Connection ~ 4650 2950
Wire Wire Line
	4900 3100 4900 2650
Connection ~ 4900 2650
Wire Wire Line
	5550 2950 5450 2950
Wire Wire Line
	5450 2950 5450 3400
Connection ~ 5450 3400
Wire Wire Line
	5550 3050 5300 3050
Wire Wire Line
	5000 3050 5000 2950
Wire Wire Line
	5000 2950 4650 2950
Wire Wire Line
	4100 2850 4400 2850
Text Notes 4050 3150 0    60   ~ 0
GND
Text Notes 4050 3050 0    60   ~ 0
BTN
Text Notes 4100 2950 0    60   ~ 0
B
Text Notes 4100 2850 0    60   ~ 0
A
Wire Wire Line
	4250 3050 4250 2650
Wire Wire Line
	4250 2650 4900 2650
Wire Wire Line
	4400 3400 4650 3400
Wire Wire Line
	4650 3400 4900 3400
Wire Wire Line
	4900 3400 5450 3400
Wire Wire Line
	4400 2850 5000 2850
Wire Wire Line
	4650 2950 4100 2950
Wire Wire Line
	4900 2650 5000 2650
Wire Wire Line
	5450 3400 6350 3400
Wire Wire Line
	5300 2850 5550 2850
$Comp
L Device:Rotary_Encoder_Switch SW1
U 1 1 5C33AF9B
P 5850 2950
F 0 "SW1" H 5850 3317 50  0000 C CNN
F 1 "Rotary Encoder Switch" H 5850 3226 50  0000 C CNN
F 2 "" H 5700 3110 50  0001 C CNN
F 3 "~" H 5850 3210 50  0001 C CNN
	1    5850 2950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
