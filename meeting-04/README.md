# Meeting 04 - Saturday, August 4th. 1PM-4PM. University of Washington Campus (room TBD)

In this (final) meeting, we will complete the *electrical* components of our printer. We're likely to use up all three hours calibrating our printers.

## Parts

This list is *still under construction*

* Power supply! 30 amps will be enough for a heated bed, plus dual extrusion (print two colors) if you decide to upgrade later. [Ebay](https://www.ebay.com/itm/Zyltech-12V-30A-360W-power-supply-PSU-for-3D-Printer-CNC-Arduino-Reprap-etc/322100961991?hash=item4afeb6a2c7:g:rOkAAOSwT8JazXm5)
* Filament. Take your pick from [zyltech](https://www.ebay.com/sch/m.html?_odkw=&_ssn=zyltech&_armrs=1&_osacat=0&_from=R40&_trksid=p2046732.m570.l1313.TR7.TRC1.A0.H0.Xpla+1.75.TRS0&_nkw=pla+1.75&_sacat=0) on Ebay or on [Amazon](https://smile.amazon.com/s/ref=nb_sb_noss_2?url=search-alias%3Daps&field-keywords=PLA+1.75+filament). Get your color of choice, and anything with a decent rating will do. Don't get a specialty wood, metal, or fibre filament. It's important to get 1.75mm PLA. Get a full kilogram. Polylactic Acid (PLA) is plant-based, it has a fairly low melting temperature, and it doesn't shrink much as it cools.
* Control board! The RepRap Arduino Mega Pololu Shield (RAMPS) controller is based on an Arduino Mega 2560, with a 3D printer controlling "shield". Basically, we load a program onto the Arduino that has all of the logic of controlling the printer, and the Arduino talks to a second card which has all of the hardware for interfacing with the motors and heating elements. [ebay](https://www.ebay.com/itm/RAMPS-1-4-3D-PRINTER-CONTROLLER-Mega-2560-Atmega16u2-5x-A4988-2A-Drivers-More/321974766842?hash=item4af7310cfa:g:svkAAOSwXRxazOJ4)
* LCD Controller. This LCD display includes an SD card reader and a wheel/button that lets you control the printer without attacking your computer. [ebay](https://www.ebay.com/itm/RAMPS-1-4-3D-PRINTER-2004-LCD-Smart-Controller/322017450535)
* Hot end. This is the part that we heat up and push plastic through. There are several manufacturers of hot ends, but most of them make clones of E3D. The V6 is E3D's flagship hot end, and so most manufacturers clone that version. Consequently, most printers are designed to accomodate a "V6 style" hotend. As simple as they are, hotends are somewhat prone to failure, and so it's worth it to spend a few extra dollars to get a decent one. For our printer, we will also need a "Bowden" style setup, which refers to separating the hotend of the extruder from the motor that is pushing filament through it. I'd suggest buying from Zyltech. [ebay](https://www.ebay.com/itm/V6-Style-Hotend-1-75mm-Bowden-style-Extruder-Conversion-Kit/322658052164?hash=item4b1feb2844:g:cFIAAOSwGz9asCIE)
* Build plate
