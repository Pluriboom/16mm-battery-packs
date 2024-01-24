# [Pluriboom](https://pluriboom.com/) 16mm Battery Packs

Battery pack designs with replaceable cells for use with 16mm cameras

![both-family-photo](https://github.com/Pluriboom/16mm-battery-packs/assets/3966239/07052f8e-24e7-4293-bb45-57f54a8ea0fe)

## Problem

Many 16mm cameras rely on battery packs that are no longer available or are prohibitively expensive. Often times these packs will just eventually die and then become trash. To that end we decided to design a new pack which could utilize replaceable cells, and be built for an affordable price.

**These packs do not charge batteries** - we recommend Nitecore brand for charging 18650 batteries, which also work for NIMH batteries - but really any brand NIMH charger will do for AA's.

## Solution

In this repository you will find the STL files needed to 3d print your own 16mm camera battery packs.

- The first iteration was a design specific to the Arri 16s camera - to utilize 8 x **NIMH AA battery cells** - which can be used for quite a few other devices - and so is rather convenient. Performance of this pack is quite limited, but fine for pulling two or three 100ft rolls of film before the need for a recharge (depending on the capacity of your cells). You can find the files for this pack under [the NIMH directory](https://github.com/Pluriboom/16mm-battery-packs/tree/main/NIMH).
- The second iteration is a more universal pack - this utilizes **button top protected 18650 lithium-ion cells** - this pack is more complex as it involves a voltage regulator, a power button and a voltmeter. This pack can be used with any number of cameras that utilize a 4-pin xlr connector - as long as they draw 5 amps or less. You can easily open the pack using the 4 allen screws on top to modify the output voltage for use with a specific camera. For quality 18650 Cells we recommend [the 18650 Battery Store](https://www.18650batterystore.com/collections/protected-button-top-18650-batteries) - ensure you are buying Protected Button Top Cells - as the battery holder will only fit those size cells (69mm). You can find the files for this pack under [the 18650 directory](https://github.com/Pluriboom/16mm-battery-packs/tree/main/18650).

## Parts

To build one of these battery packs - you will need a few supplies - listed below. We will generally list part numbers and only list links if they are to stable vendors like Mouser or Digi-Key.

### Nimh Parts

- 8 x M3 8mm allen head screws
- 2 x M3 8mm tapered allen head screws
- 2 x M3 nuts
- 8 x M3 Threaded inserts for 3d printing (I prefer Ruthex brand)
- 1 x 4 pin Female XLR chassis mount jack (Neutrik is best quality - the files are modeled after the Neutrik NC4FP-1 - so if your jacks [match he dimensions in the datasheet](https://www.neutrik.com/media/8436/download/nc4fp-1-1.pdf?v=1) - they should work fine)
- 8 x Battery Contact Spring Solder Lug ([SN-T5-1 at Digi-Key](https://www.digikey.com/en/products/detail/mpd-memory-protection-devices/SN-T5-1/2439583))
- 8 x Battery Contact Solid Solder Lug ([SN-T5-2 at Digi-Key](https://www.digikey.com/en/products/detail/mpd-memory-protection-devices/SN-T5-2/2439587))
- 6 inches of 5mm silver strips OR an equivalent amount of braided 22awg wire -- to join batteries in series
- Extra 22awg wire and heat shrink for protecting the soldering joints to the XLR jack.

### 18650 Parts

- 8 x M3 8mm allen head screws
- 8 x M3 Threaded inserts for 3d printing (we prefer Ruthex brand)
- 6 x M2 6mm allen head screws
- 6 x M2 Threaded inserts for 3d printing (we prefer Ruthex brand)
- 1 x 4 pin female XLR cable connector (Neutrik is best quality - we prefer the NC4FX)
- 2ft of XLR cabling
- 1 x PG9 Waterproof Cable Gland
- 1 x 5a Voltage Regulator (XL4015 - we used the HiLetgo brand with good results)
- 1 x Digital LED Voltmeter PRT-14313 ([best price can be found at Mouser](https://www.mouser.com/ProductDetail/SparkFun/PRT-14313))
- 4 x Battery Contact Spring Solder Lug ([NT5-1-ND at Digi-Key](https://www.digikey.com/en/products/detail/mpd-memory-protection-devices/SN-T5-1/2439583))
- 4 x Battery Contact Solid Solder Lug ([SN-T5-2 at Digi-Key](https://www.digikey.com/en/products/detail/mpd-memory-protection-devices/SN-T5-2/2439587))
- 3 inches of 5mm silver strips OR an equivalent amount of braided 22awg wire -- to join batteries in series
- Extra 22awg wire and heat shrink for protecting the soldering joints to the power button.

## Special Thanks

A special thanks to [ffleurey](https://www.thingiverse.com/ffleurey/designs) for their [battery box design](https://www.thingiverse.com/thing:1755397) on thingiverse. Our main modifications to their designs were to make the contacts we were using press-fit instead of requiring glue, switching the batteries to an alternating pattern, and we also modified the bottom plates wiring guides. For the 18650 pack we had to make quite a few changes to support the larger cells.
