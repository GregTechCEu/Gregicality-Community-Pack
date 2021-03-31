#priority 1000

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import mods.jei.JEI;

static mods as string[] = ["minecraft", "gregtech", "gtadditions", "enderio", "nuclearcraft", "advancedrocketry", "libvulpes"];
static size as int = mods.length - 1;

function unify_oredicts (oredict as [IOreDictEntry]) {
    for ore in oredict {

        // Checks if Ore Dict is empty, true = stop
        if (ore.empty != true) { 

            // If more than 1 item in ore dict
            if (ore.itemArray.length > 1) { 
                unify(ore, 0);
            }
        }
    }
}

function unify (ore as IOreDictEntry, p as int) {
    var pos = p;
    var foundMod as bool = false;

    // For every item in the ore dict, check if one is from the <mod>
    for item in ore.itemArray { 

        // check any item is from current mod
        if (item.definition.owner == mods[pos]) {
            foundMod = true;
        }
    }
    
    // If it is from <mod>, remove everything except the item from <mod>, else try next mod until all mods are exhausted
    if (foundMod) {
        for item in ore.itemArray {

            if (item.definition.owner != mods[pos]) {
                ore.remove(item);
                JEI.hide(item);
            }
        }
    } else if (pos < size) {
        pos += 1;
        unify(ore, pos);
    }
}


// Remove Wrong Aluminium
<ore:blockAluminum>.remove(<ore:blockAluminum>.firstItem);
<ore:ingotAluminum>.remove(<ore:ingotAluminum>.firstItem);

// Certus Compatability
<ore:crystalCertusQuartz>.add(<metaitem:gemCertusQuartz>);
<ore:gemCertusQuartz>.remove(<ore:gemCertusQuartz>.firstItem);

// Manganese Dioxide Compatibility
<ore:dustManganeseDioxide>.add(<ore:dustRegularPyrolusite>.firstItem);

// NC Bioplastic -> Polystyrene
<ore:bioplastic>.add(<ore:platePolystyrene>.firstItem); 


unify_oredicts(<ore:ingot*>);
unify_oredicts(<ore:plate*>);
unify_oredicts(<ore:block*>);
unify_oredicts(<ore:dust*>);
unify_oredicts(<ore:gear*>);
unify_oredicts(<ore:stick*>);
unify_oredicts(<ore:crystal*>);
unify_oredicts(<ore:nugget*>);


unify(<ore:bioplastic>, 0);
unify(<ore:itemSilicon>, 0);

            // Unification Blacklist
            // if (ore.name != <ore:blockGlass>.name && ore.name != <ore:blockGlassColorless>.name && ore.name != <ore:blockGlassWhite>.name && ore.name != <ore:blockGlassOrange>.name && ore.name != <ore:blockGlassMagenta>.name
            // && ore.name != <ore:blockGlassLightBlue>.name && ore.name != <ore:blockGlassYellow>.name && ore.name != <ore:blockGlassLime>.name && ore.name != <ore:blockGlassPink>.name && ore.name != <ore:blockGlassGray>.name
            // && ore.name != <ore:blockGlassLightGray>.name && ore.name != <ore:blockGlassCyan>.name && ore.name != <ore:blockGlassPurple>.name && ore.name != <ore:blockGlassBlue>.name && ore.name != <ore:blockGlassBrown>.name
            // && ore.name != <ore:blockGlassGreen>.name && ore.name != <ore:blockGlassRed>.name && ore.name != <ore:blockGlassBlack>.name && ore.name != <ore:fusedQuartz>.name && ore.name != <ore:blockGlassHardened>.name
            // && ore.name != <ore:blockGlassHardenedWhite>.name && ore.name != <ore:blockGlassHardenedOrange>.name && ore.name != <ore:blockGlassHardenedMagenta>.name && ore.name != <ore:blockGlassHardenedLightBlue>.name
            // && ore.name != <ore:blockGlassHardenedYellow>.name && ore.name != <ore:blockGlassHardenedLime>.name && ore.name != <ore:blockGlassHardenedPink>.name && ore.name != <ore:blockGlassHardenedGray>.name
            // && ore.name != <ore:blockGlassHardenedLightGray>.name && ore.name != <ore:blockGlassHardenedCyan>.name && ore.name != <ore:blockGlassHardenedPurple>.name && ore.name != <ore:blockGlassHardenedBlue>.name
            // && ore.name != <ore:blockGlassHardenedBrown>.name && ore.name != <ore:blockGlassHardenedGreen>.name && ore.name != <ore:blockGlassHardenedRed>.name && ore.name != <ore:blockGlassHardenedBlack>.name
            // && ore.name != <ore:blockGlassHardened>.name) {