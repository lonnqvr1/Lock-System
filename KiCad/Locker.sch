EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:arduinos
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Arduino_Nano U?
U 1 1 590442FD
P 5400 3200
F 0 "U?" H 5400 2250 60  0000 C CNN
F 1 "Arduino_Nano" H 5400 3950 60  0000 C CNN
F 2 "" H 5015 3485 60  0000 C CNN
F 3 "" H 5015 3485 60  0000 C CNN
	1    5400 3200
	1    0    0    -1  
$EndComp
$Comp
L Relay_Module U?
U 1 1 590460FC
P 5350 1500
F 0 "U?" H 5350 800 60  0000 C CNN
F 1 "Relay_Module" H 5350 2100 60  0000 C CNN
F 2 "" H 5350 1500 60  0000 C CNN
F 3 "" H 5350 1500 60  0000 C CNN
	1    5350 1500
	1    0    0    -1  
$EndComp
$Comp
L RFID_module U?
U 1 1 59046424
P 2700 3500
F 0 "U?" H 2700 3000 60  0000 C CNN
F 1 "RFID_module" H 2695 3900 60  0000 C CNN
F 2 "" H 2720 3500 60  0000 C CNN
F 3 "" H 2720 3500 60  0000 C CNN
	1    2700 3500
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 590465AD
P 8200 2650
F 0 "P?" H 8200 2800 50  0000 C CNN
F 1 "LEDs_Personal" V 8300 2650 50  0000 C CNN
F 2 "" H 8200 2650 50  0000 C CNN
F 3 "" H 8200 2650 50  0000 C CNN
	1    8200 2650
	1    0    0    -1  
$EndComp
$Comp
L Electronic_Lock U?
U 1 1 59047245
P 8300 1450
F 0 "U?" H 8295 1200 60  0000 C CNN
F 1 "Electronic_Lock" H 8330 1705 60  0000 C CNN
F 2 "" H 8300 1450 60  0000 C CNN
F 3 "" H 8300 1450 60  0000 C CNN
	1    8300 1450
	-1   0    0    1   
$EndComp
$Comp
L Electronic_Lock U?
U 1 1 59047367
P 8300 800
F 0 "U?" H 8295 550 60  0000 C CNN
F 1 "Electronic_Lock" H 8330 1055 60  0000 C CNN
F 2 "" H 8300 800 60  0000 C CNN
F 3 "" H 8300 800 60  0000 C CNN
	1    8300 800 
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 59047B33
P 8200 2050
F 0 "P?" H 8200 2200 50  0000 C CNN
F 1 "LEDs_Workwear" V 8300 2050 50  0000 C CNN
F 2 "" H 8200 2050 50  0000 C CNN
F 3 "" H 8200 2050 50  0000 C CNN
	1    8200 2050
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 59047E5D
P 7200 2650
F 0 "P?" H 7200 2800 50  0000 C CNN
F 1 "PWR" V 7300 2650 50  0000 C CNN
F 2 "" H 7200 2650 50  0000 C CNN
F 3 "" H 7200 2650 50  0000 C CNN
	1    7200 2650
	1    0    0    -1  
$EndComp
Text Label 6550 2600 0    60   ~ 0
5V_nano
Text Label 6550 2700 0    60   ~ 0
GND_nano
$Comp
L CONN_01X02 P?
U 1 1 590482C5
P 3800 1300
F 0 "P?" H 3800 1450 50  0000 C CNN
F 1 "PWR" V 3900 1300 50  0000 C CNN
F 2 "" H 3800 1300 50  0000 C CNN
F 3 "" H 3800 1300 50  0000 C CNN
	1    3800 1300
	-1   0    0    1   
$EndComp
Text Label 4750 1250 2    60   ~ 0
5V_relays
Text Label 4750 1350 2    60   ~ 0
GND_relays
$Comp
L CONN_01X02 P?
U 1 1 59048864
P 9300 2750
F 0 "P?" H 9300 2900 50  0000 C CNN
F 1 "PWR" V 9400 2750 50  0000 C CNN
F 2 "" H 9300 2750 50  0000 C CNN
F 3 "" H 9300 2750 50  0000 C CNN
	1    9300 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 2700 8650 2700
Text Label 8650 2700 0    60   ~ 0
3V3_RFID
Wire Wire Line
	9100 2800 8650 2800
Text Label 8650 2800 0    60   ~ 0
GND_RFID
$Comp
L CONN_01X02 P?
U 1 1 59048D73
P 6850 800
F 0 "P?" H 6850 950 50  0000 C CNN
F 1 "PWR" V 6950 800 50  0000 C CNN
F 2 "" H 6850 800 50  0000 C CNN
F 3 "" H 6850 800 50  0000 C CNN
	1    6850 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 750  6650 750 
Text Label 6150 750  0    60   ~ 0
12V_Locks
Text Label 6150 850  0    60   ~ 0
GND_Locks
Wire Wire Line
	4000 1250 4950 1250
Wire Wire Line
	4000 1350 4950 1350
Wire Wire Line
	4700 3000 4450 3000
Wire Wire Line
	4450 3000 4450 1750
Wire Wire Line
	4450 1750 4950 1750
Wire Wire Line
	4700 3100 4300 3100
Wire Wire Line
	4300 3100 4300 1650
Wire Wire Line
	4300 1650 4950 1650
Wire Wire Line
	4700 3200 4150 3200
Wire Wire Line
	4150 3200 4150 1550
Wire Wire Line
	4150 1550 4950 1550
Wire Wire Line
	4700 3300 4000 3300
Wire Wire Line
	4000 3300 4000 1450
Wire Wire Line
	4000 1450 4950 1450
$Comp
L CONN_01X03 P?
U 1 1 5908CC47
P 2650 4550
F 0 "P?" H 2650 4750 50  0000 C CNN
F 1 "Servo" V 2750 4550 50  0000 C CNN
F 2 "" H 2650 4550 50  0000 C CNN
F 3 "" H 2650 4550 50  0000 C CNN
	1    2650 4550
	-1   0    0    1   
$EndComp
Text Label 4450 2550 1    60   ~ 0
Relay_signal_leds2
Text Label 4300 2550 1    60   ~ 0
Relay_signal_leds1
Text Label 4150 2550 1    60   ~ 0
Relay_signal_lock2
Text Label 4000 2550 1    60   ~ 0
Relay_signal_lock1
NoConn ~ 4700 2600
NoConn ~ 4700 2700
Wire Wire Line
	4700 2900 3350 2900
Wire Wire Line
	3350 2700 3350 2900
Wire Wire Line
	3350 2900 3350 3400
Wire Wire Line
	4600 2300 5950 2300
Wire Wire Line
	5950 2300 6200 2300
Wire Wire Line
	6200 2300 6500 2300
Wire Wire Line
	6200 2700 6200 2300
Wire Wire Line
	6100 2700 6150 2700
Wire Wire Line
	6150 2700 6200 2700
Connection ~ 6200 2300
Wire Wire Line
	4700 3900 4000 3900
Wire Wire Line
	4000 3900 4000 3700
Wire Wire Line
	4000 3700 3000 3700
Wire Wire Line
	4700 4000 3850 4000
Wire Wire Line
	3850 4000 3850 3600
Wire Wire Line
	3850 3600 3000 3600
Wire Wire Line
	6100 4000 6100 4200
Wire Wire Line
	6100 4200 3250 4200
Wire Wire Line
	3250 4200 3250 3800
Wire Wire Line
	3250 3800 3000 3800
Wire Wire Line
	3000 3900 3700 3900
Wire Wire Line
	3700 3900 3700 3800
Wire Wire Line
	3700 3800 4700 3800
NoConn ~ 3000 3500
Wire Wire Line
	3000 3300 3250 3300
Wire Wire Line
	3250 3300 3250 3500
Wire Wire Line
	3250 3500 4050 3500
Wire Wire Line
	4050 3500 4050 3700
Wire Wire Line
	4050 3700 4700 3700
Wire Wire Line
	3000 3200 3100 3200
Wire Wire Line
	3100 3200 3100 4350
Wire Wire Line
	3100 4350 6250 4350
Wire Wire Line
	6250 4350 6250 3900
Wire Wire Line
	6250 3900 6100 3900
Wire Wire Line
	3350 3400 3000 3400
Connection ~ 3350 2900
Wire Wire Line
	2850 4450 3550 4450
Wire Wire Line
	3350 2700 4600 2700
Wire Wire Line
	4600 2700 4600 2300
Wire Wire Line
	3550 4450 3550 3400
Wire Wire Line
	3550 3400 4700 3400
Text Label 4550 4200 0    60   ~ 0
SCK
Text Label 4550 4350 0    60   ~ 0
3V3
Text Label 2900 4450 0    60   ~ 0
Servo_Signal
Wire Wire Line
	6100 2150 6100 2600
Wire Wire Line
	2850 4550 6400 4550
Wire Wire Line
	6400 4550 6400 2150
Wire Wire Line
	6100 2150 6400 2150
Wire Wire Line
	6400 2150 7300 2150
Wire Wire Line
	7300 2150 7600 2150
Connection ~ 6100 2150
Wire Wire Line
	6500 4650 2850 4650
Wire Wire Line
	6500 1650 6500 2300
Wire Wire Line
	6500 2300 6500 4650
NoConn ~ 4700 2800
NoConn ~ 6100 2800
NoConn ~ 6100 2900
NoConn ~ 6100 3000
NoConn ~ 6100 3100
NoConn ~ 6100 3200
NoConn ~ 6100 3300
NoConn ~ 6100 3400
NoConn ~ 6100 3500
NoConn ~ 6100 3600
NoConn ~ 6100 3700
NoConn ~ 6100 3800
Wire Wire Line
	6050 850  6050 1100
Wire Wire Line
	6050 1100 6050 1400
Wire Wire Line
	6050 1400 5750 1400
Wire Wire Line
	5750 1500 7450 1500
NoConn ~ 5750 1000
NoConn ~ 5750 1300
Wire Wire Line
	5750 1100 6050 1100
Wire Wire Line
	6050 850  6650 850 
Wire Wire Line
	5850 750  5850 1000
Wire Wire Line
	5850 1000 7600 1000
Wire Wire Line
	7600 1000 7750 1000
Connection ~ 6050 1100
Wire Wire Line
	7000 2700 6150 2700
Connection ~ 6150 2700
Wire Wire Line
	6100 2600 7000 2600
Wire Wire Line
	7950 1300 7600 1300
Wire Wire Line
	7600 1300 7600 1000
Connection ~ 7600 1000
Wire Wire Line
	7950 1400 7450 1400
Wire Wire Line
	7450 1400 7450 1500
Wire Wire Line
	7750 1000 7750 650 
Wire Wire Line
	7750 650  7950 650 
Wire Wire Line
	7200 750  7950 750 
Wire Wire Line
	7200 750  7200 1200
Wire Wire Line
	7200 1200 5750 1200
Wire Wire Line
	7300 2150 7300 2000
Wire Wire Line
	7300 2000 8000 2000
Connection ~ 6400 2150
Wire Wire Line
	7600 2150 7600 2600
Wire Wire Line
	7600 2600 8000 2600
Connection ~ 7300 2150
Wire Wire Line
	5950 1700 5950 2000
Wire Wire Line
	5950 2000 5950 2300
Wire Wire Line
	5950 1700 5750 1700
Connection ~ 5950 2300
Wire Wire Line
	5950 2000 5750 2000
Connection ~ 5950 2000
Wire Wire Line
	8000 2100 7500 2100
Wire Wire Line
	7500 2100 7500 1800
Wire Wire Line
	7500 1800 5750 1800
Wire Wire Line
	8000 2700 7450 2700
Wire Wire Line
	7450 2700 7450 2100
Wire Wire Line
	7450 2100 5750 2100
NoConn ~ 5750 1900
NoConn ~ 5750 1600
Wire Wire Line
	7600 1500 7800 1500
Wire Wire Line
	7800 1500 7950 1500
Wire Wire Line
	7600 1500 7600 1650
Wire Wire Line
	7600 1650 6500 1650
Connection ~ 6500 2300
Wire Wire Line
	7950 850  7800 850 
Wire Wire Line
	7800 850  7800 1500
Connection ~ 7800 1500
Wire Wire Line
	7950 950  7900 950 
Wire Wire Line
	7900 950  7900 1150
Wire Wire Line
	7900 1150 9200 1150
Text Label 9200 1150 0    60   ~ 0
Limit_switch1
Wire Wire Line
	7950 1600 7800 1600
Wire Wire Line
	7800 1600 7800 1800
Wire Wire Line
	7800 1800 9200 1800
Text Label 9200 1800 0    60   ~ 0
Limit_switch2
Text Label 4100 3500 0    60   ~ 0
Limit_switch1
Wire Wire Line
	4700 3500 4100 3500
Wire Wire Line
	4700 3600 4100 3600
Text Label 4100 3600 0    60   ~ 0
Limit_switch2
$EndSCHEMATC
