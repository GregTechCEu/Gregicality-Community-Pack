#priority 1000

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import mods.jei.JEI;

static mods as string[] = ["minecraft", "gregtech", "gtadditions", "enderio", "nuclearcraft"];
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
        if (item.definition.owner == mods[pos] && item.definition.owner != "xtones") {
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

// Fix Galacticraft Compressed Aluminium
<ore:compressedAluminium>.add(<ore:compressedAluminum>.firstItem);
<ore:compressedAluminum>.remove(<ore:compressedAluminum>.firstItem);
<ore:plateAluminum>.remove(<ore:compressedAluminium>.firstItem);

// Compressed Fixes
<ore:plateCopper>.remove(<galacticraftcore:basic_item:6>);
<ore:plateTin>.remove(<galacticraftcore:basic_item:7>);
<ore:plateAluminium>.remove(<galacticraftcore:basic_item:8>);
<ore:plateBronze>.remove(<galacticraftcore:basic_item:10>);
<ore:plateSteel>.remove(<galacticraftcore:basic_item:9>);
<ore:plateIron>.remove(<galacticraftcore:basic_item:11>);
<ore:plateMeteoricIron>.remove(<galacticraftcore:item_basic_moon:1>);
<ore:plateTitanium>.remove(<galacticraftplanets:item_basic_asteroids:6>);
<ore:plateDesh>.remove(<galacticraftplanets:item_basic_mars:5>);

<ore:compressedCoal>.add(<galaxyspace:compressed_plates>);
<ore:plateCoal>.remove(<galaxyspace:compressed_plates>);

<ore:compressedCobalt>.add(<galaxyspace:compressed_plates:1>);
<ore:plateCobaltl>.remove(<galaxyspace:compressed_plates:1>);

<ore:compressedMagnesium>.add(<galaxyspace:compressed_plates:2>);
<ore:plateMagnesium>.remove(<galaxyspace:compressed_plates:2>);

<ore:compressedNickel>.add(<galaxyspace:compressed_plates:3>);
<ore:plateNickel>.remove(<galaxyspace:compressed_plates:3>);



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

// Nuclearcraft Ores
<ore:oreCopper>.remove(<nuclearcraft:ore>);
JEI.hide(<nuclearcraft:ore>);
<ore:oreTin>.remove(<nuclearcraft:ore:1>);
JEI.hide(<nuclearcraft:ore:1>);
<ore:oreLead>.remove(<nuclearcraft:ore:2>);
JEI.hide(<nuclearcraft:ore:2>);
<ore:oreThorium>.remove(<nuclearcraft:ore:3>);
JEI.hide(<nuclearcraft:ore:3>);
<ore:oreUranium>.remove(<nuclearcraft:ore:4>);
JEI.hide(<nuclearcraft:ore:4>);
<ore:oreBoron>.remove(<nuclearcraft:ore:5>);
JEI.hide(<nuclearcraft:ore:5>);
<ore:oreLithium>.remove(<nuclearcraft:ore:6>);
JEI.hide(<nuclearcraft:ore:6>);
<ore:oreMagnesium>.remove(<nuclearcraft:ore:7>);
JEI.hide(<nuclearcraft:ore:7>);

// Maganese Dioxide
<ore:dustManganeseDioxide>.add(<ore:dustRegularPyrolusite>.firstItem);

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
