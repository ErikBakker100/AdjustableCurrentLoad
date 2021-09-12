EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title "SPICE Simulation Symbols"
Date "2021-01-31"
Rev "0.1"
Comp ""
Comment1 "Only used for simulation"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L pspice:VSOURCE V1
U 1 1 601C2043
P 2150 2100
F 0 "V1" H 2378 2146 50  0000 L CNN
F 1 "VSOURCE" H 2378 2055 50  0000 L CNN
F 2 "" H 2150 2100 50  0001 C CNN
F 3 "~" H 2150 2100 50  0001 C CNN
F 4 "V" H 2150 2100 50  0001 C CNN "Spice_Primitive"
F 5 "sin(0 230 50)" H 2150 2100 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2150 2100 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2150 2100
	1    0    0    -1  
$EndComp
Text GLabel 2650 1800 2    50   Input ~ 0
LINE
Text GLabel 2650 2400 2    50   Input ~ 0
NEUTRAL
Wire Wire Line
	2650 2400 2150 2400
Wire Wire Line
	2150 1800 2650 1800
Text Notes 2150 2900 0    50   ~ 0
.tran 1u 1m
$EndSCHEMATC
