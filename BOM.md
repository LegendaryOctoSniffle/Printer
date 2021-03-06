Parts Group 1:

* T8x8 Leadscrew w/nut (500mm) (x3)
  This will be the threaded rod that will move each of our sleds up and down. We'll couple the motor to one end, and secure the length of the rod with a bearing that lets it turn freely. The x8 doesn't mean to buy 8, it designates the pitch of the rod threads. [Ebay](https://www.ebay.com/itm/T8x8-Lead-Screw-Pitch-2-Lead-8-Stainless-Rod-Linear-Rail-Bar-Shaft-w-Brass-Nut/372243139945)
* 8mm by 500mm guide rod (x6)
  To drive our sled up and down, we'll mount it to the turning lead screw. But in order to keep the sled from turning, we'll need a second rod to guide it. [Ebay](https://www.ebay.com/itm/8mm-CNC-3D-Printer-Axis-Chromed-Smooth-Rod-Steel-Linear-Rail-Shaft-300-400-500mm/192537955768).

Parts Group 2:

* 8mm pillow block bearing. (x3)
  These are the bearings that will keep the rod aligned in place while letting it turn freely. Buy three. [Ebay](https://www.ebay.com/itm/2X-8mm-pillow-block-Self-aligning-bearing-mounted-support-3D-printer-CNC-Reprap-/322008974125). The linked item is a 2 pack.
* 2020 Aluminum Extrusion (600mm) (x3)
  A mainstay of 3D printer construction. You'll see why. We'll use these as the vertical supports for our printer, connecting its structural top and bottom. [Ebay](https://www.ebay.com/itm/322880737350)
* Stepper Motor (Nema17, 1.7A) (x4)
  Stepper motors are built for precise, strong movement. Nema is a common standard for sizing stepper motors, and there are various Nema sizes. Additionally, stepper motors are rated by amperage. We'll be using a 1.7A Nema17 motor. [Ebay](https://www.ebay.com/itm/321966121485)
* 5mm to 8mm shaft coupler (x3)
  These will couple the 5mm shaft of our drive motor to the 8mm leadscrew. [Ebay](https://www.ebay.com/itm/321966928277)
* Endstop Switch (x3)
  When the printer first turns on, it doesn't know how far up or down the sleds are on the rods. To find out, it moves the sleds all the way up the rods until they make contact with a switch. When the sleds make contact with the switch, the printer knows the exact position of the sled: it's at the top of its rod. [Ebay](https://www.ebay.com/itm/3-PCS-Mechanical-Endstop-Switch-LED-RepRap-3D-Printer-Prusa-Mendel-RAMPS-1-4-CNC/321996978263) The linked item is a three pack.
* LM8UU 8mm linear bearing (x6)
  For our sled to slide up and down the guide rod, we'll need to equip it with a linear bearing. [Ebay](https://www.ebay.com/itm/141843551594) The linked item is a four pack.

Parts Group 3:

* Power supply! 30 amps will be enough for a heated bed, plus dual extrusion (print two colors) if you decide to upgrade later. [Ebay](https://www.ebay.com/itm/Zyltech-12V-30A-360W-power-supply-PSU-for-3D-Printer-CNC-Arduino-Reprap-etc/322100961991?hash=item4afeb6a2c7:g:rOkAAOSwT8JazXm5)
* Filament. Take your pick from [zyltech](https://www.ebay.com/sch/m.html?_odkw=&_ssn=zyltech&_armrs=1&_osacat=0&_from=R40&_trksid=p2046732.m570.l1313.TR7.TRC1.A0.H0.Xpla+1.75.TRS0&_nkw=pla+1.75&_sacat=0) on Ebay or on [Amazon](https://smile.amazon.com/s/ref=nb_sb_noss_2?url=search-alias%3Daps&field-keywords=PLA+1.75+filament). Get your color of choice, and anything with a decent rating will do. Don't get a specialty wood, metal, or fibre filament. It's important to get 1.75mm PLA. Get a full kilogram. Polylactic Acid (PLA) is plant-based, it has a fairly low melting temperature, and it doesn't shrink much as it cools.
* Control board! The RepRap Arduino Mega Pololu Shield (RAMPS) controller is based on an Arduino Mega 2560, with a 3D printer controlling "shield". Basically, we load a program onto the Arduino that has all of the logic of controlling the printer, and the Arduino talks to a second card which has all of the hardware for interfacing with the motors and heating elements. [ebay](https://www.ebay.com/itm/RAMPS-1-4-3D-PRINTER-CONTROLLER-Mega-2560-Atmega16u2-5x-A4988-2A-Drivers-More/321974766842?hash=item4af7310cfa:g:svkAAOSwXRxazOJ4)
* LCD Controller. This LCD display includes an SD card reader and a wheel/button that lets you control the printer without attacking your computer. [ebay](https://www.ebay.com/itm/RAMPS-1-4-3D-PRINTER-2004-LCD-Smart-Controller/322017450535) Or if you wanted to be really cool, you could spring for this high(er) definition LCD: [ebay](https://www.ebay.com/itm/Genuine-ZYLtech-RAMPS-1-4-3D-PRINTER-12864-LCD-smart-controller/322148400468)
* Hot end. This is the part that we heat up and push plastic through. There are several manufacturers of hot ends, but most of them make clones of E3D. The V6 is E3D's flagship hot end, and so most manufacturers clone that version. Consequently, most printers are designed to accomodate a "V6 style" hotend. As simple as they are, hotends are somewhat prone to failure, and so it's worth it to spend a few extra dollars to get a decent one. For our printer, we will also need a "Bowden" style setup, which refers to separating the hotend of the extruder from the motor that is pushing filament through it. I'd suggest buying from Zyltech. [ebay](https://www.ebay.com/itm/V6-Style-Hotend-1-75mm-Bowden-style-Extruder-Conversion-Kit/322658052164?hash=item4b1feb2844:g:cFIAAOSwGz9asCIE)
* Cold end. The "cold end" of the extruder is the part that pushes the plastic filament into the hot end. Here is a suitable one: [ebay](https://www.ebay.com/itm/US-MK8-All-metal-1-75mm-Remote-Extruder-Kit-For-3D-Printer-Makerbot-Reprap/371731762554). Either the "right" or "left" direction is fine.
* Build plate. The printer has to print "on" to a surface. Although it's not strictly necessary, an ideal build plate is heated to help keep the print warm through the duration of the entire print: this helps keep it from warping. Delta printers use round build plates. I would recommend buying [this](http://a.co/3r2tx1Q) one: people have knocked off stars for various reasons, none of which actually matter too much for our printer.
