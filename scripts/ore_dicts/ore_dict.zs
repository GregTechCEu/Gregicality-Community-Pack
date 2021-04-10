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

// Silicon Compatability
<ore:itemSilicon>.add(<metaitem:plateSilicon>);
<ore:itemSilicon>.remove(<ore:itemSilicon>.firstItem);

// Ender Pearl Powder Compatability
<ore:nuggetEnderpearl>.add(<ore:dustTinyEnderPearl>.firstItem);

// Remove LazyAE2 Coal Dust
<ore:dustCoal>.remove(<threng:material:3>);

// EnderIO Dusts
<ore:dustCopper>.remove(<enderio:item_material:26>);
JEI.hide(<enderio:item_material:26>);
<ore:dustTin>.remove(<enderio:item_material:27>);
JEI.hide(<enderio:item_material:27>);
<ore:dustCobalt>.remove(<enderio:item_material:31>);
JEI.hide(<enderio:item_material:31>);

unify_oredicts(<ore:ingot*>);
unify_oredicts(<ore:plate*>);
unify_oredicts(<ore:block*>);
unify_oredicts(<ore:dust*>);
unify_oredicts(<ore:gear*>);
unify_oredicts(<ore:stick*>);
unify_oredicts(<ore:crystal*>);
unify_oredicts(<ore:nugget*>);
unify_oredicts(<ore:egg*>);


unify(<ore:bioplastic>, 0);
unify(<ore:itemSilicon>, 0);
