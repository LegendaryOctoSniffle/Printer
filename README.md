# Printer

This repository is for the LegendaryOctoSniffle design group. The LegendaryOctoSniffle will be a new 3D delta printer design, inspired by the RepRap [Kossel](http://reprap.org/wiki/Kossel) and [3DR](http://reprap.org/wiki/3DR). See [the invitation](INVITATION.md) if you've been invited to join!

This repository will ultimately include models, images, instructions, parts lists, etc., for the construction of the LegendaryOctoSniffle. Presently, it contains coordinating instructions for the design group who will be creating these materials.

## Goals

The primary design goals will be simplicity of assembly and simplicity of design: the LegendaryOctoSniffle will include a 3D printed structural top and base (inspired by the 3DR), magnetic effector joints, and a lead-screw drive. Aside from waiting for glue to dry, a practiced individual should be able to assemble the LegendaryOctoSniffle in one hour; a novice should be able to assemble it in less than four hours.

A secondary goal of the LegendaryOctoSniffle is to be a [RepRap machine](http://reprap.org/wiki/RepRap_Machines), like the Kossel, 3DR, and other machines that it is inspired by. The main requirement for this goal will be the licensing restrictions of any parts that the design group borrows from: GPL licensed parts will certainly be compatible with the RepRap project, and other licenses may also be suitable.

Another secondary goal of the printer is that it should be inexpensive. The basic build cost will be under $300.

## Schedule

We will meet once a month for 4 or 5 months. The basic structure will be:

1. We'll buy some parts for the upcoming meeting.
2. We'll explore the function of those parts.
3. (Optional) We'll design the 3D printed parts necessary to assemble your purchased parts together. You can contribute to the design of these parts or just use other people's designs. Multiple people can independently design their own parts, working alone or together with others. And in the end, we don't have to settle on one "final" design: different people can use different solutions that they like best. Additionally, some parts can be taken directly from existing designs on the internet.
4. Send me your designs a week before the next meeting, and I'll have them printed for you. Or you can print them on your own if you have access to a 3D printer through a library, or work, etc.

### March 11th, 1:10PM, Suzallo Library, University of Washington

I'll be reserving a group study room at the Suzallo Library. I'll pick the room on March 1st, based on the number of people planning to attend. Go ahead and purchase your [initial parts for March 11th](#parts). I've received mine, and I'm excited! You might not have to bring all of your parts every time, but for this one do bring all of the parts that you receive. I received mine within a week of my order, but if you haven't received all of them by March 11th it won't be a big problem.

I'll refer to [this video](https://youtu.be/KroO4_xwKcs) to explain some of the parts that we'll be buying. Some of the parts and mechanisms will be different, but the basics will be the same.

The goal for the first meeting will be to create a working sled drive, minus the 3D printed parts. In the video above, the sleds are the orange things moving up and down the square rails.

The printer in the video uses a belt drive: the sleds are attached to a belt which is turned by motors in the base of the printer. The printer that we're making won't be using a belt: it will use a heavy threaded rod that's specially designed for driving precision movements.

#### Parts

For our first meeting, we'll be assembling one "leg" of our printer. Though the parts list below is sufficient for one leg of the printer, we'll eventually be ordering three of all of the quantities provided below.

* T8x2 Leadscrew w/nut (400mm) (x1)
  This will be the threaded rod that will move each of our sleds up and down. We'll couple the motor to one end, and secure the length of the rod with a bearing that lets it turn freely. The x2 doesn't mean to buy 2 (yet), it designates the number of threads on the rod. [Ebay](https://www.ebay.com/itm/322001200138?var=510932183194)
* 8mm pillow block bearing. (x2)
  These are the bearings that will keep the rod aligned in place while letting it turn freely. Buy two. [Ebay](https://www.ebay.com/itm/2X-8mm-pillow-block-Self-aligning-bearing-mounted-support-3D-printer-CNC-Reprap-/322008974125). The linked item is a 2 pack: you can buy just one two pack.
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
