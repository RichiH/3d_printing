; home printer for shipping
M73 P0 R6 ; change percent done
G90 ; use absolute coordinates
M104 S0 ; turn off temperature
M140 S0 ; turn off heatbed
M73 P33 R6 ; change percent done
M106 S200 ; turn on fans
G28 ; home the xyz
M73 P66 R6 ; change percent done
G0 Z20 F3000 ; send printhead to the parking pos
G1 X110 Y100 F10000 ; send printhead to the parking position
G4 S300 ; sleep until cold
M107 ; turn off fan
M84 ; disable motors
M73 P100 R6 ; change percent done
M1 S100000 TURN_ME_OFF_NOW ; stop
G4 S100000 ; sleep
M4;
