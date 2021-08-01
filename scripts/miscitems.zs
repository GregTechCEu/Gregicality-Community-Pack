# OpenBlocks Glider

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


// More Furnaces ==============================================================
mods.jei.JEI.removeAndHide(<morefurnaces:upgrade:0>);
mods.jei.JEI.removeAndHide(<morefurnaces:upgrade:1>);
mods.jei.JEI.removeAndHide(<morefurnaces:upgrade:2>);
mods.jei.JEI.removeAndHide(<morefurnaces:upgrade:3>);
mods.jei.JEI.removeAndHide(<morefurnaces:upgrade:4>);
mods.jei.JEI.removeAndHide(<morefurnaces:upgrade:5>);
mods.jei.JEI.removeAndHide(<morefurnaces:upgrade:6>);
mods.jei.JEI.removeAndHide(<morefurnaces:upgrade:7>);
mods.jei.JEI.removeAndHide(<morefurnaces:furnaceblock:0>);
mods.jei.JEI.removeAndHide(<morefurnaces:furnaceblock:1>);

recipes.removeByRecipeName("morefurnaces:copper_furnace");

recipes.addShaped(<morefurnaces:furnaceblock:5>, [
    [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>],
    [<ore:plateCopper>, <ore:gregWrenches>, <ore:plateCopper>],
    [<ore:plateCopper>, <minecraft:furnace>, <ore:plateCopper>]
]);

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
    [<ore:plateSilver>, <morefurnaces:furnaceblock:5>, <ore:plateSilver>]
]);

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
    [<ore:plateDiamond>, <morefurnaces:furnaceblock:6>, <ore:plateDiamond>]
]);

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
    [<ore:obsidian>, <morefurnaces:furnaceblock:2>, <ore:obsidian>]
]);

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

// OpenBlocks Elevators =======================================================
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
] as string[];

for name in removals {
    recipes.removeByRecipeName(name);
}

recipes.addShaped(<elevatorid:elevator_white>, [
    [<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>],
    [<ore:springSmallCopper>, <ore:frameGtIron>, <ore:springSmallCopper>],
    [<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>]
]);

// Building gadgets ===========================================================

// Constrution paste cans
recipes.removeByRecipeName("buildinggadgets:constructionpastecontainer");
recipes.removeByRecipeName("buildinggadgets:constructionpastecontainert2");
recipes.removeByRecipeName("buildinggadgets:constructionpastecontainert3");

canner.recipeBuilder()
    .inputs(<metaitem:fluid_cell>)
    .inputs(<buildinggadgets:constructionpaste>)
    .outputs(<buildinggadgets:constructionpastecontainer>)
    .EUt(20)
    .duration(50)
    .buildAndRegister();

canner.recipeBuilder()
    .inputs(<metaitem:large_fluid_cell.steel>)
    .inputs(<buildinggadgets:constructionpaste>)
    .outputs(<buildinggadgets:constructionpastecontainert2>)
    .EUt(20)
    .duration(50)
    .buildAndRegister();

canner.recipeBuilder()
    .inputs(<metaitem:large_fluid_cell.tungstensteel>)
    .inputs(<buildinggadgets:constructionpaste>)
    .outputs(<buildinggadgets:constructionpastecontainert3>)
    .EUt(20)
    .duration(50)
    .buildAndRegister();

// Dense paste
macerator.recipeBuilder()
    .inputs(<buildinggadgets:construction_chunk_dense>)
    .outputs(<buildinggadgets:constructionpaste> * 2)
    .EUt(20)
    .duration(20)
    .buildAndRegister();

macerator.recipeBuilder()
    .outputs(<buildinggadgets:construction_chunk_dense> * 9)
    .inputs(<buildinggadgets:constructionblock_dense>)
    .EUt(20)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .outputs(<buildinggadgets:construction_chunk_dense>)
    .inputs(<buildinggadgets:constructionpaste> * 2)
    .EUt(20)
    .duration(20)
    .buildAndRegister();

// Construction powder
recipes.removeByRecipeName("buildinggadgets:constructionpastepowder");

recipes.addShaped(<buildinggadgets:constructionblockpowder>, [
    [null, <ore:sand> , null],
    [<ore:sand>, <ore:itemClay>, <ore:sand>],
    [null, <ore:sand> , null]
]);

// Gadgets
recipes.removeByRecipeName("buildinggadgets:buildingtool");
recipes.removeByRecipeName("buildinggadgets:exchangingtool");
recipes.removeByRecipeName("buildinggadgets:copypastetool");
recipes.removeByRecipeName("buildinggadgets:destructiontool");

recipes.addShaped(<buildinggadgets:buildingtool>, [
    [<metaitem:plateIron>, tieredCables[1], <metaitem:plateIron>],
    [<metaitem:plateSapphire>, <ore:circuitBasic>, <metaitem:plateSapphire>],
    [<metaitem:boltIron>, <metaitem:battery.re.lv.sodium> | <metaitem:battery.re.lv.lithium> | <metaitem:battery.re.lv.cadmium>, <metaitem:screwIron>]
]);

recipes.addShaped(<buildinggadgets:exchangertool>, [
    [<metaitem:plateIron>, tieredCables[1], <metaitem:plateIron>],
    [<metaitem:plateTopaz>, <ore:circuitBasic>, <metaitem:plateTopaz>],
    [<metaitem:boltIron>, <metaitem:battery.re.lv.sodium> | <metaitem:battery.re.lv.lithium> | <metaitem:battery.re.lv.cadmium>, <metaitem:screwIron>]
]);

recipes.addShaped(<buildinggadgets:copypastetool>, [
    [<metaitem:plateIron>, tieredCables[1], <metaitem:plateIron>],
    [<metaitem:plateEmerald>, <ore:circuitBasic>, <metaitem:plateEmerald>],
    [<metaitem:boltIron>, <metaitem:battery.re.lv.sodium> | <metaitem:battery.re.lv.lithium> | <metaitem:battery.re.lv.cadmium>, <metaitem:screwIron>]
]);
recipes.addShaped(<buildinggadgets:copypastetool>, [
    [<metaitem:plateIron>, tieredCables[1], <metaitem:plateIron>],
    [<metaitem:plateOlivine>, <ore:circuitBasic>, <metaitem:plateOlivine>],
    [<metaitem:boltIron>, <metaitem:battery.re.lv.sodium> | <metaitem:battery.re.lv.lithium> | <metaitem:battery.re.lv.cadmium>, <metaitem:screwIron>]
]);

recipes.addShaped(<buildinggadgets:destructiontool>, [
    [<metaitem:plateIron>, tieredCables[1], <metaitem:plateIron>],
    [<metaitem:plateDiamond>, <ore:circuitBasic>, <metaitem:plateDiamond>],
    [<metaitem:boltIron>, <metaitem:battery.re.lv.sodium> | <metaitem:battery.re.lv.lithium> | <metaitem:battery.re.lv.cadmium>, <metaitem:screwIron>]
]);

// Effotless Building
recipes.removeByRecipeName("effortlessbuilding:randomizer_bag");
recipes.removeByRecipeName("effortlessbuilding:reach_upgrade1");
recipes.removeByRecipeName("effortlessbuilding:reach_upgrade2");
recipes.removeByRecipeName("effortlessbuilding:reach_upgrade3");

recipes.addShapeless("EB_randomizer_bag", <effortlessbuilding:randomizer_bag>, [robotArms[1], <vanillasatchels:satchel:1>]);
recipes.addShapeless("EB_upgrade1", <effortlessbuilding:reach_upgrade1>, [robotArms[1], <ore:stickLongSteel>]);
recipes.addShapeless("EB_upgrade2", <effortlessbuilding:reach_upgrade2>, [robotArms[2], <ore:stickLongAluminium>]);
recipes.addShapeless("EB_upgrade3", <effortlessbuilding:reach_upgrade3>, [robotArms[3], <ore:stickLongStainlessSteel>]);

// Floppa
compressor.recipeBuilder()
    .inputs(<ore:circuitAdvanced> * 64)
    .outputs(<contenttweaker:floppa>)
    .EUt(120)
    .duration(100)
    .buildAndRegister();