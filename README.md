# Pluriboom 16mm Battery Packs
Battery pack designs with replaceable cells for use with 16mm cameras


## Problem
Many 16mm cameras rely on battery packs that are no longer available or are prohibitively expensive. Often times these packs will just die over time and then become trash. To that end I decided to design a new pack which could utilize replaceable cells, and be built for an affordable price. 

**This pack does not charge batteries**

## Solution
In this repository you will find the STL files needed to 3d print your own 16mm camera battery packs. 

My first iteration was a design specific to the Arri 16s camera - to utilize 7 x **NIMH AA battery cells** - which I use for quite a few other devices - and so is rather convenient. You can find those under the NIMH directory. . 

The second iteration is a more universal pack - this utilizes **button top protected 18650 lithium-ion cells** -  this pack is more complex as it involves a voltage regulator, a power button and a voltmeter. This pack can be used with any number of cameras that utilize a 4-pin xlr connector - as long as they draw 5 amps or less. You can find the files for this pack under the 18650 directory.

## Parts
To build one of these battery packs - you will need a few supplies - I will list those below. I will generally list part numbers and only list links if they are to stable vendors like Mouser or Digi-Key.

### Nimh Parts
- 8 x M3 8mm allen head screws
- 2 x M3 8mm tapered allen head screws
- 8 x M3 Threaded inserts for 3d printing (I prefer Ruthex brand)
- 1 x 4 pin Female XLR chassis mount jack (Neutrik is best quality - the files are modeled after the Neutrik NC4FP-1 - so if your jacks [match he dimensions in the datasheet](https://www.neutrik.com/media/8436/download/nc4fp-1-1.pdf?v=1) - they should work fine)
- 6 inches of 5mm silver strips OR an equivalent amount of braided 22awg wire -- to join batteries in series 
- Extra 22awg wire and heat shrink for protecting the soldering joints to the XLR jack.


