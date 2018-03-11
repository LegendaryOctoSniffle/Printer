# Meeting 01

Go ahead and purchase your [initial parts for March 11th](#parts). I've received mine, and I'm excited! You might not have to bring all of your parts every time, but for this one do bring all of the parts that you receive. I received mine within a week of my order, but if you haven't received all of them by March 11th it won't be a big problem.

I'll refer to [this video](https://youtu.be/KroO4_xwKcs) to explain some of the parts that we'll be buying. Some of the parts and mechanisms will be different, but the basics will be the same.

The goal for the first meeting will be to create a working sled drive, minus the 3D printed parts. In the video above, the sleds are the orange things moving up and down the square rails.

The printer in the video uses a belt drive: the sleds are attached to a belt which is turned by motors in the base of the printer. The printer that we're making won't be using a belt: it will use a heavy threaded rod that's specially designed for driving precision movements.

## Parts

For our first meeting, we'll be assembling one "leg" of our printer. Though the parts list below is sufficient for one leg of the printer, we'll eventually be ordering three of all of the quantities provided below.

* T8x2 Leadscrew w/nut (400mm) (x1)
  This will be the threaded rod that will move each of our sleds up and down. We'll couple the motor to one end, and secure the length of the rod with a bearing that lets it turn freely. The x2 doesn't mean to buy 2 (yet), it designates the number of threads on the rod. [Ebay](https://www.ebay.com/itm/322001200138?var=510932183194)
* 8mm pillow block bearing. (x2)
  These are the bearings that will keep the rod aligned in place while letting it turn freely. Buy two. [Ebay](https://www.ebay.com/itm/2X-8mm-pillow-block-Self-aligning-bearing-mounted-support-3D-printer-CNC-Reprap-/322008974125). The linked item is a 2 pack: you can buy just one two pack. [Alternate Ebay listing](https://www.ebay.com/itm/2pcs-KP08-P08-8mm-Diameter-Bore-Self-Aligning-Pillow-Block-Bearing-/132306260310): if the first listing sells out, you can buy also buy this from the seller of the LM8UU bearings.
* 2020 Aluminum Extrusion (600mm) (x1)
  A mainstay of 3D printer construction. You'll see why. We'll use these as the vertical supports for our printer, connecting its structural top and bottom. [Ebay](https://www.ebay.com/itm/322880737350)
* Stepper Motor (Nema17, 1.7A) (x1)
  Stepper motors are built for precise, strong movement. Nema is a common standard for sizing stepper motors, and there are various Nema sizes. Additionally, stepper motors are rated by amperage. We'll be using a 1.7A Nema17 motor. [Ebay](https://www.ebay.com/itm/321966121485)
* 5mm to 8mm shaft coupler (x1)
  These will couple the 5mm shaft of our drive motor to the 8mm leadscrew. [Ebay](https://www.ebay.com/itm/321966928277)
* Endstop Switch (x1)
  When the printer first turns on, it doesn't know how far up or down the sleds are on the rods. To find out, it moves the sleds all the way up the rods until they make contact with a switch. When the sleds make contact with the switch, the printer knows the exact position of the sled: it's at the top of its rod. [Ebay](http://r.ebay.com/yveNca) The linked item is a three pack: it's got all the endstop switches we'll need for all three legs of the printer.
* 8mm by 400mm guide rod (x1)
  To drive our sled up and down, we'll mount it to the turning lead screw. But in order to keep the sled from turning, we'll need a second rod to guide it. [Ebay](https://www.ebay.com/itm/322454805576). We won't be making any other purchases from this seller, so I would recommend buying all three now.
* LM8UU 8mm linear bearing (x1)
  For our sled to slide up and down the guide rod, we'll need to equip it with a linear bearing. [Ebay](https://www.ebay.com/itm/141843551594) The linked item is a four pack. We'll need three total for all three legs, so you'll get them all in this one purchase.
  
Most of the items that I've linked to are sold by Zyltech. We'll be making most of our subsequent purchases from Zyltech as well. Some of their items offer a combined shipping discount. If you want to take advantage of free shipping then you can order up to three of all of the items I've listed from Zyltech, unless it's already a multipack: we'll need them for the other two legs.

## Outline

* Review of project goals and methods
* Types of printers
  * Fused Deposition Modeling
  * Stereo Lithography
  * Laser Sintering
  * Additive vs. subtractive manufacturing
* Parts of the delta printer
  * Structural elements
    * Point out all the joints and how they're connected
  * Sleds/Carriages
    * Belt drive
    * Idler
    * Gear
    * Effector joints
    * Wheels
  * Stepper motor
    * What a stepper motor is
    * Difference from a servo
  * End stops
    * Absolute vs relative movement
    * Mention auto leveling
  * Effector
    * Effector arms and effector joints
    * The hot end
      * The hot end of the hot end
      * The cold end of the hot end
    * Single vs dual (or more!)
  * Extruder
    * The plastic tube
    * Bowden vs. direct drive
      * Weight
      * Elasticity, nozzle leak, and retraction
  * The computer
    * RAMPS vs...
    * Connects power, end stop switches, and motor control
    
* FDM printer geometries
  * Cartesian
    * [Video](https://www.youtube.com/watch?v=AomaNIpup30)
  * Delta
  * Complexity of software vs. complexity of assembly
  * Weird effects of delta printer math
* Printing a part
  * Selecting a model (stl)
  * Slicing
    * Brief overview of settings
  * The file that's generated
  * Transfering the file to the printer
* Our goal before the next session
  * Show 3DR printed top/bottom
  * Mock up assembly of parts, demonstrate lead screw drive
  * Comments on parameters for the computer software
  * Sled/carriage, with insets for effector joint magnets
    * Has to capture the lead screw nut
    * Has to capture linear bearing
  * Mount to hold the end stop switch
  * Mount to hold the pillow block bearing
  * Mount to hold the rod
* OpenSCAD basics
  * A cube
  * A cylinder
  * Translation
  * Rotation
  * Addition
  * Subtraction
  * The exclamation mark
  * Units
  * Don't worry about the floor
  * Don't worry about print rotation
