EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title "Power"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:D_Bridge_+-AA D?
U 1 1 606FC0D3
P 2450 2000
AR Path="/606FC0D3" Ref="D?"  Part="1" 
AR Path="/60357CC4/606FC0D3" Ref="D?"  Part="1" 
AR Path="/606C5EA7/606FC0D3" Ref="D12"  Part="1" 
F 0 "D12" H 2600 2200 50  0000 L CNN
F 1 "DB207S" H 2300 2000 50  0000 L CNN
F 2 "Diode2:SOT4_Rectifier_Bridge" H 2450 2000 50  0001 C CNN
F 3 "~" H 2450 2000 50  0001 C CNN
	1    2450 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:Varistor RV?
U 1 1 606FC0D9
P 1750 2000
AR Path="/606FC0D9" Ref="RV?"  Part="1" 
AR Path="/60357CC4/606FC0D9" Ref="RV?"  Part="1" 
AR Path="/606C5EA7/606FC0D9" Ref="RV2"  Part="1" 
F 0 "RV2" H 1800 2150 50  0000 L CNN
F 1 "10D431K" H 1750 1850 50  0000 L CNN
F 2 "Varistor2:RV_Disc_D10mm_W2mm_P8mm" V 1680 2000 50  0001 C CNN
F 3 "~" H 1750 2000 50  0001 C CNN
	1    1750 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F?
U 1 1 606FC0DF
P 1250 1700
AR Path="/606FC0DF" Ref="F?"  Part="1" 
AR Path="/60357CC4/606FC0DF" Ref="F?"  Part="1" 
AR Path="/606C5EA7/606FC0DF" Ref="F1"  Part="1" 
F 0 "F1" V 1053 1700 50  0000 C CNN
F 1 "0,3Amp" V 1144 1700 50  0000 C CNN
F 2 "FuseClip:fuse-clip-5x20mm" V 1180 1700 50  0001 C CNN
F 3 "~" H 1250 1700 50  0001 C CNN
	1    1250 1700
	0    1    1    0   
$EndComp
$Comp
L Device:C_Polarized C?
U 1 1 606FC0E5
P 2750 2350
AR Path="/606FC0E5" Ref="C?"  Part="1" 
AR Path="/60357CC4/606FC0E5" Ref="C?"  Part="1" 
AR Path="/606C5EA7/606FC0E5" Ref="C23"  Part="1" 
F 0 "C23" H 2750 2450 50  0000 L CNN
F 1 "4,7uF/400V" H 2550 1900 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 2788 2200 50  0001 C CNN
F 3 "~" H 2750 2350 50  0001 C CNN
	1    2750 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Polarized C?
U 1 1 606FC0EB
P 3450 2400
AR Path="/606FC0EB" Ref="C?"  Part="1" 
AR Path="/60357CC4/606FC0EB" Ref="C?"  Part="1" 
AR Path="/606C5EA7/606FC0EB" Ref="C26"  Part="1" 
F 0 "C26" H 3450 2500 50  0000 L CNN
F 1 "6,8uF/400V" H 3250 1950 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 3488 2250 50  0001 C CNN
F 3 "~" H 3450 2400 50  0001 C CNN
	1    3450 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 2150 1750 2300
Wire Wire Line
	1750 1850 1750 1700
$Comp
L Regulator_Switching:LNK364D U?
U 1 1 606FC0F3
P 3900 2250
AR Path="/606FC0F3" Ref="U?"  Part="1" 
AR Path="/60357CC4/606FC0F3" Ref="U?"  Part="1" 
AR Path="/606C5EA7/606FC0F3" Ref="U9"  Part="1" 
F 0 "U9" H 3950 2250 50  0000 R CNN
F 1 "LNK364D" H 4150 2500 50  0000 R CNN
F 2 "Package_SO:PowerIntegrations_SO-8C" H 3900 2250 50  0001 C CIN
F 3 "http://www.powerint.com/sites/default/files/product-docs/lnk362-364.pdf" H 3900 2250 50  0001 C CNN
	1    3900 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 606FC0FF
P 4250 2500
AR Path="/606FC0FF" Ref="C?"  Part="1" 
AR Path="/60357CC4/606FC0FF" Ref="C?"  Part="1" 
AR Path="/606C5EA7/606FC0FF" Ref="C28"  Part="1" 
F 0 "C28" H 4365 2546 50  0000 L CNN
F 1 "100nF/50V" H 4365 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4288 2350 50  0001 C CNN
F 3 "~" H 4250 2500 50  0001 C CNN
	1    4250 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1050 4050 1200
$Comp
L Device:R R?
U 1 1 606FC106
P 6000 2650
AR Path="/606FC106" Ref="R?"  Part="1" 
AR Path="/60357CC4/606FC106" Ref="R?"  Part="1" 
AR Path="/606C5EA7/606FC106" Ref="R54"  Part="1" 
F 0 "R54" H 5900 2650 50  0000 C CNN
F 1 "5K6" V 6000 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5930 2650 50  0001 C CNN
F 3 "~" H 6000 2650 50  0001 C CNN
	1    6000 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 606FC10C
P 3700 1200
AR Path="/606FC10C" Ref="C?"  Part="1" 
AR Path="/60357CC4/606FC10C" Ref="C?"  Part="1" 
AR Path="/606C5EA7/606FC10C" Ref="C27"  Part="1" 
F 0 "C27" H 3500 1550 50  0000 L CNN
F 1 "1nF/300V" H 3500 1450 50  0000 L CNN
F 2 "Condensator:JN_102M" H 3738 1050 50  0001 C CNN
F 3 "~" H 3700 1200 50  0001 C CNN
	1    3700 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 606FC112
P 3900 1200
AR Path="/606FC112" Ref="R?"  Part="1" 
AR Path="/60357CC4/606FC112" Ref="R?"  Part="1" 
AR Path="/606C5EA7/606FC112" Ref="R49"  Part="1" 
F 0 "R49" H 3950 1400 50  0000 C CNN
F 1 "8k6" V 3900 1200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 3830 1200 50  0001 C CNN
F 3 "~" H 3900 1200 50  0001 C CNN
	1    3900 1200
	1    0    0    -1  
$EndComp
Connection ~ 3700 1050
Wire Wire Line
	3700 1050 3900 1050
Connection ~ 3900 1050
Wire Wire Line
	3900 1050 4050 1050
Wire Wire Line
	3700 1350 3800 1350
Connection ~ 3800 1350
Wire Wire Line
	3800 1350 3900 1350
Wire Wire Line
	2750 2200 2750 2000
$Comp
L power:GND #PWR?
U 1 1 606FC120
P 5700 2800
AR Path="/606FC120" Ref="#PWR?"  Part="1" 
AR Path="/60357CC4/606FC120" Ref="#PWR?"  Part="1" 
AR Path="/606C5EA7/606FC120" Ref="#PWR061"  Part="1" 
F 0 "#PWR061" H 5700 2550 50  0001 C CNN
F 1 "GND" H 5705 2627 50  0000 C CNN
F 2 "" H 5700 2800 50  0001 C CNN
F 3 "" H 5700 2800 50  0001 C CNN
	1    5700 2800
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 606FC126
P 6000 2800
AR Path="/606FC126" Ref="#FLG?"  Part="1" 
AR Path="/60357CC4/606FC126" Ref="#FLG?"  Part="1" 
AR Path="/606C5EA7/606FC126" Ref="#FLG08"  Part="1" 
F 0 "#FLG08" H 6000 2875 50  0001 C CNN
F 1 "PWR_FLAG" H 6000 2973 50  0001 C CNN
F 2 "" H 6000 2800 50  0001 C CNN
F 3 "~" H 6000 2800 50  0001 C CNN
	1    6000 2800
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 606FC12C
P 2300 2700
AR Path="/606FC12C" Ref="#FLG?"  Part="1" 
AR Path="/60357CC4/606FC12C" Ref="#FLG?"  Part="1" 
AR Path="/606C5EA7/606FC12C" Ref="#FLG04"  Part="1" 
F 0 "#FLG04" H 2300 2775 50  0001 C CNN
F 1 "PWR_FLAG" H 2300 2873 50  0001 C CNN
F 2 "" H 2300 2700 50  0001 C CNN
F 3 "~" H 2300 2700 50  0001 C CNN
	1    2300 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	1100 2300 1400 2300
$Comp
L Reference_Voltage:TL431DBZ U?
U 1 1 606FC133
P 5550 2300
AR Path="/606FC133" Ref="U?"  Part="1" 
AR Path="/60357CC4/606FC133" Ref="U?"  Part="1" 
AR Path="/606C5EA7/606FC133" Ref="U11"  Part="1" 
F 0 "U11" V 5700 2400 50  0000 R CNN
F 1 "TL432" V 5450 2300 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5550 2150 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tl431.pdf" H 5550 2300 50  0001 C CIN
	1    5550 2300
	0    1    -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 606FC139
P 5800 2350
AR Path="/606FC139" Ref="C?"  Part="1" 
AR Path="/60357CC4/606FC139" Ref="C?"  Part="1" 
AR Path="/606C5EA7/606FC139" Ref="C31"  Part="1" 
F 0 "C31" H 5900 2450 50  0000 C CNN
F 1 "100nF" H 5800 2150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5838 2200 50  0001 C CNN
F 3 "~" H 5800 2350 50  0001 C CNN
	1    5800 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 606FC13F
P 5800 2050
AR Path="/606FC13F" Ref="R?"  Part="1" 
AR Path="/60357CC4/606FC13F" Ref="R?"  Part="1" 
AR Path="/606C5EA7/606FC13F" Ref="R52"  Part="1" 
F 0 "R52" H 5900 2200 50  0000 C CNN
F 1 "1K" V 5800 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5730 2050 50  0001 C CNN
F 3 "~" H 5800 2050 50  0001 C CNN
	1    5800 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 606FC145
P 6000 1750
AR Path="/606FC145" Ref="R?"  Part="1" 
AR Path="/60357CC4/606FC145" Ref="R?"  Part="1" 
AR Path="/606C5EA7/606FC145" Ref="R53"  Part="1" 
F 0 "R53" H 6100 1750 50  0000 C CNN
F 1 "22k" V 6000 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5930 1750 50  0001 C CNN
F 3 "~" H 6000 1750 50  0001 C CNN
	1    6000 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 606FC14B
P 1900 1700
AR Path="/606FC14B" Ref="R?"  Part="1" 
AR Path="/60357CC4/606FC14B" Ref="R?"  Part="1" 
AR Path="/606C5EA7/606FC14B" Ref="R47"  Part="1" 
F 0 "R47" V 1800 1700 50  0000 C CNN
F 1 "10R" V 1900 1700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P5.08mm_Vertical" V 1830 1700 50  0001 C CNN
F 3 "~" H 1900 1700 50  0001 C CNN
	1    1900 1700
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 606FC151
P 2050 2000
AR Path="/606FC151" Ref="C?"  Part="1" 
AR Path="/60357CC4/606FC151" Ref="C?"  Part="1" 
AR Path="/606C5EA7/606FC151" Ref="C20"  Part="1" 
F 0 "C20" H 2100 2100 50  0000 L CNN
F 1 "X2 100nF/275V" H 1750 1600 50  0000 L CNN
F 2 "Condensator:CBB22104J400V" H 2088 1850 50  0001 C CNN
F 3 "~" H 2050 2000 50  0001 C CNN
	1    2050 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 1850 2050 1700
Wire Wire Line
	2050 2150 2050 2300
Connection ~ 2050 1700
Wire Wire Line
	1750 2300 2050 2300
Connection ~ 2050 2300
$Comp
L Device:R R?
U 1 1 606FC15C
P 3800 1500
AR Path="/606FC15C" Ref="R?"  Part="1" 
AR Path="/60357CC4/606FC15C" Ref="R?"  Part="1" 
AR Path="/606C5EA7/606FC15C" Ref="R48"  Part="1" 
F 0 "R48" H 3900 1450 50  0000 C CNN
F 1 "330R" V 3800 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 3730 1500 50  0001 C CNN
F 3 "~" H 3800 1500 50  0001 C CNN
	1    3800 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D?
U 1 1 606FC162
P 3800 1800
AR Path="/606FC162" Ref="D?"  Part="1" 
AR Path="/60357CC4/606FC162" Ref="D?"  Part="1" 
AR Path="/606C5EA7/606FC162" Ref="D13"  Part="1" 
F 0 "D13" V 3750 1600 50  0000 L CNN
F 1 "FR107" V 3850 1500 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 3800 1800 50  0001 C CNN
F 3 "~" H 3800 1800 50  0001 C CNN
	1    3800 1800
	0    1    1    0   
$EndComp
$Comp
L Device:C_Polarized C?
U 1 1 606FC16E
P 5250 1350
AR Path="/606FC16E" Ref="C?"  Part="1" 
AR Path="/60357CC4/606FC16E" Ref="C?"  Part="1" 
AR Path="/606C5EA7/606FC16E" Ref="C29"  Part="1" 
F 0 "C29" H 5368 1396 50  0000 L CNN
F 1 "1000uF/25V" H 5000 1150 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 5288 1200 50  0001 C CNN
F 3 "~" H 5250 1350 50  0001 C CNN
	1    5250 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 606FC174
P 5550 1750
AR Path="/606FC174" Ref="R?"  Part="1" 
AR Path="/60357CC4/606FC174" Ref="R?"  Part="1" 
AR Path="/606C5EA7/606FC174" Ref="R51"  Part="1" 
F 0 "R51" H 5450 1750 50  0000 C CNN
F 1 "1K2" V 5550 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5480 1750 50  0001 C CNN
F 3 "~" H 5550 1750 50  0001 C CNN
	1    5550 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 1200 4950 1200
Wire Wire Line
	5250 1200 5550 1200
$Comp
L power:PWR_FLAG #FLG?
U 1 1 606FC17C
P 5250 1200
AR Path="/606FC17C" Ref="#FLG?"  Part="1" 
AR Path="/60357CC4/606FC17C" Ref="#FLG?"  Part="1" 
AR Path="/606C5EA7/606FC17C" Ref="#FLG07"  Part="1" 
F 0 "#FLG07" H 5250 1275 50  0001 C CNN
F 1 "PWR_FLAG" H 5300 1800 50  0001 C CNN
F 2 "" H 5250 1200 50  0001 C CNN
F 3 "~" H 5250 1200 50  0001 C CNN
	1    5250 1200
	1    0    0    -1  
$EndComp
Connection ~ 5250 1200
Wire Wire Line
	3800 1950 4050 1950
Connection ~ 3800 1950
Wire Wire Line
	2150 2700 2300 2700
Wire Wire Line
	2750 2500 2750 2700
Wire Wire Line
	3300 2700 3450 2700
Wire Wire Line
	2150 2000 2150 2700
Wire Wire Line
	3800 2550 3800 2700
Connection ~ 3800 2700
Wire Wire Line
	3800 2700 3950 2700
Connection ~ 2300 2700
Wire Wire Line
	2300 2700 2750 2700
$Comp
L Device:C C?
U 1 1 606FC18F
P 6150 1350
AR Path="/606FC18F" Ref="C?"  Part="1" 
AR Path="/60357CC4/606FC18F" Ref="C?"  Part="1" 
AR Path="/606C5EA7/606FC18F" Ref="C33"  Part="1" 
F 0 "C33" H 6250 1450 50  0000 C CNN
F 1 "10nF" H 6250 1250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6188 1200 50  0001 C CNN
F 3 "~" H 6150 1350 50  0001 C CNN
	1    6150 1350
	1    0    0    -1  
$EndComp
Connection ~ 5700 2800
Wire Wire Line
	5700 2800 5550 2800
Wire Wire Line
	5550 1600 5550 1200
Connection ~ 5550 1200
Wire Wire Line
	2050 1700 2450 1700
Wire Wire Line
	2050 2300 2450 2300
Text Notes 4650 1400 0    50   ~ 0
12V
Wire Wire Line
	5550 1900 5550 2000
Wire Wire Line
	6000 1200 6000 1600
Wire Wire Line
	5650 2500 5650 2300
Wire Wire Line
	5700 2800 6000 2800
Wire Wire Line
	5550 2400 5550 2800
$Comp
L power:GND #PWR?
U 1 1 606FC1A5
P 5750 1500
AR Path="/606FC1A5" Ref="#PWR?"  Part="1" 
AR Path="/60357CC4/606FC1A5" Ref="#PWR?"  Part="1" 
AR Path="/606C5EA7/606FC1A5" Ref="#PWR062"  Part="1" 
F 0 "#PWR062" H 5750 1250 50  0001 C CNN
F 1 "GND" H 5755 1327 50  0000 C CNN
F 2 "" H 5750 1500 50  0001 C CNN
F 3 "" H 5750 1500 50  0001 C CNN
	1    5750 1500
	1    0    0    -1  
$EndComp
Connection ~ 6000 2800
Wire Wire Line
	5650 2500 5800 2500
Wire Wire Line
	5550 2200 5800 2200
Connection ~ 5800 2200
$Comp
L Device:L L?
U 1 1 606FC1B1
P 5700 1200
AR Path="/606FC1B1" Ref="L?"  Part="1" 
AR Path="/60357CC4/606FC1B1" Ref="L?"  Part="1" 
AR Path="/606C5EA7/606FC1B1" Ref="L2"  Part="1" 
F 0 "L2" V 5890 1200 50  0000 C CNN
F 1 "3,3uH" V 5799 1200 50  0000 C CNN
F 2 "Inductor_SMD:L_1206_3216Metric" H 5700 1200 50  0001 C CNN
F 3 "~" H 5700 1200 50  0001 C CNN
	1    5700 1200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5850 1200 6000 1200
Connection ~ 6000 1200
Wire Wire Line
	6000 1200 6150 1200
$Comp
L Device:C_Polarized C?
U 1 1 606FC1BA
P 5850 1350
AR Path="/606FC1BA" Ref="C?"  Part="1" 
AR Path="/60357CC4/606FC1BA" Ref="C?"  Part="1" 
AR Path="/606C5EA7/606FC1BA" Ref="C32"  Part="1" 
F 0 "C32" H 5900 1450 50  0000 L CNN
F 1 "100uF/25V" H 5850 1150 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 5888 1200 50  0001 C CNN
F 3 "~" H 5850 1350 50  0001 C CNN
	1    5850 1350
	1    0    0    -1  
$EndComp
Connection ~ 5750 1500
$Comp
L Device:C C?
U 1 1 606FC1C1
P 5400 1000
AR Path="/606FC1C1" Ref="C?"  Part="1" 
AR Path="/60357CC4/606FC1C1" Ref="C?"  Part="1" 
AR Path="/606C5EA7/606FC1C1" Ref="C30"  Part="1" 
F 0 "C30" V 5148 1000 50  0000 C CNN
F 1 "470pF/50V" V 5239 1000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5438 850 50  0001 C CNN
F 3 "~" H 5400 1000 50  0001 C CNN
	1    5400 1000
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 606FC1C7
P 5100 1000
AR Path="/606FC1C7" Ref="R?"  Part="1" 
AR Path="/60357CC4/606FC1C7" Ref="R?"  Part="1" 
AR Path="/606C5EA7/606FC1C7" Ref="R50"  Part="1" 
F 0 "R50" V 4893 1000 50  0000 C CNN
F 1 "18R" V 5100 1000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5030 1000 50  0001 C CNN
F 3 "~" H 5100 1000 50  0001 C CNN
	1    5100 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 1000 5550 1200
Wire Wire Line
	4950 1000 4950 1200
Connection ~ 4950 1200
$Comp
L Device:L_Iron_Coupled_1423 L?
U 1 1 606FC1D0
P 3100 2350
AR Path="/606FC1D0" Ref="L?"  Part="1" 
AR Path="/60357CC4/606FC1D0" Ref="L?"  Part="1" 
AR Path="/606C5EA7/606FC1D0" Ref="L1"  Part="1" 
F 0 "L1" H 3100 2631 50  0000 C CNN
F 1 "6mH" H 3100 2540 50  0000 C CNN
F 2 "Transformers:UU98_Common_Mode_Choke" H 3100 2350 50  0001 C CNN
F 3 "~" H 3100 2350 50  0001 C CNN
	1    3100 2350
	1    0    0    1   
$EndComp
Wire Wire Line
	3300 2450 3300 2700
Wire Wire Line
	3300 2250 3450 2250
Wire Wire Line
	3450 2550 3450 2700
Connection ~ 3450 2700
Wire Wire Line
	3450 2700 3800 2700
Wire Wire Line
	3450 2250 3450 1050
Wire Wire Line
	3450 1050 3700 1050
Wire Wire Line
	2900 2450 2900 2700
Wire Wire Line
	2900 2700 2750 2700
Connection ~ 2750 2700
Wire Wire Line
	2900 2250 2900 2000
Wire Wire Line
	2900 2000 2750 2000
Connection ~ 2750 2000
$Comp
L Device:Transformer_1P_SS T?
U 1 1 606FC1E3
P 4450 1400
AR Path="/606FC1E3" Ref="T?"  Part="1" 
AR Path="/60357CC4/606FC1E3" Ref="T?"  Part="1" 
AR Path="/606C5EA7/606FC1E3" Ref="T1"  Part="1" 
F 0 "T1" H 4450 1000 50  0000 C CNN
F 1 "EE13" H 4450 1100 50  0000 C CNN
F 2 "Transformers:EE16-A2" H 4450 1400 50  0001 C CNN
F 3 "~" H 4450 1400 50  0001 C CNN
	1    4450 1400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4900 1500 4900 1600
Wire Wire Line
	4900 1600 4850 1600
Wire Wire Line
	5800 1900 5550 1900
Connection ~ 5550 1900
Wire Wire Line
	4050 1600 4050 1950
Wire Wire Line
	4200 2350 4250 2350
$Comp
L Regulator_Linear:LM1117-3.3 U?
U 1 1 606FC1F4
P 6550 1200
AR Path="/606FC1F4" Ref="U?"  Part="1" 
AR Path="/60357CC4/606FC1F4" Ref="U?"  Part="1" 
AR Path="/606C5EA7/606FC1F4" Ref="U12"  Part="1" 
F 0 "U12" H 6550 1450 50  0000 C CNN
F 1 "LM1117-3.3" H 6550 1351 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 6550 1200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 6550 1200 50  0001 C CNN
	1    6550 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 1500 6550 1500
Connection ~ 6150 1500
Wire Wire Line
	6150 1200 6250 1200
Connection ~ 6150 1200
$Comp
L power:+3.3V #PWR?
U 1 1 606FC1FE
P 6950 1200
AR Path="/606FC1FE" Ref="#PWR?"  Part="1" 
AR Path="/60357CC4/606FC1FE" Ref="#PWR?"  Part="1" 
AR Path="/606C5EA7/606FC1FE" Ref="#PWR065"  Part="1" 
F 0 "#PWR065" H 6950 1050 50  0001 C CNN
F 1 "+3.3V" H 6965 1373 50  0000 C CNN
F 2 "" H 6950 1200 50  0001 C CNN
F 3 "" H 6950 1200 50  0001 C CNN
	1    6950 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1200 6950 1200
Wire Notes Line
	7150 650  7150 3050
Wire Notes Line
	7150 3050 650  3050
Wire Notes Line
	650  3050 650  650 
Wire Notes Line
	650  650  7150 650 
Text Notes 700  750  0    50   ~ 0
Power Supply
Text GLabel 1100 1700 0    50   Input ~ 0
LINE
Text GLabel 1100 2300 0    50   Input ~ 0
NEUTRAL
$Comp
L Device:C C?
U 1 1 606FC20C
P 1400 1850
AR Path="/606FC20C" Ref="C?"  Part="1" 
AR Path="/60357CC4/606FC20C" Ref="C?"  Part="1" 
AR Path="/606C5EA7/606FC20C" Ref="C16"  Part="1" 
F 0 "C16" H 1250 1750 50  0000 L CNN
F 1 "Y type 2N2/250VAC" H 1050 1350 50  0000 L CNN
F 2 "Condensator:Y2_222" H 1438 1700 50  0001 C CNN
F 3 "~" H 1400 1850 50  0001 C CNN
	1    1400 1850
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 606FC212
P 1400 2150
AR Path="/606FC212" Ref="C?"  Part="1" 
AR Path="/60357CC4/606FC212" Ref="C?"  Part="1" 
AR Path="/606C5EA7/606FC212" Ref="C17"  Part="1" 
F 0 "C17" H 1250 2050 50  0000 L CNN
F 1 "Y type 2N2/250VAC" H 1150 2400 50  0000 L CNN
F 2 "Condensator:Y2_222" H 1438 2000 50  0001 C CNN
F 3 "~" H 1400 2150 50  0001 C CNN
	1    1400 2150
	-1   0    0    1   
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 606FC218
P 1200 2000
AR Path="/606FC218" Ref="#PWR?"  Part="1" 
AR Path="/60357CC4/606FC218" Ref="#PWR?"  Part="1" 
AR Path="/606C5EA7/606FC218" Ref="#PWR055"  Part="1" 
F 0 "#PWR055" H 1200 1750 50  0001 C CNN
F 1 "Earth" H 1200 1850 50  0001 C CNN
F 2 "" H 1200 2000 50  0001 C CNN
F 3 "~" H 1200 2000 50  0001 C CNN
	1    1200 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 2000 1400 2000
Connection ~ 1400 2000
Wire Wire Line
	1400 1700 1750 1700
Connection ~ 1400 1700
Connection ~ 1750 1700
Wire Wire Line
	1400 2300 1750 2300
Connection ~ 1400 2300
Connection ~ 1750 2300
$Comp
L Device:C C?
U 1 1 606FC226
P 6550 1650
AR Path="/606FC226" Ref="C?"  Part="1" 
AR Path="/60357CC4/606FC226" Ref="C?"  Part="1" 
AR Path="/606C5EA7/606FC226" Ref="C34"  Part="1" 
F 0 "C34" H 6450 1550 50  0000 C CNN
F 1 "X type 470pF" H 6350 1750 50  0000 C CNN
F 2 "Condensator:JN_102M" H 6588 1500 50  0001 C CNN
F 3 "~" H 6550 1650 50  0001 C CNN
	1    6550 1650
	-1   0    0    1   
$EndComp
Connection ~ 6550 1500
$Comp
L power:Earth #PWR?
U 1 1 606FC22D
P 6550 1800
AR Path="/606FC22D" Ref="#PWR?"  Part="1" 
AR Path="/60357CC4/606FC22D" Ref="#PWR?"  Part="1" 
AR Path="/606C5EA7/606FC22D" Ref="#PWR064"  Part="1" 
F 0 "#PWR064" H 6550 1550 50  0001 C CNN
F 1 "Earth" H 6550 1650 50  0001 C CNN
F 2 "" H 6550 1800 50  0001 C CNN
F 3 "~" H 6550 1800 50  0001 C CNN
	1    6550 1800
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 606FC233
P 1050 2000
AR Path="/606FC233" Ref="#FLG?"  Part="1" 
AR Path="/60357CC4/606FC233" Ref="#FLG?"  Part="1" 
AR Path="/606C5EA7/606FC233" Ref="#FLG03"  Part="1" 
F 0 "#FLG03" H 1050 2075 50  0001 C CNN
F 1 "PWR_FLAG" H 1050 2173 50  0001 C CNN
F 2 "" H 1050 2000 50  0001 C CNN
F 3 "~" H 1050 2000 50  0001 C CNN
	1    1050 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1050 2000 1200 2000
Connection ~ 1200 2000
$Comp
L power:PWR_FLAG #FLG?
U 1 1 606FC23B
P 3950 2700
AR Path="/606FC23B" Ref="#FLG?"  Part="1" 
AR Path="/60357CC4/606FC23B" Ref="#FLG?"  Part="1" 
AR Path="/606C5EA7/606FC23B" Ref="#FLG06"  Part="1" 
F 0 "#FLG06" H 3950 2775 50  0001 C CNN
F 1 "PWR_FLAG" H 3950 2873 50  0001 C CNN
F 2 "" H 3950 2700 50  0001 C CNN
F 3 "~" H 3950 2700 50  0001 C CNN
	1    3950 2700
	-1   0    0    1   
$EndComp
Connection ~ 3950 2700
$Comp
L power:PWR_FLAG #FLG?
U 1 1 606FC243
P 6150 1200
AR Path="/606FC243" Ref="#FLG?"  Part="1" 
AR Path="/60357CC4/606FC243" Ref="#FLG?"  Part="1" 
AR Path="/606C5EA7/606FC243" Ref="#FLG09"  Part="1" 
F 0 "#FLG09" H 6150 1275 50  0001 C CNN
F 1 "PWR_FLAG" H 6150 1373 50  0001 C CNN
F 2 "" H 6150 1200 50  0001 C CNN
F 3 "~" H 6150 1200 50  0001 C CNN
	1    6150 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1500 5250 1500
Wire Wire Line
	5750 1500 5850 1500
Connection ~ 3450 2250
Connection ~ 5250 1500
Wire Wire Line
	5250 1500 5750 1500
Connection ~ 5850 1200
Connection ~ 5850 1500
Wire Wire Line
	5850 1500 6150 1500
$Comp
L power:+12V #PWR?
U 1 1 606FC275
P 6000 1200
AR Path="/60357CC4/606FC275" Ref="#PWR?"  Part="1" 
AR Path="/606C5EA7/606FC275" Ref="#PWR063"  Part="1" 
F 0 "#PWR063" H 6000 1050 50  0001 C CNN
F 1 "+12V" H 6015 1373 50  0000 C CNN
F 2 "" H 6000 1200 50  0001 C CNN
F 3 "" H 6000 1200 50  0001 C CNN
	1    6000 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 60726981
P 1550 4600
AR Path="/60726981" Ref="#PWR?"  Part="1" 
AR Path="/60357CC4/60726981" Ref="#PWR?"  Part="1" 
AR Path="/606C5EA7/60726981" Ref="#PWR057"  Part="1" 
F 0 "#PWR057" H 1550 4450 50  0001 C CNN
F 1 "+3.3V" H 1550 4750 50  0000 C CNN
F 2 "" H 1550 4600 50  0001 C CNN
F 3 "" H 1550 4600 50  0001 C CNN
	1    1550 4600
	1    0    0    -1  
$EndComp
Text Notes 650  5200 0    50   ~ 0
place as close as possible to the supply and ground pins.
$Comp
L Device:C C?
U 1 1 6072698E
P 1550 4750
AR Path="/6072698E" Ref="C?"  Part="1" 
AR Path="/60357CC4/6072698E" Ref="C?"  Part="1" 
AR Path="/606C5EA7/6072698E" Ref="C15"  Part="1" 
F 0 "C15" H 1500 4650 50  0000 R CNN
F 1 "100n" H 1500 4850 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1588 4600 50  0001 C CNN
F 3 "~" H 1550 4750 50  0001 C CNN
	1    1550 4750
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM358 U?
U 3 1 6072699A
P 1050 5850
AR Path="/6072699A" Ref="U?"  Part="3" 
AR Path="/60357CC4/6072699A" Ref="U?"  Part="3" 
AR Path="/606C5EA7/6072699A" Ref="U3"  Part="3" 
F 0 "U3" H 1008 5896 50  0000 L CNN
F 1 "LM358" H 1008 5805 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1050 5850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 1050 5850 50  0001 C CNN
	3    1050 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 607269A0
P 1300 4750
AR Path="/607269A0" Ref="C?"  Part="1" 
AR Path="/60357CC4/607269A0" Ref="C?"  Part="1" 
AR Path="/606C5EA7/607269A0" Ref="C13"  Part="1" 
F 0 "C13" H 1250 4650 50  0000 R CNN
F 1 "100n" H 1250 4850 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1338 4600 50  0001 C CNN
F 3 "~" H 1300 4750 50  0001 C CNN
	1    1300 4750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 607269A6
P 1150 6150
AR Path="/607269A6" Ref="#PWR?"  Part="1" 
AR Path="/60357CC4/607269A6" Ref="#PWR?"  Part="1" 
AR Path="/606C5EA7/607269A6" Ref="#PWR054"  Part="1" 
F 0 "#PWR054" H 1150 5900 50  0001 C CNN
F 1 "GND" H 1155 5977 50  0000 C CNN
F 2 "" H 1150 6150 50  0001 C CNN
F 3 "" H 1150 6150 50  0001 C CNN
	1    1150 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 607269AC
P 2400 4750
AR Path="/607269AC" Ref="C?"  Part="1" 
AR Path="/60357CC4/607269AC" Ref="C?"  Part="1" 
AR Path="/606C5EA7/607269AC" Ref="C21"  Part="1" 
F 0 "C21" H 2250 4850 50  0000 L CNN
F 1 "100nF" H 2150 4650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2438 4600 50  0001 C CNN
F 3 "~" H 2400 4750 50  0001 C CNN
	1    2400 4750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 607269B2
P 2400 4600
AR Path="/607269B2" Ref="#PWR?"  Part="1" 
AR Path="/60357CC4/607269B2" Ref="#PWR?"  Part="1" 
AR Path="/606C5EA7/607269B2" Ref="#PWR058"  Part="1" 
F 0 "#PWR058" H 2400 4450 50  0001 C CNN
F 1 "VCC" H 2400 4750 50  0000 C CNN
F 2 "" H 2400 4600 50  0001 C CNN
F 3 "" H 2400 4600 50  0001 C CNN
	1    2400 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 607269B8
P 2400 4900
AR Path="/607269B8" Ref="#PWR?"  Part="1" 
AR Path="/60357CC4/607269B8" Ref="#PWR?"  Part="1" 
AR Path="/606C5EA7/607269B8" Ref="#PWR059"  Part="1" 
F 0 "#PWR059" H 2400 4650 50  0001 C CNN
F 1 "GND" H 2300 4800 50  0000 C CNN
F 2 "" H 2400 4900 50  0001 C CNN
F 3 "" H 2400 4900 50  0001 C CNN
	1    2400 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Polarized C?
U 1 1 607269BE
P 2600 4750
AR Path="/607269BE" Ref="C?"  Part="1" 
AR Path="/60357CC4/607269BE" Ref="C?"  Part="1" 
AR Path="/606C5EA7/607269BE" Ref="C22"  Part="1" 
F 0 "C22" H 2718 4796 50  0000 L CNN
F 1 "4,7uF" H 2718 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_Elec_4x5.4" H 2638 4600 50  0001 C CNN
F 3 "~" H 2600 4750 50  0001 C CNN
	1    2600 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4600 2600 4600
Connection ~ 2400 4600
Wire Wire Line
	2600 4900 2400 4900
Connection ~ 2400 4900
Connection ~ 1550 4600
Connection ~ 1550 4900
$Comp
L power:+12V #PWR053
U 1 1 607269D4
P 1150 5550
F 0 "#PWR053" H 1150 5400 50  0001 C CNN
F 1 "+12V" H 1150 5700 50  0000 C CNN
F 2 "" H 1150 5550 50  0001 C CNN
F 3 "" H 1150 5550 50  0001 C CNN
	1    1150 5550
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG05
U 1 1 607269DA
P 2600 4600
F 0 "#FLG05" H 2600 4675 50  0001 C CNN
F 1 "PWR_FLAG" H 2700 4750 50  0000 C CNN
F 2 "" H 2600 4600 50  0001 C CNN
F 3 "~" H 2600 4600 50  0001 C CNN
	1    2600 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 607269E8
P 3150 4750
AR Path="/607269E8" Ref="C?"  Part="1" 
AR Path="/60357CC4/607269E8" Ref="C?"  Part="1" 
AR Path="/606C5EA7/607269E8" Ref="C24"  Part="1" 
F 0 "C24" H 3100 4650 50  0000 R CNN
F 1 "100n" H 3100 4850 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3188 4600 50  0001 C CNN
F 3 "~" H 3150 4750 50  0001 C CNN
	1    3150 4750
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR060
U 1 1 607269F0
P 3150 4600
F 0 "#PWR060" H 3150 4450 50  0001 C CNN
F 1 "+12V" H 3165 4773 50  0000 C CNN
F 2 "" H 3150 4600 50  0001 C CNN
F 3 "" H 3150 4600 50  0001 C CNN
	1    3150 4600
	1    0    0    -1  
$EndComp
Wire Notes Line
	650  4300 650  5200
Wire Notes Line
	4650 5200 4650 4300
Text Notes 700  4400 0    50   ~ 0
Decoupling
$Comp
L Device:C C?
U 1 1 607ED507
P 1800 4750
AR Path="/607ED507" Ref="C?"  Part="1" 
AR Path="/60357CC4/607ED507" Ref="C?"  Part="1" 
AR Path="/606C5EA7/607ED507" Ref="C19"  Part="1" 
F 0 "C19" H 1750 4650 50  0000 R CNN
F 1 "100n" H 1750 4850 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1838 4600 50  0001 C CNN
F 3 "~" H 1800 4750 50  0001 C CNN
	1    1800 4750
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM358 U?
U 3 1 607F297B
P 1400 5850
AR Path="/607F297B" Ref="U?"  Part="3" 
AR Path="/60357CC4/607F297B" Ref="U?"  Part="3" 
AR Path="/606C5EA7/607F297B" Ref="U5"  Part="3" 
F 0 "U5" H 1358 5896 50  0000 L CNN
F 1 "LM358" H 1358 5805 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1400 5850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 1400 5850 50  0001 C CNN
	3    1400 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 6150 1150 6150
Wire Wire Line
	3150 4900 2600 4900
Connection ~ 3150 4900
Connection ~ 2600 4900
Wire Wire Line
	2400 4900 1800 4900
Connection ~ 1800 4900
Wire Wire Line
	1550 4600 1800 4600
Wire Notes Line
	650  4300 4650 4300
Wire Notes Line
	650  5200 4650 5200
$Comp
L Device:D D?
U 1 1 606FC168
P 5100 1200
AR Path="/606FC168" Ref="D?"  Part="1" 
AR Path="/60357CC4/606FC168" Ref="D?"  Part="1" 
AR Path="/606C5EA7/606FC168" Ref="D14"  Part="1" 
F 0 "D14" H 5200 1150 50  0000 C CNN
F 1 "SS34" H 5150 1300 50  0000 C CNN
F 2 "Diode_SMD:D_SMA" H 5100 1200 50  0001 C CNN
F 3 "~" H 5100 1200 50  0001 C CNN
	1    5100 1200
	-1   0    0    1   
$EndComp
Wire Wire Line
	1300 4900 1550 4900
Wire Wire Line
	1300 4600 1550 4600
Wire Wire Line
	1550 4900 1800 4900
Wire Wire Line
	3150 4900 3400 4900
$Comp
L Device:R R?
U 1 1 611F7C58
P 6100 2350
AR Path="/611F7C58" Ref="R?"  Part="1" 
AR Path="/60357CC4/611F7C58" Ref="R?"  Part="1" 
AR Path="/606C5EA7/611F7C58" Ref="R39"  Part="1" 
F 0 "R39" H 6150 2500 50  0000 C CNN
F 1 "0R" V 6100 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6030 2350 50  0001 C CNN
F 3 "~" H 6100 2350 50  0001 C CNN
	1    6100 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2500 6100 2500
Wire Wire Line
	6100 2200 6000 2200
Wire Wire Line
	6000 2200 6000 2450
Wire Wire Line
	6000 2450 5950 2450
Wire Wire Line
	5950 2450 5950 2500
Wire Wire Line
	5950 2500 5800 2500
Connection ~ 5800 2500
Wire Wire Line
	6000 1900 6000 2200
Connection ~ 6000 2200
Text Notes 5500 3150 0    50   ~ 0
* Let op: ondersteboven monteren
Text Notes 5600 2300 0    50   ~ 0
*
Text Notes 1700 1550 0    50   ~ 0
Moet meer vermogen zijn
Connection ~ 4250 2350
$Comp
L Isolator:PC817 U?
U 1 1 606FC0F9
P 4600 2100
AR Path="/606FC0F9" Ref="U?"  Part="1" 
AR Path="/60357CC4/606FC0F9" Ref="U?"  Part="1" 
AR Path="/606C5EA7/606FC0F9" Ref="U10"  Part="1" 
F 0 "U10" H 4600 2300 50  0000 C CNN
F 1 "PC817" H 4550 1900 50  0000 C CNN
F 2 "Package_SO:SSO-4_6.7x5.1mm_P2.54mm_Clearance8mm" H 4400 1900 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 4600 2100 50  0001 L CNN
	1    4600 2100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4250 2350 4250 2000
Wire Wire Line
	4250 2000 4300 2000
Wire Wire Line
	4300 2200 4300 2150
Wire Wire Line
	4300 2150 4200 2150
Wire Wire Line
	4250 2700 4250 2650
Wire Wire Line
	3950 2700 4250 2700
Wire Wire Line
	4900 2000 5550 2000
Wire Wire Line
	4900 2200 5550 2200
Connection ~ 5550 2200
Wire Wire Line
	1300 5550 1150 5550
Connection ~ 1150 5550
Wire Wire Line
	1150 5550 950  5550
Connection ~ 1150 6150
Wire Wire Line
	1150 6150 950  6150
$Comp
L Device:C C?
U 1 1 60A477DA
P 3400 4750
AR Path="/60A477DA" Ref="C?"  Part="1" 
AR Path="/60357CC4/60A477DA" Ref="C?"  Part="1" 
AR Path="/606C5EA7/60A477DA" Ref="C35"  Part="1" 
F 0 "C35" H 3350 4650 50  0000 R CNN
F 1 "100n" H 3350 4850 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3438 4600 50  0001 C CNN
F 3 "~" H 3400 4750 50  0001 C CNN
	1    3400 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	3150 4600 3400 4600
Connection ~ 3150 4600
Connection ~ 2600 4600
$Comp
L power:Earth #PWR?
U 1 1 6166F1D3
P -1350 -3450
AR Path="/6166F1D3" Ref="#PWR?"  Part="1" 
AR Path="/60357CC4/6166F1D3" Ref="#PWR?"  Part="1" 
AR Path="/606C5EA7/6166F1D3" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H -1350 -3700 50  0001 C CNN
F 1 "Earth" H -1350 -3600 50  0001 C CNN
F 2 "" H -1350 -3450 50  0001 C CNN
F 3 "~" H -1350 -3450 50  0001 C CNN
	1    -1350 -3450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
