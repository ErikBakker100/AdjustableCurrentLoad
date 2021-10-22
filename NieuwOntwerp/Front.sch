EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "Control_Panel"
Date "2021-01-28"
Rev "V0.9"
Comp ""
Comment1 "Control Panel"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Display2:SSD1306 U?
U 1 1 6036A568
P 6600 1150
AR Path="/6036A568" Ref="U?"  Part="1" 
AR Path="/60357CC4/6036A568" Ref="U8"  Part="1" 
F 0 "U8" H 6778 896 50  0000 L CNN
F 1 "SSD1306" H 6778 805 50  0000 L CNN
F 2 "Display2:SSD1306" H 6600 1150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 6600 1150 50  0001 C CNN
	1    6600 1150
	1    0    0    -1  
$EndComp
Text Notes 5950 1000 0    50   ~ 0
Display
Wire Wire Line
	6350 1200 6350 1400
Wire Wire Line
	6350 1400 6400 1400
Wire Wire Line
	6100 1300 6400 1300
Text Notes 6300 1800 0    50   ~ 0
Address 0x3C
$Comp
L power:VDC #PWR040
U 1 1 6036B830
P 2650 1200
F 0 "#PWR040" H 2650 1100 50  0001 C CNN
F 1 "VDC" H 2665 1373 50  0000 C CNN
F 2 "" H 2650 1200 50  0001 C CNN
F 3 "" H 2650 1200 50  0001 C CNN
	1    2650 1200
	1    0    0    -1  
$EndComp
$Comp
L power:VDC #PWR047
U 1 1 6036C1FE
P 6350 1200
F 0 "#PWR047" H 6350 1100 50  0001 C CNN
F 1 "VDC" H 6365 1373 50  0000 C CNN
F 2 "" H 6350 1200 50  0001 C CNN
F 3 "" H 6350 1200 50  0001 C CNN
	1    6350 1200
	1    0    0    -1  
$EndComp
$Comp
L power:VDC #PWR036
U 1 1 6036C807
P 1100 1550
F 0 "#PWR036" H 1100 1450 50  0001 C CNN
F 1 "VDC" H 1115 1723 50  0000 C CNN
F 2 "" H 1100 1550 50  0001 C CNN
F 3 "" H 1100 1550 50  0001 C CNN
	1    1100 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR037
U 1 1 6036D122
P 1100 1650
F 0 "#PWR037" H 1100 1400 50  0001 C CNN
F 1 "GNDA" H 1105 1477 50  0000 C CNN
F 2 "" H 1100 1650 50  0001 C CNN
F 3 "" H 1100 1650 50  0001 C CNN
	1    1100 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR041
U 1 1 6036FA54
P 2650 2600
F 0 "#PWR041" H 2650 2350 50  0001 C CNN
F 1 "GNDA" H 2655 2427 50  0000 C CNN
F 2 "" H 2650 2600 50  0001 C CNN
F 3 "" H 2650 2600 50  0001 C CNN
	1    2650 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR046
U 1 1 6037058D
P 6100 1300
F 0 "#PWR046" H 6100 1050 50  0001 C CNN
F 1 "GNDA" H 6105 1127 50  0000 C CNN
F 2 "" H 6100 1300 50  0001 C CNN
F 3 "" H 6100 1300 50  0001 C CNN
	1    6100 1300
	1    0    0    -1  
$EndComp
Text Label 6250 1500 0    50   ~ 0
SCL
Text Label 6250 1600 0    50   ~ 0
SDA
Wire Wire Line
	6400 1600 6250 1600
Wire Wire Line
	6400 1500 6250 1500
$Comp
L Mechanical:MountingHole_Pad H5
U 1 1 60390B9C
P 6050 2700
F 0 "H5" H 6150 2703 50  0000 L CNN
F 1 "MountingHole_Pad" H 6150 2658 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 6050 2700 50  0001 C CNN
F 3 "~" H 6050 2700 50  0001 C CNN
	1    6050 2700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H6
U 1 1 603912AF
P 6350 2700
F 0 "H6" H 6450 2703 50  0000 L CNN
F 1 "MountingHole_Pad" H 6450 2658 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 6350 2700 50  0001 C CNN
F 3 "~" H 6350 2700 50  0001 C CNN
	1    6350 2700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H7
U 1 1 6039162A
P 6650 2700
F 0 "H7" H 6750 2703 50  0000 L CNN
F 1 "MountingHole_Pad" H 6750 2658 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 6650 2700 50  0001 C CNN
F 3 "~" H 6650 2700 50  0001 C CNN
	1    6650 2700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H8
U 1 1 603918A9
P 6950 2700
F 0 "H8" H 7050 2703 50  0000 L CNN
F 1 "MountingHole_Pad" H 7050 2658 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 6950 2700 50  0001 C CNN
F 3 "~" H 6950 2700 50  0001 C CNN
	1    6950 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2800 6350 2800
Connection ~ 6350 2800
Connection ~ 6650 2800
Wire Wire Line
	6650 2800 6950 2800
$Comp
L Device:C C?
U 1 1 603AE37C
P 1150 2700
AR Path="/603AE37C" Ref="C?"  Part="1" 
AR Path="/60357CC4/603AE37C" Ref="C11"  Part="1" 
F 0 "C11" H 1100 2600 50  0000 R CNN
F 1 "100n" H 1100 2800 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1188 2550 50  0001 C CNN
F 3 "~" H 1150 2700 50  0001 C CNN
	1    1150 2700
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 603B01CD
P 1450 2700
AR Path="/603B01CD" Ref="C?"  Part="1" 
AR Path="/60357CC4/603B01CD" Ref="C12"  Part="1" 
F 0 "C12" H 1400 2600 50  0000 R CNN
F 1 "100n" H 1400 2800 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1488 2550 50  0001 C CNN
F 3 "~" H 1450 2700 50  0001 C CNN
	1    1450 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	1150 2550 1300 2550
Wire Wire Line
	1150 2850 1300 2850
$Comp
L power:GNDA #PWR045
U 1 1 603B47D0
P 1300 2850
F 0 "#PWR045" H 1300 2600 50  0001 C CNN
F 1 "GNDA" H 1305 2677 50  0000 C CNN
F 2 "" H 1300 2850 50  0001 C CNN
F 3 "" H 1300 2850 50  0001 C CNN
	1    1300 2850
	1    0    0    -1  
$EndComp
Connection ~ 1300 2850
Wire Wire Line
	1300 2850 1450 2850
$Comp
L power:VDC #PWR044
U 1 1 603B4CE2
P 1300 2550
F 0 "#PWR044" H 1300 2450 50  0001 C CNN
F 1 "VDC" H 1315 2723 50  0000 C CNN
F 2 "" H 1300 2550 50  0001 C CNN
F 3 "" H 1300 2550 50  0001 C CNN
	1    1300 2550
	1    0    0    -1  
$EndComp
Connection ~ 1300 2550
Wire Wire Line
	1300 2550 1450 2550
Wire Notes Line
	5900 900  7350 900 
Wire Notes Line
	7350 900  7350 2350
Wire Notes Line
	7350 2350 5900 2350
Wire Notes Line
	5900 2350 5900 900 
Text Notes 1900 1250 0    50   ~ 0
Address 0x40
$Comp
L Device:R R?
U 1 1 601A616F
P 1900 2150
AR Path="/601A616F" Ref="R?"  Part="1" 
AR Path="/60357CC4/601A616F" Ref="R38"  Part="1" 
F 0 "R38" H 1900 2300 50  0000 L CNN
F 1 "10k" V 1900 2050 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1830 2150 50  0001 C CNN
F 3 "~" H 1900 2150 50  0001 C CNN
	1    1900 2150
	1    0    0    -1  
$EndComp
Connection ~ 1900 2300
Wire Wire Line
	1900 2300 2150 2300
$Comp
L power:VDC #PWR038
U 1 1 601A692E
P 1900 2000
F 0 "#PWR038" H 1900 1900 50  0001 C CNN
F 1 "VDC" H 1915 2173 50  0000 C CNN
F 2 "" H 1900 2000 50  0001 C CNN
F 3 "" H 1900 2000 50  0001 C CNN
	1    1900 2000
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 6033F9D7
P 1150 2550
AR Path="/6033F9D7" Ref="#FLG?"  Part="1" 
AR Path="/60357CC4/6033F9D7" Ref="#FLG01"  Part="1" 
F 0 "#FLG01" H 1150 2625 50  0001 C CNN
F 1 "PWR_FLAG" H 1150 2723 50  0001 C CNN
F 2 "" H 1150 2550 50  0001 C CNN
F 3 "~" H 1150 2550 50  0001 C CNN
	1    1150 2550
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 6034DC71
P 1150 2850
AR Path="/6034DC71" Ref="#FLG?"  Part="1" 
AR Path="/60357CC4/6034DC71" Ref="#FLG02"  Part="1" 
F 0 "#FLG02" H 1150 2925 50  0001 C CNN
F 1 "PWR_FLAG" H 1150 3023 50  0001 C CNN
F 2 "" H 1150 2850 50  0001 C CNN
F 3 "~" H 1150 2850 50  0001 C CNN
	1    1150 2850
	-1   0    0    1   
$EndComp
Connection ~ 1150 2850
$Comp
L power:GNDA #PWR039
U 1 1 6034E277
P 2150 2000
F 0 "#PWR039" H 2150 1750 50  0001 C CNN
F 1 "GNDA" H 2155 1827 50  0000 C CNN
F 2 "" H 2150 2000 50  0001 C CNN
F 3 "" H 2150 2000 50  0001 C CNN
	1    2150 2000
	1    0    0    -1  
$EndComp
Connection ~ 1150 2550
Wire Notes Line
	900  900  900  3200
Wire Notes Line
	900  3200 5650 3200
Wire Notes Line
	5650 3200 5650 900 
Wire Notes Line
	5650 900  900  900 
Text Notes 950  1000 0    50   ~ 0
Front
Text Notes 5950 2550 0    50   ~ 0
Mounting
Wire Notes Line
	5900 2450 7250 2450
Wire Notes Line
	7250 2450 7250 3050
Wire Notes Line
	7250 3050 5900 3050
Wire Notes Line
	5900 3050 5900 2450
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 607060D3
P 8750 1400
AR Path="/607060D3" Ref="J?"  Part="1" 
AR Path="/60357CC4/607060D3" Ref="J6"  Part="1" 
F 0 "J6" H 8668 1617 50  0000 C CNN
F 1 "Conn_01x02" H 8668 1526 50  0000 C CNN
F 2 "Connector2:JST_XH_B2B-XH-AM_1x02_P2.50mm_Vertical" H 8750 1400 50  0001 C CNN
F 3 "~" H 8750 1400 50  0001 C CNN
	1    8750 1400
	-1   0    0    -1  
$EndComp
Text GLabel 8950 1400 2    50   Input ~ 0
LOAD
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 607060E0
P 9400 1450
AR Path="/607060E0" Ref="J?"  Part="1" 
AR Path="/60357CC4/607060E0" Ref="J9"  Part="1" 
F 0 "J9" H 9400 1250 50  0000 C CNN
F 1 "Conn_01x02" H 9500 1250 50  0001 C CNN
F 2 "Connector2:JST_XH_B3B-XH-AM_1x03_P2.50mm_Vertical" H 9400 1450 50  0001 C CNN
F 3 "~" H 9400 1450 50  0001 C CNN
	1    9400 1450
	-1   0    0    -1  
$EndComp
Text Notes 9250 1200 0    50   ~ 0
230V AC
Wire Wire Line
	9700 1450 9700 1600
Wire Wire Line
	9600 1350 9800 1350
Wire Wire Line
	9600 1550 9800 1550
Wire Wire Line
	9600 1450 9700 1450
Wire Notes Line
	8550 900  10300 900 
Wire Notes Line
	10300 900  10300 2050
Wire Notes Line
	10300 2050 8550 2050
Wire Notes Line
	8550 2050 8550 900 
Text Notes 8600 1000 0    50   ~ 0
Connections to case
Text GLabel 9800 1350 2    50   Input ~ 0
LINE
Text GLabel 9800 1550 2    50   Input ~ 0
NEUTRAL
$Comp
L power:Earth #PWR?
U 1 1 607060F2
P 9700 1600
AR Path="/607060F2" Ref="#PWR?"  Part="1" 
AR Path="/60357CC4/607060F2" Ref="#PWR052"  Part="1" 
F 0 "#PWR052" H 9700 1350 50  0001 C CNN
F 1 "Earth" H 9700 1450 50  0001 C CNN
F 2 "" H 9700 1600 50  0001 C CNN
F 3 "~" H 9700 1600 50  0001 C CNN
	1    9700 1600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x09_Male J5
U 1 1 608A7010
P 3500 1900
F 0 "J5" H 3650 2550 50  0000 C CNN
F 1 "Conn_01x09_Male" H 3500 2450 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x09_P2.54mm_Vertical" H 3500 1900 50  0001 C CNN
F 3 "~" H 3500 1900 50  0001 C CNN
	1    3500 1900
	-1   0    0    -1  
$EndComp
NoConn ~ 3300 2300
$Comp
L power:GND #PWR0103
U 1 1 60A05EBE
P 8950 1500
F 0 "#PWR0103" H 8950 1250 50  0001 C CNN
F 1 "GND" H 8955 1327 50  0000 C CNN
F 2 "" H 8950 1500 50  0001 C CNN
F 3 "" H 8950 1500 50  0001 C CNN
	1    8950 1500
	1    0    0    -1  
$EndComp
Connection ~ 2150 2000
Wire Wire Line
	2150 1900 2150 2000
Wire Wire Line
	2150 1800 2150 1900
Connection ~ 2150 1900
$Comp
L Interface_Expansion:PCF8574 U?
U 1 1 6035A425
P 2650 1900
AR Path="/6035A425" Ref="U?"  Part="1" 
AR Path="/60357CC4/6035A425" Ref="U7"  Part="1" 
F 0 "U7" H 2650 1950 50  0000 C CNN
F 1 "PCF8574" H 2650 2050 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 2650 1900 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/PCF8574_PCF8574A.pdf" H 2650 1900 50  0001 C CNN
	1    2650 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1500 3300 1500
Wire Wire Line
	3150 1600 3300 1600
Wire Wire Line
	3150 1700 3300 1700
Wire Wire Line
	3150 1800 3300 1800
Wire Wire Line
	3150 1900 3300 1900
Wire Wire Line
	3150 2000 3300 2000
Wire Wire Line
	3150 2100 3300 2100
Wire Wire Line
	3150 2200 3300 2200
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 6160983A
P 1500 1550
AR Path="/6160983A" Ref="J?"  Part="1" 
AR Path="/60357CC4/6160983A" Ref="J3"  Part="1" 
F 0 "J3" H 1550 1350 50  0000 C CNN
F 1 "Din_02x03" H 1550 1750 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x03_P2.54mm_Vertical" H 1500 1550 50  0001 C CNN
F 3 "~" H 1500 1550 50  0001 C CNN
	1    1500 1550
	-1   0    0    -1  
$EndComp
NoConn ~ 1200 1450
Wire Wire Line
	1100 1550 1200 1550
Wire Wire Line
	1100 1650 1200 1650
Wire Wire Line
	1700 1450 2000 1450
Wire Wire Line
	2000 1450 2000 1600
Wire Wire Line
	2000 1600 2150 1600
Wire Wire Line
	1700 1550 2100 1550
Wire Wire Line
	2100 1550 2100 1500
Wire Wire Line
	2100 1500 2150 1500
Wire Wire Line
	1700 1650 1700 2300
Wire Wire Line
	1700 2300 1900 2300
Text Label 1750 1550 0    50   ~ 0
SCL
Text Label 1750 1450 0    50   ~ 0
SDA
Wire Wire Line
	6500 2800 6650 2800
Wire Wire Line
	6350 2800 6500 2800
Connection ~ 6500 2800
$Comp
L power:GNDA #PWR048
U 1 1 60391EC2
P 6500 2800
F 0 "#PWR048" H 6500 2550 50  0001 C CNN
F 1 "GNDA" H 6505 2627 50  0000 C CNN
F 2 "" H 6500 2800 50  0001 C CNN
F 3 "" H 6500 2800 50  0001 C CNN
	1    6500 2800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
