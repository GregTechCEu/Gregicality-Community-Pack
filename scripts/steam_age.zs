import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.CokeOvenRecipeBuilder;
import mods.gregtech.recipe.PBFRecipeBuilder;
import crafttweaker.item.IItemStack;

val name_removals = [
    "gtadditions:ga_steam_boiler_solar_bronze",
    "gtadditions:ga_steam_boiler_lava_bronze",
    "gregtech:steam_boiler_coal_bronze",
    "gregtech:steam_boiler_lava_bronze",
    "gregtech:steam_boiler_coal_steel",
    "gregtech:steam_boiler_lava_steel",
    "gregtech:bronze_hull",
    "gregtech:bronze_bricks_hull",
    "gtadditions:steam_extractor_bronze",
    "gtadditions:steam_macerator_bronze",
    "gtadditions:steam_compressor_bronze",
    "gtadditions:steam_hammer_bronze",
    "gtadditions:steam_furnace_bronze",
    "gtadditions:steam_alloy_smelter_bronze",
    "gtadditions:ga_steam_mixer",
    "gtadditions:ga_steam_pump",
    "gtadditions:coke_brick",
    "gregtech:coke_oven_hatch",
    "gregtech:workbench_bronze",
    "gtadditions:resistor_coal",
    "gtadditions:resistor_charcoal",
    "gtadditions:resistor_carbon",
    "gregtech:vacuum_tube_wire",
    "gregtech:vacuum_tube_wire_fine",
    "gtadditions:primitive_processor",
    "gtadditions:primitive_assembly"
] as string[];

val name_yeets = [
	<meta_tile_entity:steam_extractor_steel>,
	<meta_tile_entity:steam_macerator_steel>,
	<meta_tile_entity:steam_compressor_steel>,
	<meta_tile_entity:steam_hammer_steel>,
	<meta_tile_entity:steam_furnace_steel>,
	<meta_tile_entity:steam_alloy_smelter_steel>,
] as IItemStack[];

for item in name_removals {
    recipes.removeByRecipeName(item);
}
for item in name_yeets {
    mods.jei.JEI.removeAndHide(item);
}

recipes.addShaped("gt_coke_clay", <metaitem:compressed.coke.clay> * 8, [[<ore:ingotClay>, <ore:ingotClay>, <ore:ingotClay>],[<ore:sand>, <ore:formWood>, <minecraft:sand>], [<ore:sand>, <ore:sand>, <ore:sand>]]);
recipes.addShaped("gt_coke_hatch", <meta_tile_entity:coke_oven_hatch>, [[null, <ore:plateIron>, null],[<ore:gregHardHammers>, <gregtech:metal_casing:8>, <ore:gregWrenches>],[null, <ore:blockGlassColorless>, null]]);
recipes.addShaped("gt_bronze_hull", <gregtech:machine_casing:10>, [[null, <ore:plateBronze>, null],[<ore:plateBronze>, <ore:gregHardHammers>, <ore:plateBronze>], [null, <ore:plateBronze>, null]]);
recipes.addShaped("gt_solar_boiler", <meta_tile_entity:steam_boiler_solar_bronze>, [[null, <ore:blockGlassColorless>, null],[<ore:pipeSmallBronze>, <ore:plateSilver>, <ore:pipeSmallBronze>], [null, <gregtech:machine_casing:11>, null]]);
recipes.addShaped("gt_coal_boiler", <meta_tile_entity:steam_boiler_coal_bronze>, [[null, <ore:plateBronze>, null],[<ore:plateBronze>, <ore:craftingFurnace>, <ore:plateBronze>], [null, <ore:blockBrick>, null]]);
recipes.addShaped("gt_lava_boiler", <meta_tile_entity:steam_boiler_lava_bronze>, [[null, <ore:plateBronze>, null],[<ore:plateBronze>, <ore:blockGlassColorless>, <ore:plateBronze>], [null, <gregtech:machine_casing:11>, null]]);
recipes.addShaped("gt_coal_steel", <meta_tile_entity:steam_boiler_coal_steel>, [[<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>],[<ore:plateWroughtIron>, null, <ore:plateWroughtIron>],[<ore:blockBrick>, <gregtech:machine_casing:11>, <ore:blockBrick>]]);
recipes.addShaped("gt_lava_steel", <meta_tile_entity:steam_boiler_lava_steel>, [[<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>],[<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>],[<ore:plateWroughtIron>, <gregtech:machine_casing:11>, <ore:plateWroughtIron>]]);
recipes.addShaped("gt_brick_hull", <gregtech:machine_casing:11>, [[null, <ore:plateBronze>, null],[null, <ore:blockBrick>, null], [null, <ore:plateBronze>, null]]); // Brick Bronze Hull
recipes.addShaped("gt_steam_extractor", <meta_tile_entity:steam_extractor_bronze>, [[null, <ore:pipeSmallBronze>, null],[<ore:craftingPiston>, <gregtech:machine_casing:10>, <ore:blockGlassColorless>],[null, <ore:pipeSmallBronze>, null]]);
recipes.addShaped("gt_steam_macerator", <meta_tile_entity:steam_macerator_bronze>, [[<ore:gemFlint>, <ore:gemFlint>, <ore:gemFlint>],[null, <gregtech:machine_casing:10>, null],[<ore:craftingPiston>, <ore:pipeSmallBronze>, <ore:craftingPiston>]]);
recipes.addShaped("gt_steam_compressor", <meta_tile_entity:steam_compressor_bronze>, [[null, <ore:pipeSmallBronze>, null],[<ore:craftingPiston>, <gregtech:machine_casing:10>, <ore:craftingPiston>],[null, <ore:pipeSmallBronze>, null]]);
recipes.addShaped("gt_steam_hammer", <meta_tile_entity:steam_hammer_bronze>, [[null, <ore:craftingPiston>, null],[<ore:pipeSmallBronze>, <gregtech:machine_casing:10>, <ore:pipeSmallBronze>],[null, <ore:blockIron>, null]]);
recipes.addShaped("gt_steam_furnace", <meta_tile_entity:steam_furnace_bronze>, [[null, <ore:pipeSmallBronze>, null],[<ore:pipeSmallBronze>, <gregtech:machine_casing:10>, <ore:pipeSmallBronze>],[null, <minecraft:furnace>, null]]);
recipes.addShaped("gt_steam_alloy_smelter", <meta_tile_entity:steam_alloy_smelter_bronze>, [[null, <ore:pipeSmallBronze>, null],[<minecraft:furnace>, <gregtech:machine_casing:10>, <minecraft:furnace>],[null, <ore:pipeSmallBronze>, null]]);
recipes.addShaped("gt_steam_mixer", <gregtech:machine:2235>, [[null, <ore:rotorBronze>, null],[<ore:blockGlassColorless>, <ore:pipeSmallBronze>, <ore:blockGlassColorless>],[null, <gregtech:machine_casing:10>, null]]);
recipes.addShaped("gt_steam_pump", <gregtech:machine:2232>, [[<ore:pipeSmallBronze>, <ore:pipeSmallBronze>, <ore:pipeSmallBronze>],[<ore:pipeSmallBronze>, <gregtech:machine_casing:10>, <ore:pipeSmallBronze>],[<ore:pipeSmallBronze>, <ore:rotorBronze>, <ore:pipeSmallBronze>]]);

for recipe in RecipeMaps.getCokeOvenRecipes() {
    recipe.remove();
}

CokeOvenRecipeBuilder.start()
	.input(<ore:logWood>)
	.output(<ore:gemCharcoal>.firstItem)
	.fluidOutput(<liquid:creosote> * 250)
	.duration(125)
	.buildAndRegister();
	
CokeOvenRecipeBuilder.start()
	.input(<ore:gemCoal>)
	.output(<ore:gemCoke>.firstItem)
	.fluidOutput(<liquid:creosote> * 500)
	.duration(125)
	.buildAndRegister();
	
CokeOvenRecipeBuilder.start()
	.input(<ore:blockCoal>)
	.output(<ore:blockCoke>.firstItem)
	.fluidOutput(<liquid:creosote> * 4500)
	.duration(125 * 9)
	.buildAndRegister();
	
for recipe in RecipeMaps.getPrimitiveBlastFurnaceRecipes() {
    recipe.remove();
}

PBFRecipeBuilder.start()
    .input(<ore:ingotIron> * 1)
    .output(<ore:ingotSteel>.firstItem * 1)
    .duration(250)
    .fuelAmount(2)
    .buildAndRegister();
	
PBFRecipeBuilder.start()
    .input(<ore:blockIron> * 1)
    .output(<ore:blockSteel>.firstItem * 1)
    .duration(2250)
    .fuelAmount(18)
    .buildAndRegister();

PBFRecipeBuilder.start()
    .input(<ore:ingotWroughtIron> * 1)
    .output(<ore:ingotSteel>.firstItem * 1)
    .duration(100)
    .fuelAmount(2)
    .buildAndRegister();
	
PBFRecipeBuilder.start()
    .input(<ore:blockWroughtIron> * 1)
    .output(<ore:blockSteel>.firstItem * 1)
    .duration(600)
    .fuelAmount(18)
    .buildAndRegister();

// Crafting Station
recipes.addShaped("gt_crafting_station", <meta_tile_entity:workbench>, [[<ore:chestWood>, <ore:craftingTableWood>, <ore:chestWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, <ore:gregHardHammers>, <ore:plankWood>]]);

// Brick Dust
recipes.addShaped("gt_brick_dust_hammer", <ore:dustRegularBrick>.firstItem, [[<ore:gregHardHammers>], [<ore:ingotBrick>]]);

// Compressed Fireclay
recipes.addShaped("gt_compressed_fireclay_hammer", <metaitem:compressed.fireclay>, [[<ore:gregHardHammers>], [<ore:dustRegularFireclay>]]);

// Small Copper Spring
recipes.addShaped("gt_spring_small_copper", <ore:springSmallCopper>.firstItem, [[null, <ore:gregSaws>, null], [<ore:gregFiles>, <ore:stickCopper>, <ore:gregWireCutters>]]);

metal_bender.recipeBuilder().EUt(8).duration(100)
    .inputs(<ore:stickCopper>)
    .circuit(1)
    .outputs(<ore:springSmallCopper>.firstItem * 2)
    .buildAndRegister();

metal_bender.recipeBuilder().EUt(8).duration(100)
    .inputs(<ore:wireGtSingleCopper>)
    .circuit(1)
    .outputs(<ore:springSmallCopper>.firstItem * 2)
    .buildAndRegister();


// Manual Copper Foil
recipes.addShaped("gt_copper_foil", <ore:foilCopper>.firstItem * 2, [[<ore:gregHardHammers>, <ore:plateCopper>]]);
