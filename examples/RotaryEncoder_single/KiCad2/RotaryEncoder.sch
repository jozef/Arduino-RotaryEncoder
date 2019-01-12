EESchema Schematic File Version 4
LIBS:RotaryEncoder-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Rotary Encoder example1.1"
Date "2019-01-11"
Rev ""
Comp "https://meon.eu/190111"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RotaryEncoder-rescue:CP C1
U 1 1 5C311BB8
P 4400 3800
F 0 "C1" H 4425 3900 50  0000 L CNN
F 1 "0.1ųF" H 4425 3700 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 4438 3650 50  0001 C CNN
F 3 "" H 4400 3800 50  0000 C CNN
	1    4400 3800
	1    0    0    -1  
$EndComp
$Comp
L RotaryEncoder-rescue:R R1
U 1 1 5C31DB67
P 5400 2500
F 0 "R1" V 5480 2500 50  0000 C CNN
F 1 "10k" V 5400 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5330 2500 50  0001 C CNN
F 3 "" H 5400 2500 50  0000 C CNN
	1    5400 2500
	0    -1   -1   0   
$EndComp
$Comp
L RotaryEncoder-rescue:CP C2
U 1 1 5C31E0BD
P 4650 3800
F 0 "C2" H 4675 3900 50  0000 L CNN
F 1 "0.1ųF" H 4675 3700 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 4688 3650 50  0001 C CNN
F 3 "" H 4650 3800 50  0000 C CNN
	1    4650 3800
	1    0    0    -1  
$EndComp
$Comp
L RotaryEncoder-rescue:CP C3
U 1 1 5C31E0E8
P 4900 3800
F 0 "C3" H 4925 3900 50  0000 L CNN
F 1 "0.1ųF" H 4925 3700 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 4938 3650 50  0001 C CNN
F 3 "" H 4900 3800 50  0000 C CNN
	1    4900 3800
	1    0    0    -1  
$EndComp
Text Notes 3250 3150 0    60   ~ 0
GND
Text Notes 3250 3050 0    60   ~ 0
SW
Text Notes 3250 2950 0    60   ~ 0
B/2
Text Notes 3250 2850 0    60   ~ 0
A/1
$Comp
L Device:Rotary_Encoder_Switch SW1
U 1 1 5C33AF9B
P 7100 2850
F 0 "SW1" H 7100 3217 50  0000 C CNN
F 1 "Rotary Encoder Switch" H 7100 3126 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 6950 3010 50  0001 C CNN
F 3 "~" H 7100 3110 50  0001 C CNN
	1    7100 2850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U1
U 1 1 5C3A5EA4
P 3850 2400
F 0 "U1" H 3850 2083 50  0000 C CNN
F 1 "74HC14" H 3850 2174 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3850 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 3850 2400 50  0001 C CNN
	1    3850 2400
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74HC14 U1
U 2 1 5C3A61C7
P 3850 2950
F 0 "U1" H 3850 2633 50  0000 C CNN
F 1 "74HC14" H 3850 2724 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3850 2950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 3850 2950 50  0001 C CNN
	2    3850 2950
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74HC14 U1
U 3 1 5C3A7B5D
P 3850 3500
F 0 "U1" H 3850 3183 50  0000 C CNN
F 1 "74HC14" H 3850 3274 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3850 3500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 3850 3500 50  0001 C CNN
	3    3850 3500
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74HC14 U1
U 7 1 5C3A92B6
P 4750 1200
F 0 "U1" H 4980 1246 50  0000 L CNN
F 1 "74HC14" H 4980 1155 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4750 1200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 4750 1200 50  0001 C CNN
	7    4750 1200
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J1
U 1 1 5C3A9878
P 3100 2950
F 0 "J1" H 3100 3250 50  0000 C CNN
F 1 "Conn_01x05" H 3020 3276 50  0001 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Horizontal" H 3100 2950 50  0001 C CNN
F 3 "~" H 3100 2950 50  0001 C CNN
	1    3100 2950
	-1   0    0    -1  
$EndComp
$Comp
L RotaryEncoder-rescue:R R33
U 1 1 5C3AE103
P 6400 1550
F 0 "R33" V 6480 1550 50  0000 C CNN
F 1 "10k" V 6400 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6330 1550 50  0001 C CNN
F 3 "" H 6400 1550 50  0000 C CNN
	1    6400 1550
	1    0    0    -1  
$EndComp
$Comp
L RotaryEncoder-rescue:R R11
U 1 1 5C3B1756
P 5900 1550
F 0 "R11" V 5980 1550 50  0000 C CNN
F 1 "10k" V 5900 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5830 1550 50  0001 C CNN
F 3 "" H 5900 1550 50  0000 C CNN
	1    5900 1550
	1    0    0    -1  
$EndComp
$Comp
L RotaryEncoder-rescue:R R22
U 1 1 5C3B1796
P 6150 1550
F 0 "R22" V 6230 1550 50  0000 C CNN
F 1 "10k" V 6150 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6080 1550 50  0001 C CNN
F 3 "" H 6150 1550 50  0000 C CNN
	1    6150 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1200 5400 1000
$Comp
L power:VCC #PWR0103
U 1 1 5C3B30D7
P 5400 1000
F 0 "#PWR0103" H 5400 850 50  0001 C CNN
F 1 "VCC" H 5417 1173 50  0000 C CNN
F 2 "" H 5400 1000 50  0001 C CNN
F 3 "" H 5400 1000 50  0001 C CNN
	1    5400 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1200 6400 1400
Wire Wire Line
	6150 1400 6150 1200
Connection ~ 6150 1200
Wire Wire Line
	6150 1200 6400 1200
Wire Wire Line
	5900 1400 5900 1200
Connection ~ 5900 1200
Wire Wire Line
	5900 1200 6150 1200
$Comp
L power:GND #PWR0101
U 1 1 5C3CA846
P 4250 1350
F 0 "#PWR0101" H 4250 1100 50  0001 C CNN
F 1 "GND" H 4255 1177 50  0000 C CNN
F 2 "" H 4250 1350 50  0001 C CNN
F 3 "" H 4250 1350 50  0001 C CNN
	1    4250 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1200 4250 1350
$Comp
L Diode:1N4148 D1
U 1 1 5C3CE4B0
P 5400 2300
F 0 "D1" H 5400 2516 50  0000 C CNN
F 1 "1N4148" H 5400 2425 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5400 2125 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 5400 2300 50  0001 C CNN
	1    5400 2300
	1    0    0    -1  
$EndComp
$Comp
L RotaryEncoder-rescue:R R3
U 1 1 5C3AA681
P 5400 3600
F 0 "R3" V 5480 3600 50  0000 C CNN
F 1 "10k" V 5400 3600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5330 3600 50  0001 C CNN
F 3 "" H 5400 3600 50  0000 C CNN
	1    5400 3600
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D3
U 1 1 5C3AA687
P 5400 3400
F 0 "D3" H 5400 3616 50  0000 C CNN
F 1 "1N4148" H 5400 3525 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5400 3225 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 5400 3400 50  0001 C CNN
	1    5400 3400
	1    0    0    -1  
$EndComp
$Comp
L RotaryEncoder-rescue:R R2
U 1 1 5C3AFF43
P 5400 3050
F 0 "R2" V 5480 3050 50  0000 C CNN
F 1 "10k" V 5400 3050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5330 3050 50  0001 C CNN
F 3 "" H 5400 3050 50  0000 C CNN
	1    5400 3050
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D2
U 1 1 5C3AFF49
P 5400 2850
F 0 "D2" H 5400 3066 50  0000 C CNN
F 1 "1N4148" H 5400 2975 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5400 2675 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 5400 2850 50  0001 C CNN
	1    5400 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2300 5250 2400
Wire Wire Line
	5250 2850 5250 2950
Wire Wire Line
	5250 3400 5250 3500
Wire Wire Line
	5550 3400 5550 3500
Wire Wire Line
	5550 2300 5550 2400
Wire Wire Line
	5550 2850 5550 2950
Wire Wire Line
	5400 1200 5900 1200
Wire Wire Line
	3550 2950 3300 2950
Wire Wire Line
	3550 2400 3550 2850
Wire Wire Line
	3550 2850 3300 2850
Wire Wire Line
	3550 3500 3550 3050
Wire Wire Line
	3550 3050 3300 3050
Connection ~ 5250 2400
Wire Wire Line
	5250 2400 5250 2500
Connection ~ 5250 2950
Wire Wire Line
	5250 2950 5250 3050
Connection ~ 5250 3500
Wire Wire Line
	5250 3500 5250 3600
Wire Wire Line
	5550 2400 5900 2400
Connection ~ 5550 2400
Wire Wire Line
	5550 2400 5550 2500
Wire Wire Line
	5550 3500 6400 3500
Connection ~ 5550 3500
Wire Wire Line
	5550 3500 5550 3600
Wire Wire Line
	6650 2400 6650 2750
Wire Wire Line
	6650 2750 6800 2750
Wire Wire Line
	7400 3500 7400 2950
Wire Wire Line
	5550 2950 6150 2950
Connection ~ 5550 2950
Wire Wire Line
	5550 2950 5550 3050
Wire Wire Line
	7400 2750 7500 2750
Wire Wire Line
	7500 2750 7500 4000
Wire Wire Line
	6800 2850 6750 2850
Wire Wire Line
	6750 2850 6750 4000
Connection ~ 6750 4000
Wire Wire Line
	6750 4000 7500 4000
Wire Wire Line
	6400 1700 6400 3500
Connection ~ 6400 3500
Wire Wire Line
	6400 3500 7400 3500
Wire Wire Line
	5900 1700 5900 2400
Connection ~ 5900 2400
Wire Wire Line
	5900 2400 6650 2400
Wire Wire Line
	6150 1700 6150 2950
Connection ~ 6150 2950
Wire Wire Line
	6150 2950 6800 2950
Wire Wire Line
	3300 3150 3300 4000
Wire Wire Line
	5250 1200 5400 1200
Connection ~ 5400 1200
Text Notes 3250 2750 0    60   ~ 0
VCC
Wire Wire Line
	3300 2750 3300 1900
Wire Wire Line
	3300 1900 5400 1900
Wire Wire Line
	5400 1900 5400 1200
$Comp
L power:GND #PWR0102
U 1 1 5C3CF4CF
P 5400 4200
F 0 "#PWR0102" H 5400 3950 50  0001 C CNN
F 1 "GND" H 5405 4027 50  0000 C CNN
F 2 "" H 5400 4200 50  0001 C CNN
F 3 "" H 5400 4200 50  0001 C CNN
	1    5400 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4200 5400 4000
Connection ~ 5400 4000
Wire Wire Line
	5400 4000 6750 4000
Wire Wire Line
	3300 4000 4400 4000
Wire Wire Line
	4150 2950 4650 2950
Wire Wire Line
	4150 2400 4400 2400
Wire Wire Line
	4400 3650 4400 2400
Connection ~ 4400 2400
Wire Wire Line
	4400 2400 5250 2400
Wire Wire Line
	4400 3950 4400 4000
Connection ~ 4400 4000
Wire Wire Line
	4400 4000 4650 4000
Wire Wire Line
	4650 3950 4650 4000
Connection ~ 4650 4000
Wire Wire Line
	4650 4000 4900 4000
Wire Wire Line
	4650 3650 4650 2950
Connection ~ 4650 2950
Wire Wire Line
	4650 2950 5250 2950
Wire Wire Line
	4150 3500 4900 3500
Wire Wire Line
	4900 3650 4900 3500
Connection ~ 4900 3500
Wire Wire Line
	4900 3500 5250 3500
Wire Wire Line
	4900 3950 4900 4000
Connection ~ 4900 4000
Wire Wire Line
	4900 4000 5400 4000
$EndSCHEMATC