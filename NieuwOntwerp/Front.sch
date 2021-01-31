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
P 5100 3950
AR Path="/6035A425" Ref="U?"  Part="1" 
AR Path="/60357CC4/6035A425" Ref="U9"  Part="1" 
F 0 "U9" H 5100 4000 50  0000 C CNN
F 1 "PCF8574" H 5100 4100 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 5100 3950 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/PCF8574_PCF8574A.pdf" H 5100 3950 50  0001 C CNN
	1    5100 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6035A437
P 5750 3400
AR Path="/6035A437" Ref="R?"  Part="1" 
AR Path="/60357CC4/6035A437" Ref="R24"  Part="1" 
F 0 "R24" H 5800 3450 50  0000 L CNN
F 1 "10k" V 5750 3300 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5680 3400 50  0001 C CNN
F 3 "~" H 5750 3400 50  0001 C CNN
	1    5750 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6035A43D
P 6000 3400
AR Path="/6035A43D" Ref="R?"  Part="1" 
AR Path="/60357CC4/6035A43D" Ref="R25"  Part="1" 
F 0 "R25" H 6050 3450 50  0000 L CNN
F 1 "10k" V 6000 3300 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5930 3400 50  0001 C CNN
F 3 "~" H 6000 3400 50  0001 C CNN
	1    6000 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6035A443
P 6250 3400
AR Path="/6035A443" Ref="R?"  Part="1" 
AR Path="/60357CC4/6035A443" Ref="R26"  Part="1" 
F 0 "R26" H 6300 3450 50  0000 L CNN
F 1 "10k" V 6250 3300 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6180 3400 50  0001 C CNN
F 3 "~" H 6250 3400 50  0001 C CNN
	1    6250 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6035A449
P 6500 3400
AR Path="/6035A449" Ref="R?"  Part="1" 
AR Path="/60357CC4/6035A449" Ref="R27"  Part="1" 
F 0 "R27" H 6550 3450 50  0000 L CNN
F 1 "10k" V 6500 3300 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6430 3400 50  0001 C CNN
F 3 "~" H 6500 3400 50  0001 C CNN
	1    6500 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3550 5750 3550
Wire Wire Line
	5650 4450 5650 4400
Wire Wire Line
	5650 4400 5750 4400
Wire Wire Line
	5850 4400 5850 4450
Wire Wire Line
	5750 4400 5750 3550
Connection ~ 5750 4400
Wire Wire Line
	5750 4400 5850 4400
Connection ~ 5750 3550
Wire Wire Line
	5900 4400 6000 4400
Wire Wire Line
	6100 4400 6100 4450
Wire Wire Line
	6000 4400 6000 3650
Connection ~ 6000 4400
Wire Wire Line
	6000 4400 6100 4400
$Comp
L OPL-Switch:Switch_6x6_SMT SW?
U 1 1 6035A462
P 6250 4600
AR Path="/6035A462" Ref="SW?"  Part="1" 
AR Path="/60357CC4/6035A462" Ref="SW3"  Part="1" 
F 0 "SW3" H 6250 4300 50  0000 C CNN
F 1 "Switch_6x6_SMT" H 6250 4840 50  0001 C CNN
F 2 "Switches:SW_SPST_6x6x20mm_SMD" V 6250 4600 50  0001 C CNN
F 3 "~" V 6250 4600 50  0001 C CNN
	1    6250 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4400 6250 4400
Wire Wire Line
	6350 4400 6350 4450
Wire Wire Line
	6250 4400 6250 3750
Connection ~ 6250 4400
Wire Wire Line
	6250 4400 6350 4400
$Comp
L OPL-Switch:Switch_6x6_SMT SW?
U 1 1 6035A46D
P 6500 4600
AR Path="/6035A46D" Ref="SW?"  Part="1" 
AR Path="/60357CC4/6035A46D" Ref="SW4"  Part="1" 
F 0 "SW4" H 6500 4300 50  0000 C CNN
F 1 "Switch_6x6_SMT" H 6500 4840 50  0001 C CNN
F 2 "Switches:SW_SPST_6x6x20mm_SMD" V 6500 4600 50  0001 C CNN
F 3 "~" V 6500 4600 50  0001 C CNN
	1    6500 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4400 6500 4400
Wire Wire Line
	6600 4400 6600 4450
Wire Wire Line
	6500 4400 6500 3850
Connection ~ 6500 4400
Wire Wire Line
	6500 4400 6600 4400
Connection ~ 6000 3650
Wire Wire Line
	6000 3650 6000 3550
Connection ~ 6250 3750
Wire Wire Line
	6250 3750 6250 3550
Connection ~ 6500 3850
Wire Wire Line
	6500 3850 6500 3550
Wire Wire Line
	5600 3850 6500 3850
Wire Wire Line
	5600 3750 6250 3750
Wire Wire Line
	5600 3650 6000 3650
Wire Wire Line
	5900 4400 5900 4450
Wire Wire Line
	6150 4400 6150 4450
Wire Wire Line
	6400 4400 6400 4450
Wire Wire Line
	5650 4850 5850 4850
Wire Wire Line
	6600 4850 6600 4750
Wire Wire Line
	6400 4750 6400 4850
Connection ~ 6400 4850
Wire Wire Line
	6400 4850 6600 4850
Wire Wire Line
	6350 4750 6350 4850
Connection ~ 6350 4850
Wire Wire Line
	6350 4850 6400 4850
Wire Wire Line
	6150 4750 6150 4850
Connection ~ 6150 4850
Wire Wire Line
	6150 4850 6350 4850
Connection ~ 6100 4850
Wire Wire Line
	6100 4850 6150 4850
Connection ~ 5900 4850
Wire Wire Line
	5900 4850 6100 4850
Connection ~ 5850 4850
Wire Wire Line
	5850 4850 5900 4850
Wire Wire Line
	5550 4850 5650 4850
Connection ~ 5650 4850
Wire Wire Line
	5750 3250 6000 3250
Connection ~ 6000 3250
Wire Wire Line
	6000 3250 6250 3250
Connection ~ 6250 3250
Wire Wire Line
	6250 3250 6500 3250
$Comp
L Device:R R28
U 1 1 6035A4B3
P 6750 4700
F 0 "R28" H 6820 4746 50  0000 L CNN
F 1 "270R" H 6820 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6680 4700 50  0001 C CNN
F 3 "~" H 6750 4700 50  0001 C CNN
	1    6750 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D5
U 1 1 6035A4B9
P 6750 4400
F 0 "D5" V 6789 4283 50  0000 R CNN
F 1 "LED" V 6698 4283 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6750 4400 50  0001 C CNN
F 3 "~" H 6750 4400 50  0001 C CNN
	1    6750 4400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R29
U 1 1 6035A4BF
P 7100 4700
F 0 "R29" H 7170 4746 50  0000 L CNN
F 1 "270R" H 7170 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7030 4700 50  0001 C CNN
F 3 "~" H 7100 4700 50  0001 C CNN
	1    7100 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D6
U 1 1 6035A4C5
P 7100 4400
F 0 "D6" V 7139 4283 50  0000 R CNN
F 1 "LED" V 7048 4283 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7100 4400 50  0001 C CNN
F 3 "~" H 7100 4400 50  0001 C CNN
	1    7100 4400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R30
U 1 1 6035A4CB
P 7450 4700
F 0 "R30" H 7520 4746 50  0000 L CNN
F 1 "270R" H 7520 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7380 4700 50  0001 C CNN
F 3 "~" H 7450 4700 50  0001 C CNN
	1    7450 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D7
U 1 1 6035A4D1
P 7450 4400
F 0 "D7" V 7489 4283 50  0000 R CNN
F 1 "LED" V 7398 4283 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7450 4400 50  0001 C CNN
F 3 "~" H 7450 4400 50  0001 C CNN
	1    7450 4400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R31
U 1 1 6035A4D7
P 7800 4700
F 0 "R31" H 7870 4746 50  0000 L CNN
F 1 "270R" H 7870 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7730 4700 50  0001 C CNN
F 3 "~" H 7800 4700 50  0001 C CNN
	1    7800 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D8
U 1 1 6035A4DD
P 7800 4400
F 0 "D8" V 7839 4283 50  0000 R CNN
F 1 "LED" V 7748 4283 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7800 4400 50  0001 C CNN
F 3 "~" H 7800 4400 50  0001 C CNN
	1    7800 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5600 4250 6750 4250
Wire Wire Line
	5600 4150 7100 4150
Wire Wire Line
	7100 4150 7100 4250
Wire Wire Line
	5600 4050 7450 4050
Wire Wire Line
	7450 4050 7450 4250
Wire Wire Line
	5600 3950 7800 3950
Wire Wire Line
	7800 3950 7800 4250
Wire Wire Line
	6600 4850 6750 4850
Connection ~ 6600 4850
Connection ~ 6750 4850
Wire Wire Line
	6750 4850 7100 4850
Connection ~ 7100 4850
Wire Wire Line
	7100 4850 7450 4850
Connection ~ 7450 4850
Wire Wire Line
	7450 4850 7800 4850
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 6035A4F2
P 3550 3600
AR Path="/6035A4F2" Ref="J?"  Part="1" 
AR Path="/60357CC4/6035A4F2" Ref="J6"  Part="1" 
F 0 "J6" H 3468 3917 50  0000 C CNN
F 1 "Conn_01x03" H 3468 3826 50  0000 C CNN
F 2 "Connector2:JST_XH_B3B-XH-AM_1x03_P2.50mm_Vertical" H 3550 3600 50  0001 C CNN
F 3 "~" H 3550 3600 50  0001 C CNN
	1    3550 3600
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 6035A4F8
P 3550 4050
AR Path="/6035A4F8" Ref="J?"  Part="1" 
AR Path="/60357CC4/6035A4F8" Ref="J7"  Part="1" 
F 0 "J7" H 3468 4267 50  0000 C CNN
F 1 "Conn_01x02" H 3468 4176 50  0000 C CNN
F 2 "Connector2:JST_XH_B2B-XH-AM_1x02_P2.50mm_Vertical" H 3550 4050 50  0001 C CNN
F 3 "~" H 3550 4050 50  0001 C CNN
	1    3550 4050
	-1   0    0    -1  
$EndComp
$Comp
L Display2:SSD1306 U?
U 1 1 6036A568
P 3950 5000
AR Path="/6036A568" Ref="U?"  Part="1" 
AR Path="/60357CC4/6036A568" Ref="U8"  Part="1" 
F 0 "U8" H 4128 4746 50  0000 L CNN
F 1 "SSD1306" H 4128 4655 50  0000 L CNN
F 2 "Display2:SSD1306" H 3950 5000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 3950 5000 50  0001 C CNN
	1    3950 5000
	1    0    0    -1  
$EndComp
Text Notes 3300 4850 0    50   ~ 0
Display
Wire Wire Line
	3700 5050 3700 5250
Wire Wire Line
	3700 5250 3750 5250
Wire Wire Line
	3450 5150 3750 5150
Text Notes 3650 5650 0    50   ~ 0
Address 0x78
$Comp
L power:VDC #PWR029
U 1 1 6036B830
P 5100 3250
F 0 "#PWR029" H 5100 3150 50  0001 C CNN
F 1 "VDC" H 5115 3423 50  0000 C CNN
F 2 "" H 5100 3250 50  0001 C CNN
F 3 "" H 5100 3250 50  0001 C CNN
	1    5100 3250
	1    0    0    -1  
$EndComp
$Comp
L power:VDC #PWR033
U 1 1 6036BD27
P 5750 3250
F 0 "#PWR033" H 5750 3150 50  0001 C CNN
F 1 "VDC" H 5765 3423 50  0000 C CNN
F 2 "" H 5750 3250 50  0001 C CNN
F 3 "" H 5750 3250 50  0001 C CNN
	1    5750 3250
	1    0    0    -1  
$EndComp
Connection ~ 5750 3250
$Comp
L power:VDC #PWR026
U 1 1 6036C1FE
P 3700 5050
F 0 "#PWR026" H 3700 4950 50  0001 C CNN
F 1 "VDC" H 3715 5223 50  0000 C CNN
F 2 "" H 3700 5050 50  0001 C CNN
F 3 "" H 3700 5050 50  0001 C CNN
	1    3700 5050
	1    0    0    -1  
$EndComp
$Comp
L power:VDC #PWR027
U 1 1 6036C807
P 4000 4050
F 0 "#PWR027" H 4000 3950 50  0001 C CNN
F 1 "VDC" H 4015 4223 50  0000 C CNN
F 2 "" H 4000 4050 50  0001 C CNN
F 3 "" H 4000 4050 50  0001 C CNN
	1    4000 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR028
U 1 1 6036D122
P 4000 4150
F 0 "#PWR028" H 4000 3900 50  0001 C CNN
F 1 "GNDA" H 4005 3977 50  0000 C CNN
F 2 "" H 4000 4150 50  0001 C CNN
F 3 "" H 4000 4150 50  0001 C CNN
	1    4000 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4050 4000 4050
Wire Wire Line
	3750 4150 4000 4150
$Comp
L power:GNDA #PWR030
U 1 1 6036FA54
P 5100 4650
F 0 "#PWR030" H 5100 4400 50  0001 C CNN
F 1 "GNDA" H 5105 4477 50  0000 C CNN
F 2 "" H 5100 4650 50  0001 C CNN
F 3 "" H 5100 4650 50  0001 C CNN
	1    5100 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR025
U 1 1 6037058D
P 3450 5150
F 0 "#PWR025" H 3450 4900 50  0001 C CNN
F 1 "GNDA" H 3455 4977 50  0000 C CNN
F 2 "" H 3450 5150 50  0001 C CNN
F 3 "" H 3450 5150 50  0001 C CNN
	1    3450 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR031
U 1 1 60370CB6
P 5550 4850
F 0 "#PWR031" H 5550 4600 50  0001 C CNN
F 1 "GNDA" H 5555 4677 50  0000 C CNN
F 2 "" H 5550 4850 50  0001 C CNN
F 3 "" H 5550 4850 50  0001 C CNN
	1    5550 4850
	1    0    0    -1  
$EndComp
Text Label 3600 5350 0    50   ~ 0
SCL
Text Label 3600 5450 0    50   ~ 0
SDA
Wire Wire Line
	3750 5450 3600 5450
Wire Wire Line
	3750 5350 3600 5350
Wire Wire Line
	3750 3500 3950 3500
Wire Wire Line
	3750 3700 3950 3700
Wire Wire Line
	4600 3850 4600 3950
Connection ~ 4600 3950
Wire Wire Line
	4600 3950 4600 4050
Wire Wire Line
	3750 3600 4200 3600
Wire Wire Line
	4200 3600 4200 4350
Wire Wire Line
	4200 4350 4350 4350
Wire Wire Line
	3950 3500 3950 3550
Wire Wire Line
	3950 3550 4600 3550
Wire Wire Line
	3950 3650 3950 3700
Wire Wire Line
	3950 3650 4600 3650
Text Label 3800 3500 0    50   ~ 0
SCL
Text Label 3800 3700 0    50   ~ 0
SDA
Text Notes 5700 5150 0    50   ~ 0
UP
Text Notes 5900 5150 0    50   ~ 0
DOWN
Text Notes 6150 5150 0    50   ~ 0
LEFT
Text Notes 6400 5150 0    50   ~ 0
RIGHT
Text Notes 7750 5150 0    50   ~ 0
UP
Text Notes 7350 5150 0    50   ~ 0
DOWN
Text Notes 7050 5150 0    50   ~ 0
LEFT
Text Notes 6700 5150 0    50   ~ 0
RIGHT
$Comp
L Mechanical:MountingHole_Pad H9
U 1 1 60390B9C
P 5200 5950
F 0 "H9" H 5300 5953 50  0000 L CNN
F 1 "MountingHole_Pad" H 5300 5908 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 5200 5950 50  0001 C CNN
F 3 "~" H 5200 5950 50  0001 C CNN
	1    5200 5950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H10
U 1 1 603912AF
P 5500 5950
F 0 "H10" H 5600 5953 50  0000 L CNN
F 1 "MountingHole_Pad" H 5600 5908 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 5500 5950 50  0001 C CNN
F 3 "~" H 5500 5950 50  0001 C CNN
	1    5500 5950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H11
U 1 1 6039162A
P 5800 5950
F 0 "H11" H 5900 5953 50  0000 L CNN
F 1 "MountingHole_Pad" H 5900 5908 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 5800 5950 50  0001 C CNN
F 3 "~" H 5800 5950 50  0001 C CNN
	1    5800 5950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H12
U 1 1 603918A9
P 6100 5950
F 0 "H12" H 6200 5953 50  0000 L CNN
F 1 "MountingHole_Pad" H 6200 5908 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 6100 5950 50  0001 C CNN
F 3 "~" H 6100 5950 50  0001 C CNN
	1    6100 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR032
U 1 1 60391EC2
P 5650 6050
F 0 "#PWR032" H 5650 5800 50  0001 C CNN
F 1 "GNDA" H 5655 5877 50  0000 C CNN
F 2 "" H 5650 6050 50  0001 C CNN
F 3 "" H 5650 6050 50  0001 C CNN
	1    5650 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 6050 5500 6050
Connection ~ 5500 6050
Wire Wire Line
	5500 6050 5650 6050
Connection ~ 5650 6050
Wire Wire Line
	5650 6050 5800 6050
Connection ~ 5800 6050
Wire Wire Line
	5800 6050 6100 6050
$Comp
L Device:C C?
U 1 1 603AE37C
P 7350 3350
AR Path="/603AE37C" Ref="C?"  Part="1" 
AR Path="/60357CC4/603AE37C" Ref="C21"  Part="1" 
F 0 "C21" H 7300 3250 50  0000 R CNN
F 1 "100n" H 7300 3450 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7388 3200 50  0001 C CNN
F 3 "~" H 7350 3350 50  0001 C CNN
	1    7350 3350
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 603B01CD
P 7650 3350
AR Path="/603B01CD" Ref="C?"  Part="1" 
AR Path="/60357CC4/603B01CD" Ref="C22"  Part="1" 
F 0 "C22" H 7600 3250 50  0000 R CNN
F 1 "100n" H 7600 3450 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7688 3200 50  0001 C CNN
F 3 "~" H 7650 3350 50  0001 C CNN
	1    7650 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	7350 3200 7500 3200
Wire Wire Line
	7350 3500 7500 3500
$Comp
L power:GNDA #PWR035
U 1 1 603B47D0
P 7500 3500
F 0 "#PWR035" H 7500 3250 50  0001 C CNN
F 1 "GNDA" H 7505 3327 50  0000 C CNN
F 2 "" H 7500 3500 50  0001 C CNN
F 3 "" H 7500 3500 50  0001 C CNN
	1    7500 3500
	1    0    0    -1  
$EndComp
Connection ~ 7500 3500
Wire Wire Line
	7500 3500 7650 3500
$Comp
L power:VDC #PWR034
U 1 1 603B4CE2
P 7500 3200
F 0 "#PWR034" H 7500 3100 50  0001 C CNN
F 1 "VDC" H 7515 3373 50  0000 C CNN
F 2 "" H 7500 3200 50  0001 C CNN
F 3 "" H 7500 3200 50  0001 C CNN
	1    7500 3200
	1    0    0    -1  
$EndComp
Connection ~ 7500 3200
Wire Wire Line
	7500 3200 7650 3200
Wire Notes Line
	3250 4750 4700 4750
Wire Notes Line
	4700 4750 4700 6200
Wire Notes Line
	4700 6200 3250 6200
Wire Notes Line
	3250 6200 3250 4750
Text Notes 4350 3300 0    50   ~ 0
Address 0x38
$Comp
L Device:R R?
U 1 1 601A616F
P 4350 4200
AR Path="/601A616F" Ref="R?"  Part="1" 
AR Path="/60357CC4/601A616F" Ref="R32"  Part="1" 
F 0 "R32" H 4400 4250 50  0000 L CNN
F 1 "10k" V 4350 4100 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4280 4200 50  0001 C CNN
F 3 "~" H 4350 4200 50  0001 C CNN
	1    4350 4200
	1    0    0    -1  
$EndComp
Connection ~ 4350 4350
Wire Wire Line
	4350 4350 4600 4350
$Comp
L power:VDC #PWR041
U 1 1 601A692E
P 4350 4050
F 0 "#PWR041" H 4350 3950 50  0001 C CNN
F 1 "VDC" H 4365 4223 50  0000 C CNN
F 2 "" H 4350 4050 50  0001 C CNN
F 3 "" H 4350 4050 50  0001 C CNN
	1    4350 4050
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 6033F9D7
P 7350 3200
AR Path="/6033F9D7" Ref="#FLG?"  Part="1" 
AR Path="/60357CC4/6033F9D7" Ref="#FLG0105"  Part="1" 
F 0 "#FLG0105" H 7350 3275 50  0001 C CNN
F 1 "PWR_FLAG" H 7350 3373 50  0001 C CNN
F 2 "" H 7350 3200 50  0001 C CNN
F 3 "~" H 7350 3200 50  0001 C CNN
	1    7350 3200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 6034DC71
P 7350 3500
AR Path="/6034DC71" Ref="#FLG?"  Part="1" 
AR Path="/60357CC4/6034DC71" Ref="#FLG0104"  Part="1" 
F 0 "#FLG0104" H 7350 3575 50  0001 C CNN
F 1 "PWR_FLAG" H 7350 3673 50  0001 C CNN
F 2 "" H 7350 3500 50  0001 C CNN
F 3 "~" H 7350 3500 50  0001 C CNN
	1    7350 3500
	-1   0    0    1   
$EndComp
Connection ~ 7350 3500
$Comp
L power:GNDA #PWR0101
U 1 1 6034E277
P 4600 4050
F 0 "#PWR0101" H 4600 3800 50  0001 C CNN
F 1 "GNDA" H 4605 3877 50  0000 C CNN
F 2 "" H 4600 4050 50  0001 C CNN
F 3 "" H 4600 4050 50  0001 C CNN
	1    4600 4050
	1    0    0    -1  
$EndComp
Connection ~ 4600 4050
Wire Wire Line
	6100 4750 6100 4850
Wire Wire Line
	5900 4750 5900 4850
$Comp
L OPL-Switch:Switch_6x6_SMT SW?
U 1 1 6035A457
P 6000 4600
AR Path="/6035A457" Ref="SW?"  Part="1" 
AR Path="/60357CC4/6035A457" Ref="SW2"  Part="1" 
F 0 "SW2" H 6000 4300 50  0000 C CNN
F 1 "Switch_6x6_SMT" H 6000 4840 50  0001 C CNN
F 2 "Switches:SW_SPST_6x6x20mm_SMD" V 6000 4600 50  0001 C CNN
F 3 "~" V 6000 4600 50  0001 C CNN
	1    6000 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4750 5650 4850
Wire Wire Line
	5850 4750 5850 4850
$Comp
L OPL-Switch:Switch_6x6_SMT SW?
U 1 1 6035A431
P 5750 4600
AR Path="/6035A431" Ref="SW?"  Part="1" 
AR Path="/60357CC4/6035A431" Ref="SW1"  Part="1" 
F 0 "SW1" H 5750 4300 50  0000 C CNN
F 1 "Switch_6x6_SMT" H 5750 4840 50  0001 C CNN
F 2 "Switches:SW_SPST_6x6x20mm_SMD" V 5750 4600 50  0001 C CNN
F 3 "~" V 5750 4600 50  0001 C CNN
	1    5750 4600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
