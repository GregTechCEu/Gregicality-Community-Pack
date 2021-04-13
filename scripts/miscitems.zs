

# Open Glider something something bad oredict

//Holdy thing
recipes.removeByRecipeName("openglider:glider_scaffolding");
recipes.addShaped(<openglider:hang_glider_part:2>, [
    [<ore:craftingToolFile>, <gregtech:meta_item_1:14033>, <ore:craftingToolWrench>],
    [<gregtech:meta_item_1:14033>, <ore:craftingToolHardHammer>, <gregtech:meta_item_1:14033>], 
    [<gregtech:meta_item_1:14033>, <gregtech:meta_item_1:14033>, <gregtech:meta_item_1:14033>]]);

//Wing Right
recipes.removeByRecipeName("openglider:glider_wing_right");
recipes.addShaped(<openglider:hang_glider_part:1>, [
    [<minecraft:leather>, <gregtech:meta_item_1:14033>, <ore:craftingToolFile>],
    [<minecraft:leather>, <minecraft:leather>, <gregtech:meta_item_1:14033>], 
    [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>]]);

//Wing Left
recipes.removeByRecipeName("openglider:glider_wing_left");
recipes.addShaped(<openglider:hang_glider_part>, [
    [<ore:craftingToolFile>, <gregtech:meta_item_1:14033>, <minecraft:leather>],
    [<gregtech:meta_item_1:14033>, <minecraft:leather>, <minecraft:leather>], 
    [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>]]);

//Advaned Hang Glider
recipes.removeByRecipeName("openglider:glider_adv");
assembler.recipeBuilder()
	.inputs(<openglider:hang_glider_basic>)
	.inputs(<ore:platePlastic> * 6)
    .inputs(<ore:stickAluminium> * 2)
    .inputs(<ore:stickLongAluminium>)
	.outputs(<openglider:hang_glider_advanced>)
	.EUt(96)
	.duration(100)
	.buildAndRegister();


// More Furnaces ==============================================
mods.jei.JEI.hide(<morefurnaces:upgrade:0>);
mods.jei.JEI.hide(<morefurnaces:upgrade:1>);
mods.jei.JEI.hide(<morefurnaces:upgrade:2>);
mods.jei.JEI.hide(<morefurnaces:upgrade:3>);
mods.jei.JEI.hide(<morefurnaces:upgrade:4>);
mods.jei.JEI.hide(<morefurnaces:upgrade:5>);
mods.jei.JEI.hide(<morefurnaces:upgrade:6>);
mods.jei.JEI.hide(<morefurnaces:upgrade:7>);
mods.jei.JEI.hide(<morefurnaces:furnaceblock:0>);
mods.jei.JEI.hide(<morefurnaces:furnaceblock:1>);

recipes.removeByRecipeName("morefurnaces:copper_furnace");
recipes.addShaped(<morefurnaces:furnaceblock:5>, [
    [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>],
    [<ore:plateCopper>, <ore:gregWrenches>, <ore:plateCopper>],
    [<ore:plateCopper>, <minecraft:furnace>, <ore:plateCopper>]]);
assembler.recipeBuilder()
    .inputs(<minecraft:furnace>)
    .inputs(<ore:plateCopper> * 5)
    .outputs(<morefurnaces:furnaceblock:5>)
    .EUt(16)
    .duration(100)
    .buildAndRegister();

recipes.removeByRecipeName("morefurnaces:silver_furnace");
recipes.addShaped(<morefurnaces:furnaceblock:6>, [
    [<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>],
    [<ore:plateSilver>, <ore:gregWrenches>, <ore:plateSilver>],
    [<ore:plateSilver>, <morefurnaces:furnaceblock:5>, <ore:plateSilver>]]);
assembler.recipeBuilder()
    .inputs(<morefurnaces:furnaceblock:5>)
    .inputs(<ore:plateSilver> * 5)
    .outputs(<morefurnaces:furnaceblock:6>)
    .EUt(16)
    .duration(100)
    .buildAndRegister();

recipes.removeByRecipeName("morefurnaces:diamond_furnace");
recipes.addShaped(<morefurnaces:furnaceblock:2>, [
    [<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>],
    [<ore:plateDiamond>, <ore:gregWrenches>, <ore:plateDiamond>],
    [<ore:plateDiamond>, <morefurnaces:furnaceblock:6>, <ore:plateDiamond>]]);
assembler.recipeBuilder()
    .inputs(<morefurnaces:furnaceblock:6>)
    .inputs(<ore:plateDiamond> * 5)
    .outputs(<morefurnaces:furnaceblock:2>)
    .EUt(16)
    .duration(100)
    .buildAndRegister();

recipes.removeByRecipeName("morefurnaces:obsidian_furnace");
recipes.addShaped(<morefurnaces:furnaceblock:3>, [
    [<ore:obsidian>, <ore:obsidian>, <ore:obsidian>],
    [<ore:obsidian>, <ore:gregHardHammers>, <ore:obsidian>],
    [<ore:obsidian>, <morefurnaces:furnaceblock:2>, <ore:obsidian>]]);
assembler.recipeBuilder()
    .inputs(<morefurnaces:furnaceblock:2>)
    .inputs(<ore:obsidian> * 5)
    .outputs(<morefurnaces:furnaceblock:3>)
    .EUt(16)
    .duration(100)
    .buildAndRegister();

recipes.removeByRecipeName("morefurnaces:netherrack_furnace");
recipes.addShaped(<morefurnaces:furnaceblock:4>, [
    [<minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>],
    [<minecraft:flint>, <minecraft:flint>, <minecraft:flint>],
    [<minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>]]);

/*
// Thut's Elevators =====================================================================
       Re-enable these if the mod stops registering in postInit
recipes.removeByRecipeName("thuttech:linker");
assembler.recipeBuilder()
    .inputs(<ore:circuitBasic>)
    .inputs(<ore:cableGtSingleSilver> * 2)
    .fluidInputs(<fluid:redstone> * 144)
    .outputs(<thuttech:devicelinker>)
    .EUt(4)
    .duration(600)
    .buildAndRegister();

recipes.removeByRecipeName("thuttech:lift");
recipes.addShaped(<thuttech:lift>, [
    [<ore:screwIron>, <ore:plateIron>, <ore:screwIron>],
    [<ore:gregScrewDrivers>, <ore:frameGtIron>, <ore:gregWrenches>],
    [<ore:screwIron>, <ore:plateIron>, <ore:screwIron>]]);
assembler.recipeBuilder()
    .inputs(<ore:frameGtIron>)
    .inputs(<ore:plateIron> * 2)
    .inputs(<ore:screwIron> * 2)
    .outputs(<thuttech:lift>)
    .EUt(16)
    .duration(80)
    .buildAndRegister();

recipes.removeByRecipeName("thuttech:controller");
assembler.recipeBuilder()
    .inputs(<ore:circuitBasic>)
    .inputs(<ore:plateIron> * 4)
    .notConsumable(<thuttech:devicelinker>)
    .outputs(<thuttech:lift>)
    .EUt(16)
    .duration(200)
    .buildAndRegister();
*/

// OpenBlocks Elevators ==================================================
val removals = [
    "elevatorid:elevator_white",
    "elevatorid:elevator_orange",
    "elevatorid:elevator_magenta",
    "elevatorid:elevator_light_blue",
    "elevatorid:elevator_yellow",
    "elevatorid:elevator_lime",
    "elevatorid:elevator_pink",
    "elevatorid:elevator_gray",
    "elevatorid:elevator_silver",
    "elevatorid:elevator_cyan",
    "elevatorid:elevator_purple",
    "elevatorid:elevator_blue",
    "elevatorid:elevator_brown",
    "elevatorid:elevator_green",
    "elevatorid:elevator_red",
    "elevatorid:elevator_black"
] as String[];

for name in removals {
    recipes.removeByName(name);
}

recipes.addShaped(<elevatorid:elevator_white>, [
    [<ore:plateSteel>, <ore:plateEnderPearl>, <ore:plateSteel>],
    [<ore:springSmallAluminium>, <ore:frameGtSteel>, <ore:springSmallAluminium>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

