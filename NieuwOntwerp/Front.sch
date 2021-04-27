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
L Interface_Expansion:PCF8574 U?
U 1 1 6035A425
P 2650 1900
AR Path="/6035A425" Ref="U?"  Part="1" 
AR Path="/60357CC4/6035A425" Ref="U9"  Part="1" 
F 0 "U9" H 2650 1950 50  0000 C CNN
F 1 "PCF8574" H 2650 2050 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 2650 1900 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/PCF8574_PCF8574A.pdf" H 2650 1900 50  0001 C CNN
	1    2650 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6035A437
P 3300 1350
AR Path="/6035A437" Ref="R?"  Part="1" 
AR Path="/60357CC4/6035A437" Ref="R24"  Part="1" 
F 0 "R24" H 3350 1400 50  0000 L CNN
F 1 "10k" V 3300 1250 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3230 1350 50  0001 C CNN
F 3 "~" H 3300 1350 50  0001 C CNN
	1    3300 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6035A43D
P 3550 1350
AR Path="/6035A43D" Ref="R?"  Part="1" 
AR Path="/60357CC4/6035A43D" Ref="R25"  Part="1" 
F 0 "R25" H 3600 1400 50  0000 L CNN
F 1 "10k" V 3550 1250 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3480 1350 50  0001 C CNN
F 3 "~" H 3550 1350 50  0001 C CNN
	1    3550 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6035A443
P 3800 1350
AR Path="/6035A443" Ref="R?"  Part="1" 
AR Path="/60357CC4/6035A443" Ref="R26"  Part="1" 
F 0 "R26" H 3850 1400 50  0000 L CNN
F 1 "10k" V 3800 1250 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3730 1350 50  0001 C CNN
F 3 "~" H 3800 1350 50  0001 C CNN
	1    3800 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6035A449
P 4050 1350
AR Path="/6035A449" Ref="R?"  Part="1" 
AR Path="/60357CC4/6035A449" Ref="R27"  Part="1" 
F 0 "R27" H 4100 1400 50  0000 L CNN
F 1 "10k" V 4050 1250 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3980 1350 50  0001 C CNN
F 3 "~" H 4050 1350 50  0001 C CNN
	1    4050 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1500 3300 1500
Wire Wire Line
	3200 2400 3200 2350
Wire Wire Line
	3200 2350 3300 2350
Wire Wire Line
	3400 2350 3400 2400
Wire Wire Line
	3300 2350 3300 1500
Connection ~ 3300 2350
Wire Wire Line
	3300 2350 3400 2350
Connection ~ 3300 1500
Wire Wire Line
	3450 2350 3550 2350
Wire Wire Line
	3650 2350 3650 2400
Wire Wire Line
	3550 2350 3550 1600
Connection ~ 3550 2350
Wire Wire Line
	3550 2350 3650 2350
$Comp
L OPL-Switch:Switch_6x6_SMT SW?
U 1 1 6035A462
P 3800 2550
AR Path="/6035A462" Ref="SW?"  Part="1" 
AR Path="/60357CC4/6035A462" Ref="SW3"  Part="1" 
F 0 "SW3" H 3800 2250 50  0000 C CNN
F 1 "Switch_6x6_SMT" H 3800 2790 50  0001 C CNN
F 2 "Switches:SW_SPST_6x6x20mm_SMD" V 3800 2550 50  0001 C CNN
F 3 "~" V 3800 2550 50  0001 C CNN
	1    3800 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2350 3800 2350
Wire Wire Line
	3900 2350 3900 2400
Wire Wire Line
	3800 2350 3800 1700
Connection ~ 3800 2350
Wire Wire Line
	3800 2350 3900 2350
$Comp
L OPL-Switch:Switch_6x6_SMT SW?
U 1 1 6035A46D
P 4050 2550
AR Path="/6035A46D" Ref="SW?"  Part="1" 
AR Path="/60357CC4/6035A46D" Ref="SW4"  Part="1" 
F 0 "SW4" H 4050 2250 50  0000 C CNN
F 1 "Switch_6x6_SMT" H 4050 2790 50  0001 C CNN
F 2 "Switches:SW_SPST_6x6x20mm_SMD" V 4050 2550 50  0001 C CNN
F 3 "~" V 4050 2550 50  0001 C CNN
	1    4050 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2350 4050 2350
Wire Wire Line
	4150 2350 4150 2400
Wire Wire Line
	4050 2350 4050 1800
Connection ~ 4050 2350
Wire Wire Line
	4050 2350 4150 2350
Connection ~ 3550 1600
Wire Wire Line
	3550 1600 3550 1500
Connection ~ 3800 1700
Wire Wire Line
	3800 1700 3800 1500
Connection ~ 4050 1800
Wire Wire Line
	4050 1800 4050 1500
Wire Wire Line
	3150 1800 4050 1800
Wire Wire Line
	3150 1700 3800 1700
Wire Wire Line
	3150 1600 3550 1600
Wire Wire Line
	3450 2350 3450 2400
Wire Wire Line
	3700 2350 3700 2400
Wire Wire Line
	3950 2350 3950 2400
Wire Wire Line
	3200 2800 3400 2800
Wire Wire Line
	4150 2800 4150 2700
Wire Wire Line
	3950 2700 3950 2800
Connection ~ 3950 2800
Wire Wire Line
	3950 2800 4150 2800
Wire Wire Line
	3900 2700 3900 2800
Connection ~ 3900 2800
Wire Wire Line
	3900 2800 3950 2800
Wire Wire Line
	3700 2700 3700 2800
Connection ~ 3700 2800
Wire Wire Line
	3700 2800 3900 2800
Connection ~ 3650 2800
Wire Wire Line
	3650 2800 3700 2800
Connection ~ 3450 2800
Wire Wire Line
	3450 2800 3650 2800
Connection ~ 3400 2800
Wire Wire Line
	3400 2800 3450 2800
Wire Wire Line
	3100 2800 3200 2800
Connection ~ 3200 2800
Wire Wire Line
	3300 1200 3550 1200
Connection ~ 3550 1200
Wire Wire Line
	3550 1200 3800 1200
Connection ~ 3800 1200
Wire Wire Line
	3800 1200 4050 1200
$Comp
L Device:R R28
U 1 1 6035A4B3
P 4300 2650
F 0 "R28" H 4370 2696 50  0000 L CNN
F 1 "270R" V 4300 2550 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4230 2650 50  0001 C CNN
F 3 "~" H 4300 2650 50  0001 C CNN
	1    4300 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D5
U 1 1 6035A4B9
P 4300 2350
F 0 "D5" V 4339 2233 50  0000 R CNN
F 1 "LED" V 4248 2233 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4300 2350 50  0001 C CNN
F 3 "~" H 4300 2350 50  0001 C CNN
	1    4300 2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R29
U 1 1 6035A4BF
P 4650 2650
F 0 "R29" H 4720 2696 50  0000 L CNN
F 1 "270R" V 4650 2550 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4580 2650 50  0001 C CNN
F 3 "~" H 4650 2650 50  0001 C CNN
	1    4650 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D6
U 1 1 6035A4C5
P 4650 2350
F 0 "D6" V 4689 2233 50  0000 R CNN
F 1 "LED" V 4598 2233 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4650 2350 50  0001 C CNN
F 3 "~" H 4650 2350 50  0001 C CNN
	1    4650 2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R30
U 1 1 6035A4CB
P 5000 2650
F 0 "R30" H 5070 2696 50  0000 L CNN
F 1 "270R" V 5000 2550 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4930 2650 50  0001 C CNN
F 3 "~" H 5000 2650 50  0001 C CNN
	1    5000 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D7
U 1 1 6035A4D1
P 5000 2350
F 0 "D7" V 5039 2233 50  0000 R CNN
F 1 "LED" V 4948 2233 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5000 2350 50  0001 C CNN
F 3 "~" H 5000 2350 50  0001 C CNN
	1    5000 2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R31
U 1 1 6035A4D7
P 5350 2650
F 0 "R31" H 5420 2696 50  0000 L CNN
F 1 "270R" V 5350 2550 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5280 2650 50  0001 C CNN
F 3 "~" H 5350 2650 50  0001 C CNN
	1    5350 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D8
U 1 1 6035A4DD
P 5350 2350
F 0 "D8" V 5389 2233 50  0000 R CNN
F 1 "LED" V 5298 2233 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5350 2350 50  0001 C CNN
F 3 "~" H 5350 2350 50  0001 C CNN
	1    5350 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 2200 4300 2200
Wire Wire Line
	3150 2100 4650 2100
Wire Wire Line
	4650 2100 4650 2200
Wire Wire Line
	3150 2000 5000 2000
Wire Wire Line
	5000 2000 5000 2200
Wire Wire Line
	3150 1900 5350 1900
Wire Wire Line
	5350 1900 5350 2200
Wire Wire Line
	4150 2800 4300 2800
Connection ~ 4150 2800
Connection ~ 4300 2800
Wire Wire Line
	4300 2800 4650 2800
Connection ~ 4650 2800
Wire Wire Line
	4650 2800 5000 2800
Connection ~ 5000 2800
Wire Wire Line
	5000 2800 5350 2800
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 6035A4F2
P 1100 1550
AR Path="/6035A4F2" Ref="J?"  Part="1" 
AR Path="/60357CC4/6035A4F2" Ref="J6"  Part="1" 
F 0 "J6" H 1018 1867 50  0000 C CNN
F 1 "Conn_01x03" H 1018 1776 50  0000 C CNN
F 2 "Connector2:JST_XH_B3B-XH-AM_1x03_P2.50mm_Vertical" H 1100 1550 50  0001 C CNN
F 3 "~" H 1100 1550 50  0001 C CNN
	1    1100 1550
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 6035A4F8
P 1100 2000
AR Path="/6035A4F8" Ref="J?"  Part="1" 
AR Path="/60357CC4/6035A4F8" Ref="J7"  Part="1" 
F 0 "J7" H 1018 2217 50  0000 C CNN
F 1 "Conn_01x02" H 1018 2126 50  0000 C CNN
F 2 "Connector2:JST_XH_B2B-XH-AM_1x02_P2.50mm_Vertical" H 1100 2000 50  0001 C CNN
F 3 "~" H 1100 2000 50  0001 C CNN
	1    1100 2000
	-1   0    0    -1  
$EndComp
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
Address 0x78
$Comp
L power:VDC #PWR029
U 1 1 6036B830
P 2650 1200
F 0 "#PWR029" H 2650 1100 50  0001 C CNN
F 1 "VDC" H 2665 1373 50  0000 C CNN
F 2 "" H 2650 1200 50  0001 C CNN
F 3 "" H 2650 1200 50  0001 C CNN
	1    2650 1200
	1    0    0    -1  
$EndComp
$Comp
L power:VDC #PWR033
U 1 1 6036BD27
P 3300 1200
F 0 "#PWR033" H 3300 1100 50  0001 C CNN
F 1 "VDC" H 3315 1373 50  0000 C CNN
F 2 "" H 3300 1200 50  0001 C CNN
F 3 "" H 3300 1200 50  0001 C CNN
	1    3300 1200
	1    0    0    -1  
$EndComp
Connection ~ 3300 1200
$Comp
L power:VDC #PWR026
U 1 1 6036C1FE
P 6350 1200
F 0 "#PWR026" H 6350 1100 50  0001 C CNN
F 1 "VDC" H 6365 1373 50  0000 C CNN
F 2 "" H 6350 1200 50  0001 C CNN
F 3 "" H 6350 1200 50  0001 C CNN
	1    6350 1200
	1    0    0    -1  
$EndComp
$Comp
L power:VDC #PWR027
U 1 1 6036C807
P 1550 2000
F 0 "#PWR027" H 1550 1900 50  0001 C CNN
F 1 "VDC" H 1565 2173 50  0000 C CNN
F 2 "" H 1550 2000 50  0001 C CNN
F 3 "" H 1550 2000 50  0001 C CNN
	1    1550 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR028
U 1 1 6036D122
P 1550 2100
F 0 "#PWR028" H 1550 1850 50  0001 C CNN
F 1 "GNDA" H 1555 1927 50  0000 C CNN
F 2 "" H 1550 2100 50  0001 C CNN
F 3 "" H 1550 2100 50  0001 C CNN
	1    1550 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2000 1550 2000
Wire Wire Line
	1300 2100 1550 2100
$Comp
L power:GNDA #PWR030
U 1 1 6036FA54
P 2650 2600
F 0 "#PWR030" H 2650 2350 50  0001 C CNN
F 1 "GNDA" H 2655 2427 50  0000 C CNN
F 2 "" H 2650 2600 50  0001 C CNN
F 3 "" H 2650 2600 50  0001 C CNN
	1    2650 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR025
U 1 1 6037058D
P 6100 1300
F 0 "#PWR025" H 6100 1050 50  0001 C CNN
F 1 "GNDA" H 6105 1127 50  0000 C CNN
F 2 "" H 6100 1300 50  0001 C CNN
F 3 "" H 6100 1300 50  0001 C CNN
	1    6100 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR031
U 1 1 60370CB6
P 3100 2800
F 0 "#PWR031" H 3100 2550 50  0001 C CNN
F 1 "GNDA" H 3105 2627 50  0000 C CNN
F 2 "" H 3100 2800 50  0001 C CNN
F 3 "" H 3100 2800 50  0001 C CNN
	1    3100 2800
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
Wire Wire Line
	1300 1450 1500 1450
Wire Wire Line
	1300 1650 1500 1650
Wire Wire Line
	2150 1800 2150 1900
Connection ~ 2150 1900
Wire Wire Line
	2150 1900 2150 2000
Wire Wire Line
	1300 1550 1750 1550
Wire Wire Line
	1750 1550 1750 2300
Wire Wire Line
	1750 2300 1900 2300
Wire Wire Line
	1500 1450 1500 1500
Wire Wire Line
	1500 1500 2150 1500
Wire Wire Line
	1500 1600 1500 1650
Wire Wire Line
	1500 1600 2150 1600
Text Label 1350 1450 0    50   ~ 0
SCL
Text Label 1350 1650 0    50   ~ 0
SDA
Text Notes 3250 3100 0    50   ~ 0
UP
Text Notes 3450 3100 0    50   ~ 0
DOWN
Text Notes 3700 3100 0    50   ~ 0
LEFT
Text Notes 3950 3100 0    50   ~ 0
RIGHT
Text Notes 5300 3100 0    50   ~ 0
UP
Text Notes 4900 3100 0    50   ~ 0
DOWN
Text Notes 4600 3100 0    50   ~ 0
LEFT
Text Notes 4250 3100 0    50   ~ 0
RIGHT
$Comp
L Mechanical:MountingHole_Pad H9
U 1 1 60390B9C
P 6050 2700
F 0 "H9" H 6150 2703 50  0000 L CNN
F 1 "MountingHole_Pad" H 6150 2658 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 6050 2700 50  0001 C CNN
F 3 "~" H 6050 2700 50  0001 C CNN
	1    6050 2700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H10
U 1 1 603912AF
P 6350 2700
F 0 "H10" H 6450 2703 50  0000 L CNN
F 1 "MountingHole_Pad" H 6450 2658 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 6350 2700 50  0001 C CNN
F 3 "~" H 6350 2700 50  0001 C CNN
	1    6350 2700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H11
U 1 1 6039162A
P 6650 2700
F 0 "H11" H 6750 2703 50  0000 L CNN
F 1 "MountingHole_Pad" H 6750 2658 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 6650 2700 50  0001 C CNN
F 3 "~" H 6650 2700 50  0001 C CNN
	1    6650 2700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H12
U 1 1 603918A9
P 6950 2700
F 0 "H12" H 7050 2703 50  0000 L CNN
F 1 "MountingHole_Pad" H 7050 2658 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 6950 2700 50  0001 C CNN
F 3 "~" H 6950 2700 50  0001 C CNN
	1    6950 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR032
U 1 1 60391EC2
P 6500 2800
F 0 "#PWR032" H 6500 2550 50  0001 C CNN
F 1 "GNDA" H 6505 2627 50  0000 C CNN
F 2 "" H 6500 2800 50  0001 C CNN
F 3 "" H 6500 2800 50  0001 C CNN
	1    6500 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2800 6350 2800
Connection ~ 6350 2800
Wire Wire Line
	6350 2800 6500 2800
Connection ~ 6500 2800
Wire Wire Line
	6500 2800 6650 2800
Connection ~ 6650 2800
Wire Wire Line
	6650 2800 6950 2800
$Comp
L Device:C C?
U 1 1 603AE37C
P 4900 1300
AR Path="/603AE37C" Ref="C?"  Part="1" 
AR Path="/60357CC4/603AE37C" Ref="C21"  Part="1" 
F 0 "C21" H 4850 1200 50  0000 R CNN
F 1 "100n" H 4850 1400 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4938 1150 50  0001 C CNN
F 3 "~" H 4900 1300 50  0001 C CNN
	1    4900 1300
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 603B01CD
P 5200 1300
AR Path="/603B01CD" Ref="C?"  Part="1" 
AR Path="/60357CC4/603B01CD" Ref="C22"  Part="1" 
F 0 "C22" H 5150 1200 50  0000 R CNN
F 1 "100n" H 5150 1400 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5238 1150 50  0001 C CNN
F 3 "~" H 5200 1300 50  0001 C CNN
	1    5200 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	4900 1150 5050 1150
Wire Wire Line
	4900 1450 5050 1450
$Comp
L power:GNDA #PWR035
U 1 1 603B47D0
P 5050 1450
F 0 "#PWR035" H 5050 1200 50  0001 C CNN
F 1 "GNDA" H 5055 1277 50  0000 C CNN
F 2 "" H 5050 1450 50  0001 C CNN
F 3 "" H 5050 1450 50  0001 C CNN
	1    5050 1450
	1    0    0    -1  
$EndComp
Connection ~ 5050 1450
Wire Wire Line
	5050 1450 5200 1450
$Comp
L power:VDC #PWR034
U 1 1 603B4CE2
P 5050 1150
F 0 "#PWR034" H 5050 1050 50  0001 C CNN
F 1 "VDC" H 5065 1323 50  0000 C CNN
F 2 "" H 5050 1150 50  0001 C CNN
F 3 "" H 5050 1150 50  0001 C CNN
	1    5050 1150
	1    0    0    -1  
$EndComp
Connection ~ 5050 1150
Wire Wire Line
	5050 1150 5200 1150
Wire Notes Line
	5900 900  7350 900 
Wire Notes Line
	7350 900  7350 2350
Wire Notes Line
	7350 2350 5900 2350
Wire Notes Line
	5900 2350 5900 900 
Text Notes 1900 1250 0    50   ~ 0
Address 0x38
$Comp
L Device:R R?
U 1 1 601A616F
P 1900 2150
AR Path="/601A616F" Ref="R?"  Part="1" 
AR Path="/60357CC4/601A616F" Ref="R32"  Part="1" 
F 0 "R32" H 1950 2200 50  0000 L CNN
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
L power:VDC #PWR041
U 1 1 601A692E
P 1900 2000
F 0 "#PWR041" H 1900 1900 50  0001 C CNN
F 1 "VDC" H 1915 2173 50  0000 C CNN
F 2 "" H 1900 2000 50  0001 C CNN
F 3 "" H 1900 2000 50  0001 C CNN
	1    1900 2000
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 6033F9D7
P 4900 1150
AR Path="/6033F9D7" Ref="#FLG?"  Part="1" 
AR Path="/60357CC4/6033F9D7" Ref="#FLG0105"  Part="1" 
F 0 "#FLG0105" H 4900 1225 50  0001 C CNN
F 1 "PWR_FLAG" H 4900 1323 50  0001 C CNN
F 2 "" H 4900 1150 50  0001 C CNN
F 3 "~" H 4900 1150 50  0001 C CNN
	1    4900 1150
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 6034DC71
P 4900 1450
AR Path="/6034DC71" Ref="#FLG?"  Part="1" 
AR Path="/60357CC4/6034DC71" Ref="#FLG0104"  Part="1" 
F 0 "#FLG0104" H 4900 1525 50  0001 C CNN
F 1 "PWR_FLAG" H 4900 1623 50  0001 C CNN
F 2 "" H 4900 1450 50  0001 C CNN
F 3 "~" H 4900 1450 50  0001 C CNN
	1    4900 1450
	-1   0    0    1   
$EndComp
Connection ~ 4900 1450
$Comp
L power:GNDA #PWR0101
U 1 1 6034E277
P 2150 2000
F 0 "#PWR0101" H 2150 1750 50  0001 C CNN
F 1 "GNDA" H 2155 1827 50  0000 C CNN
F 2 "" H 2150 2000 50  0001 C CNN
F 3 "" H 2150 2000 50  0001 C CNN
	1    2150 2000
	1    0    0    -1  
$EndComp
Connection ~ 2150 2000
Wire Wire Line
	3650 2700 3650 2800
Wire Wire Line
	3450 2700 3450 2800
$Comp
L OPL-Switch:Switch_6x6_SMT SW?
U 1 1 6035A457
P 3550 2550
AR Path="/6035A457" Ref="SW?"  Part="1" 
AR Path="/60357CC4/6035A457" Ref="SW2"  Part="1" 
F 0 "SW2" H 3550 2250 50  0000 C CNN
F 1 "Switch_6x6_SMT" H 3550 2790 50  0001 C CNN
F 2 "Switches:SW_SPST_6x6x20mm_SMD" V 3550 2550 50  0001 C CNN
F 3 "~" V 3550 2550 50  0001 C CNN
	1    3550 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2700 3200 2800
Wire Wire Line
	3400 2700 3400 2800
$Comp
L OPL-Switch:Switch_6x6_SMT SW?
U 1 1 6035A431
P 3300 2550
AR Path="/6035A431" Ref="SW?"  Part="1" 
AR Path="/60357CC4/6035A431" Ref="SW1"  Part="1" 
F 0 "SW1" H 3300 2250 50  0000 C CNN
F 1 "Switch_6x6_SMT" H 3300 2790 50  0001 C CNN
F 2 "Switches:SW_SPST_6x6x20mm_SMD" V 3300 2550 50  0001 C CNN
F 3 "~" V 3300 2550 50  0001 C CNN
	1    3300 2550
	1    0    0    -1  
$EndComp
Connection ~ 4900 1150
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
Wire Notes Line
	10000 3450 8550 3450
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
AR Path="/60357CC4/607060D3" Ref="J4"  Part="1" 
F 0 "J4" H 8668 1617 50  0000 C CNN
F 1 "Conn_01x02" H 8668 1526 50  0000 C CNN
F 2 "Connector2:JST_XH_B2B-XH-AM_1x02_P2.50mm_Vertical" H 8750 1400 50  0001 C CNN
F 3 "~" H 8750 1400 50  0001 C CNN
	1    8750 1400
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 607060D9
P 8950 1500
AR Path="/607060D9" Ref="#PWR?"  Part="1" 
AR Path="/60357CC4/607060D9" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 8950 1250 50  0001 C CNN
F 1 "GND" H 8955 1327 50  0000 C CNN
F 2 "" H 8950 1500 50  0001 C CNN
F 3 "" H 8950 1500 50  0001 C CNN
	1    8950 1500
	1    0    0    -1  
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
AR Path="/60357CC4/607060F2" Ref="#PWR046"  Part="1" 
F 0 "#PWR046" H 9700 1350 50  0001 C CNN
F 1 "Earth" H 9700 1450 50  0001 C CNN
F 2 "" H 9700 1600 50  0001 C CNN
F 3 "~" H 9700 1600 50  0001 C CNN
	1    9700 1600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 607060F8
P 8950 2600
AR Path="/607060F8" Ref="J?"  Part="1" 
AR Path="/60357CC4/607060F8" Ref="J5"  Part="1" 
F 0 "J5" H 9150 2600 50  0000 C CNN
F 1 "Conn_01x03" H 8868 2826 50  0000 C CNN
F 2 "Connector2:JST_XH_B3B-XH-AM_1x03_P2.50mm_Vertical" H 8950 2600 50  0001 C CNN
F 3 "~" H 8950 2600 50  0001 C CNN
	1    8950 2600
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 607060FE
P 8950 3050
AR Path="/607060FE" Ref="J?"  Part="1" 
AR Path="/60357CC4/607060FE" Ref="J8"  Part="1" 
F 0 "J8" H 9150 3000 50  0000 C CNN
F 1 "Conn_01x02" H 8868 3176 50  0000 C CNN
F 2 "Connector2:JST_XH_B2B-XH-AM_1x02_P2.50mm_Vertical" H 8950 3050 50  0001 C CNN
F 3 "~" H 8950 3050 50  0001 C CNN
	1    8950 3050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9150 3050 9400 3050
Wire Wire Line
	9150 3150 9400 3150
Wire Wire Line
	9150 2500 9350 2500
Wire Wire Line
	9150 2700 9350 2700
Wire Wire Line
	9150 2600 9600 2600
Text GLabel 9350 2500 2    50   Input ~ 0
SCL
Text GLabel 9350 2700 2    50   Input ~ 0
SDA
$Comp
L power:+3.3V #PWR?
U 1 1 6070610B
P 9400 3050
AR Path="/6070610B" Ref="#PWR?"  Part="1" 
AR Path="/60357CC4/6070610B" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 9400 2900 50  0001 C CNN
F 1 "+3.3V" H 9415 3223 50  0000 C CNN
F 2 "" H 9400 3050 50  0001 C CNN
F 3 "" H 9400 3050 50  0001 C CNN
	1    9400 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60706111
P 9400 3150
AR Path="/60706111" Ref="#PWR?"  Part="1" 
AR Path="/60357CC4/60706111" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 9400 2900 50  0001 C CNN
F 1 "GND" H 9405 2977 50  0000 C CNN
F 2 "" H 9400 3150 50  0001 C CNN
F 3 "" H 9400 3150 50  0001 C CNN
	1    9400 3150
	1    0    0    -1  
$EndComp
Wire Notes Line
	8550 2200 10000 2200
Wire Notes Line
	10000 2200 10000 3450
Wire Notes Line
	8550 3450 8550 2200
Text Notes 8600 2300 0    50   ~ 0
Connectors to Front Panel
Text GLabel 9600 2600 2    50   Input ~ 0
~INT
$Comp
L Connector:Conn_01x09_Male J3
U 1 1 608A7010
P 4850 3950
F 0 "J3" H 4958 4531 50  0000 C CNN
F 1 "Conn_01x09_Male" H 4958 4440 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x09_P2.54mm_Vertical" H 4850 3950 50  0001 C CNN
F 3 "~" H 4850 3950 50  0001 C CNN
	1    4850 3950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
