import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.gtadditions.recipe.Utils;
import mods.gregtech.recipe.RecipeMap;
import mods.jei.JEI.hide;

//todo all GC metal blocks oredicts might be late

furnace.remove(<minecraft:iron_ingot>, <galacticraftplanets:item_basic_asteroids:3>);
furnace.remove(<galacticraftplanets:item_basic_asteroids>, <galacticraftplanets:item_basic_asteroids:4>); // registered too late?
furnace.remove(<galacticraftplanets:item_basic_asteroids>, <galacticraftplanets:item_basic_asteroids:9>); // registered too late?
furnace.remove(<metaitem:ingotCobalt>, <galaxyspace:gsores>);
furnace.remove(<metaitem:ingotNickel>, <galaxyspace:gsores:1>);
furnace.remove(<metaitem:ingotUranium>, <galaxyspace:gsores:2>);
furnace.remove(<metaitem:ingotNickel>, <galaxyspace:mercuryblocks:3>);
furnace.remove(<minecraft:iron_ingot>, <galaxyspace:mercuryblocks:4>);
furnace.remove(<metaitem:ingotMagnesium>, <galaxyspace:gsores:2>);
furnace.remove(<minecraft:diamond>, <galaxyspace:marsores>);
furnace.remove(<minecraft:gold_ingot>, <galaxyspace:marsores:1>);
furnace.remove(<minecraft:coal>, <galaxyspace:marsores:2>);
furnace.remove(<minecraft:redstone>, <galaxyspace:marsores:3>);
furnace.remove(<galacticraftcore:basic_item:5>, <galaxyspace:marsores:4>);
furnace.remove(<ore:dustDolomite>.firstItem, <galaxyspace:ceresblocks:2>);
furnace.remove(<galacticraftcore:basic_item:5>, <galaxyspace:haumeablocks:3>);
furnace.remove(<ore:ingotCopper>.firstItem, <galaxyspace:ioblocks:3>);
furnace.remove(<ore:dustRegularSulfur>.firstItem, <galaxyspace:ioblocks:4>);
furnace.remove(<minecraft:emerald>, <galaxyspace:europablocks:3>);
furnace.remove(<galacticraftcore:basic_item:5>, <galaxyspace:europablocks:5>);
furnace.remove(<metaitem:ingotMagnesium>, <galaxyspace:ganymedeblocks:2>);
furnace.remove(<ore:dustRegularIlmenite>.firstItem, <galaxyspace:ganymedeblocks:3>);
furnace.remove(<minecraft:coal>, <galaxyspace:enceladusblocks:2>);
furnace.remove(<metaitem:gemSapphire>, <galaxyspace:titanblocks:3>);
furnace.remove(<minecraft:emerald>, <galaxyspace:titanblocks:4>);
furnace.remove(<minecraft:diamond>, <galaxyspace:titanblocks:5>);
furnace.remove(<minecraft:coal>, <galaxyspace:titanblocks:6>);
furnace.remove(<minecraft:dye:4>, <galaxyspace:titanblocks:7>);
furnace.remove(<minecraft:redstone>, <galaxyspace:titanblocks:8>);
furnace.remove(<minecraft:iron_ingot>, <galaxyspace:mirandablocks:3>);
furnace.remove(<ore:dustDolomite>.firstItem, <galaxyspace:mirandablocks:4>);
furnace.remove(<minecraft:diamond>, <galaxyspace:mirandablocks:5>);
furnace.remove(<minecraft:quartz>, <galaxyspace:mirandablocks:6>);
furnace.remove(<metaitem:ingotCobalt>, <galaxyspace:mirandablocks:7>);
furnace.remove(<metaitem:ingotNickel>, <galaxyspace:mirandablocks:8>);
furnace.remove(<minecraft:iron_ingot>, <galaxyspace:gs_basic:6>);
furnace.remove(<minecraft:gold_ingot>, <galaxyspace:proxima_b_blocks:5>);
furnace.remove(<galacticraftcore:basic_item:4>, <galaxyspace:proxima_b_blocks:6>);
furnace.remove(<ore:ingotCopper>.firstItem, <galaxyspace:proxima_b_blocks:7>);
furnace.remove(<minecraft:coal>, <galaxyspace:proxima_b_blocks:8>);
furnace.remove(<minecraft:diamond>, <galaxyspace:proxima_b_blocks:10>);
furnace.remove(<minecraft:coal>, <galaxyspace:barnarda_c_ores>);
furnace.remove(<minecraft:iron_ingot>, <galaxyspace:barnarda_c_ores:1>);
furnace.remove(<minecraft:gold_ingot>, <galaxyspace:barnarda_c_ores:2>);
furnace.remove(<minecraft:redstone>, <galaxyspace:barnarda_c_ores:3>);
furnace.remove(<minecraft:dye:4>, <galaxyspace:barnarda_c_ores:4>);
furnace.remove(<minecraft:diamond>, <galaxyspace:barnarda_c_ores:5>);
furnace.remove(<ore:ingotCopper>.firstItem, <galaxyspace:barnarda_c_ores:7>);
furnace.remove(<galacticraftcore:basic_item:4>, <galaxyspace:barnarda_c_ores:8>);
furnace.remove(<galacticraftcore:basic_item:5>, <galaxyspace:barnarda_c_ores:9>);
furnace.remove(<galaxyspace:ingots>, <galaxyspace:barnarda_c_ores:11>);
furnace.remove(<metaitem:ingotNickel>, <galaxyspace:barnarda_c_ores:12>);
furnace.remove(<galacticraftplanets:item_basic_mars:2>, <galacticraftplanets:mars:2>);
furnace.remove(<galacticraftcore:basic_item:5>, <galacticraftplanets:asteroids_block:3>);
furnace.remove(<galacticraftcore:basic_item:5>, <galacticraftcore:ic2compat>);
furnace.remove(<galacticraftcore:basic_item:5>, <galacticraftplanets:venus:6>);
furnace.remove(<galacticraftcore:basic_item:5>, <galacticraftcore:basic_block_core:7>);
furnace.remove(<galacticraftcore:basic_item:5>, <galaxyspace:marsores:5>);
furnace.remove(<ore:ingotCopper>.firstItem, <galacticraftplanets:mars>); //todo oredict registered too late for <galacticraftplanets:mars>
furnace.remove(<galacticraftcore:basic_item:3>, <galacticraftplanets:mars>); //todo oredict registered too late for <galacticraftplanets:mars>
furnace.remove(<ore:ingotCopper>.firstItem, <galacticraftplanets:venus:7>);
furnace.remove(<galacticraftcore:basic_item:3>, <galacticraftplanets:venus:7>);
furnace.remove(<ore:ingotCopper>.firstItem, <galacticraftcore:canister:1>);
furnace.remove(<galacticraftcore:basic_item:3>, <galacticraftcore:canister:1>);
furnace.remove(<galacticraftcore:basic_item:4>, <galacticraftplanets:mars:1>);
furnace.remove(<galacticraftcore:basic_item:4>, <galacticraftplanets:venus:11>);
furnace.remove(<galacticraftcore:basic_item:4>, <galacticraftcore:canister>);
furnace.remove(<galacticraftplanets:item_basic_mars:2>, <galacticraftplanets:item_basic_mars>);
furnace.remove(<galacticraftplanets:item_basic_asteroids>, <galacticraftplanets:asteroids_block:4>);
furnace.remove(<galacticraftplanets:basic_item_venus:1>, <galacticraftplanets:venus:8>);
furnace.remove(<ore:ingotCopper>.firstItem, <galacticraftcore:basic_block_core:5>);
furnace.remove(<ore:ingotCopper>.firstItem, <galacticraftcore:basic_block_moon>);
furnace.remove(<ore:ingotCopper>.firstItem, <galaxyspace:ioblocks:3>);
furnace.remove(<ore:ingotCopper>.firstItem, <galaxyspace:proxima_b_blocks:7>);
furnace.remove(<ore:ingotCopper>.firstItem, <galaxyspace:proxima_b_blocks:7>);
furnace.remove(<ore:ingotTin>.firstItem, <galacticraftcore:basic_block_core:6>);
furnace.remove(<ore:ingotTin>.firstItem, <galacticraftcore:basic_block_moon:1>);
furnace.remove(<ore:ingotTin>.firstItem, <galaxyspace:proxima_b_blocks:6>);
furnace.remove(<ore:ingotTin>.firstItem, <galaxyspace:barnarda_c_ores:8>);
furnace.remove(<minecraft:iron_ingot>, <galacticraftplanets:mars:3>);
furnace.remove(<minecraft:iron_ingot>, <galacticraftplanets:asteroids_block:5>);
furnace.remove(<minecraft:quartz>, <galacticraftplanets:venus:9>);
furnace.remove(<ore:ingotMagnesium>.firstItem, <galaxyspace:mercuryblocks:5>);
furnace.remove(<galacticraftcore:item_basic_moon:2>, <galacticraftcore:basic_block_moon:6>);
furnace.remove(<galacticraftcore:item_basic_moon>, <galacticraftcore:meteoric_iron_raw>);
furnace.remove(<galacticraftcore:cheese_curd>, <galacticraftcore:basic_block_moon:2>);



compressor.findRecipe(2, [<qmd:ingot:4> * 9], [null]).remove();
compressor.findRecipe(2, [<qmd:ingot:5> * 9], [null]).remove();
compressor.findRecipe(2, [<nuclearcraft:ingot:7> * 9], [null]).remove();
Utils.removeRecipeByOutput(compressor, [<galacticraftplanets:mars:8>], [], false);
Utils.removeRecipeByOutput(packer, [<galacticraftplanets:mars:8>], [], false);
Utils.removeRecipeByOutput(compressor, [<galacticraftcore:basic_block_core:12>], [], false);
Utils.removeRecipeByOutput(packer, [<galacticraftcore:basic_block_core:12>], [], false);

val copper_ores = [
    <galacticraftcore:basic_block_core:5>,
    <galacticraftcore:basic_block_moon>,
    <galacticraftplanets:mars>,
    <galacticraftplanets:venus:7>,
    <galaxyspace:ioblocks:3>,
    <galaxyspace:proxima_b_blocks:7>,
    <galaxyspace:barnarda_c_ores:7>
] as IItemStack[];

for item in copper_ores {
    <ore:oreCopper>.remove(item);
    // mods.jei.JEI.hide(item);
}

val tin_ores = [
    <galacticraftcore:basic_block_core:6>,
    <galacticraftcore:basic_block_moon:1>,
    <galacticraftplanets:mars:1>,
    <galacticraftplanets:venus:11>,
    <galaxyspace:proxima_b_blocks:6>,
    <galaxyspace:barnarda_c_ores:8>
] as IItemStack[];

for item in tin_ores {
    <ore:oreTin>.remove(item);
    mods.jei.JEI.hide(item);
}

val alu_ores = [
    <galacticraftcore:basic_block_core:7>,
    <galacticraftplanets:asteroids_block:3>,
    <galacticraftplanets:venus:6>,
    <galaxyspace:marsores:5>
] as IItemStack[];

for item in alu_ores {
    <ore:oreAluminum>.remove(item);
    <ore:oreAluminium>.remove(item);
    mods.jei.JEI.hide(item);
}

val ilmenite_ores = [
    <galaxyspace:ganymedeblocks:3>,
    <galacticraftplanets:asteroids_block:4>
] as IItemStack[];

for item in ilmenite_ores {
    <ore:oreIlmenite>.remove(item);
    mods.jei.JEI.hide(item);
}

val iron_ores = [
    <galacticraftplanets:mars:3>,
    <galacticraftplanets:asteroids_block:5>,
    <galaxyspace:mercuryblocks:4>,
    <galaxyspace:mirandablocks:3>,
    <galaxyspace:barnarda_c_ores:1>
] as IItemStack[];

for item in iron_ores {
    <ore:oreIron>.remove(item);
    mods.jei.JEI.hide(item);
}

<ore:oreDesh>.remove(<galacticraftplanets:mars:2>);
mods.jei.JEI.hide(<galacticraftplanets:mars:2>);

<ore:oreLead>.remove(<galacticraftplanets:venus:8>);
mods.jei.JEI.hide(<galacticraftplanets:venus:8>);

<ore:oreQuartz>.remove(<galacticraftplanets:venus:9>);
mods.jei.JEI.hide(<galacticraftplanets:venus:9>);

val cobalt_ores = [
    <galaxyspace:gsores>,
    <galaxyspace:mirandablocks:7>
] as IItemStack[];

for item in cobalt_ores {
    <ore:oreCobalt>.remove(item);
    mods.jei.JEI.hide(item);
}

val nickel_ores = [
    <galaxyspace:gsores:1>,
    <galaxyspace:mercuryblocks:3>,
    <galaxyspace:mirandablocks:8>,
    <galaxyspace:barnarda_c_ores:12>
] as IItemStack[];

for item in nickel_ores {
    <ore:oreNickel>.remove(item);
    mods.jei.JEI.hide(item);
}

<ore:oreUranium>.remove(<galaxyspace:gsores:2>);
mods.jei.JEI.hide(<galaxyspace:gsores:2>);

<ore:oreMagnesium>.remove(<galaxyspace:mercuryblocks:5>);
mods.jei.JEI.hide(<galaxyspace:mercuryblocks:5>);

val diamond_ores = [
    <galaxyspace:marsores>,
    <galaxyspace:titanblocks:5>,
    <galaxyspace:mirandablocks:5>,
    <galaxyspace:proxima_b_blocks:10>,
    <galaxyspace:barnarda_c_ores:5>
] as IItemStack[];

for item in diamond_ores {
    <ore:oreDiamond>.remove(item);
    mods.jei.JEI.hide(item);
}

val gold_ores = [
    <galaxyspace:marsores:1>,
    <galaxyspace:proxima_b_blocks:5>,
    <galaxyspace:barnarda_c_ores:2>
] as IItemStack[];

for item in gold_ores {
    <ore:oreGold>.remove(item);
    mods.jei.JEI.hide(item);
}

val coal_ores = [
    <galaxyspace:marsores:2>,
    <galaxyspace:enceladusblocks:2>,
    <galaxyspace:titanblocks:6>,
    <galaxyspace:proxima_b_blocks:8>,
    <galaxyspace:barnarda_c_ores>
] as IItemStack[];

for item in coal_ores {
    <ore:oreCoal>.remove(item);
    mods.jei.JEI.hide(item);
}

val redstone_ores = [
    <galaxyspace:marsores:3>,
    <galaxyspace:titanblocks:8>,
    <galaxyspace:barnarda_c_ores:3>
] as IItemStack[];

for item in redstone_ores {
    <ore:oreRedstone>.remove(item);
    mods.jei.JEI.hide(item);
}

val silicon_ores = [
    <galacticraftcore:basic_block_core:8>,
    <galacticraftplanets:venus:10>,
    <galaxyspace:europablocks:4>,
    <galaxyspace:proxima_b_blocks:9>,
    <galaxyspace:barnarda_c_ores:6>,
    <galaxyspace:marsores:4>
] as IItemStack[];

for item in silicon_ores { //todo <galaxyspace:marsores:4> is in the broken GTCE orebyproducts list
    <ore:oreSilicon>.remove(item);
    // mods.jei.JEI.hide(item);
}

val dolomite_ores = [
    <galaxyspace:ceresblocks:2>,
    <galaxyspace:mirandablocks:4>
] as IItemStack[];

for item in dolomite_ores {
    <ore:oreDolomite>.remove(item);
    mods.jei.JEI.hide(item);
}

<ore:oreSulfur>.remove(<galaxyspace:ioblocks:4>);
mods.jei.JEI.hide(<galaxyspace:ioblocks:4>);

val emerald_ores = [
    <galaxyspace:europablocks:3>,
    <galaxyspace:titanblocks:4> 
] as IItemStack[];

for item in emerald_ores {
    <ore:oreEmerald>.remove(item);
    mods.jei.JEI.hide(item);
}

<ore:oreSapphire>.remove(<galaxyspace:titanblocks:3>);
mods.jei.JEI.hide(<galaxyspace:titanblocks:3>);

val lapis_ores = [
    <galaxyspace:titanblocks:7>,
    <galaxyspace:barnarda_c_ores:4> 
] as IItemStack[];

for item in lapis_ores {
    <ore:oreLapis>.remove(item);
    mods.jei.JEI.hide(item);
}