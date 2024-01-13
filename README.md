# Pluriboom 16mm Battery Packs
Battery pack designs with replaceable cells for use with 16mm cameras

![battery packs](https://github.com/kamranjon/pluriboom-16mm-battery-packs/assets/3966239/7c333d91-380e-48c7-97ca-5c4fab63e699)

## Problem
Many 16mm cameras rely on battery packs that are no longer available or are prohibitively expensive. Often times these packs will just eventually die and then become trash. To that end I decided to design a new pack which could utilize replaceable cells, and be built for an affordable price. 

**These packs do not charge batteries** - I recommend Nitecore brand for charging 18650 batteries, they also work for NIMH batteries - but really any brand NIMH charger will do for AA's.

## Solution
In this repository you will find the STL files needed to 3d print your own 16mm camera battery packs. 

- My first iteration was a design specific to the Arri 16s camera - to utilize 7 x **NIMH AA battery cells** - which I use for quite a few other devices - and so is rather convenient. You can find those under the NIMH directory.
- The second iteration is a more universal pack - this utilizes **button top protected 18650 lithium-ion cells** -  this pack is more complex as it involves a voltage regulator, a power button and a voltmeter. This pack can be used with any number of cameras that utilize a 4-pin xlr connector - as long as they draw 5 amps or less. You can easily open the pack using the 4 allen screws on top to modify the output voltage for use with a specific camera.  You can find the files for this pack under the 18650 directory. For quality 18650 Cells I recommend [the 18650 Battery Store](https://www.18650batterystore.com/collections/protected-button-top-18650-batteries) - ensure you are buying Protected Button Top Cells - as the battery holder will only fit those size cells (69mm)

## Parts
To build one of these battery packs - you will need a few supplies - I will list those below. I will generally list part numbers and only list links if they are to stable vendors like Mouser or Digi-Key.

### Nimh Parts
- 8 x M3 8mm allen head screws
- 2 x M3 8mm tapered allen head screws
- 8 x M3 Threaded inserts for 3d printing (I prefer Ruthex brand)
- 1 x 4 pin Female XLR chassis mount jack (Neutrik is best quality - the files are modeled after the Neutrik NC4FP-1 - so if your jacks [match he dimensions in the datasheet](https://www.neutrik.com/media/8436/download/nc4fp-1-1.pdf?v=1) - they should work fine)
- 7 x Battery Contact Spring Solder Lug ([SN-T5-1 at Digi-Key](https://www.digikey.com/en/products/detail/mpd-memory-protection-devices/SN-T5-1/2439583))
- 7 x Battery Contact Solid Solder Lug ([SN-T5-2 at Digi-Key](https://www.digikey.com/en/products/detail/mpd-memory-protection-devices/SN-T5-2/2439587))
- 6 inches of 5mm silver strips OR an equivalent amount of braided 22awg wire -- to join batteries in series 
- Extra 22awg wire and heat shrink for protecting the soldering joints to the XLR jack.

### 18650 Parts
- 8 x M3 8mm allen head screws
- 8 x M3 Threaded inserts for 3d printing (I prefer Ruthex brand)
- 6 x M2 6mm allen head screws
- 6 x M2 Threaded inserts for 3d printing (I prefer Ruthex brand)
- 1 x 4 pin female XLR cable connector (Neutrik is best quality - I prefer the NC4FX)
- 2ft of XLR cabling
- 1 x PG9 Waterproof Cable Gland
- 1 x 5a Voltage Regulator (XL4015 - I used the HiLetgo brand with good results)
- 1 x Digital LED Voltmeter PRT-14313 ([best price can be found at Mouser](https://www.mouser.com/ProductDetail/SparkFun/PRT-14313))
- 4 x Battery Contact Spring Solder Lug ([NT5-1-ND at Digi-Key](https://www.digikey.com/en/products/detail/mpd-memory-protection-devices/SN-T5-1/2439583))
- 4 x Battery Contact Solid Solder Lug ([SN-T5-2 at Digi-Key](https://www.digikey.com/en/products/detail/mpd-memory-protection-devices/SN-T5-2/2439587))
- 3 inches of 5mm silver strips OR an equivalent amount of braided 22awg wire -- to join batteries in series
- Extra 22awg wire and heat shrink for protecting the soldering joints to the power button.
