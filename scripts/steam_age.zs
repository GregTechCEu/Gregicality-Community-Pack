import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.CokeOvenRecipeBuilder;
import mods.gregtech.recipe.PBFRecipeBuilder;

val name_removals = [
    "gtadditions:ga_steam_boiler_solar_bronze",
    "gtadditions:ga_steam_boiler_lava_bronze",
    "gregtech:steam_boiler_coal_bronze",
    "gregtech:steam_boiler_lava_bronze",
    "gregtech:bronze_hull",
    "gregtech:bronze_bricks_hull",
    "gtadditions:coke_brick",
    "gregtech:workbench_bronze",
    "gtadditions:resistor_coal",
    "gtadditions:resistor_charcoal",
    "gtadditions:resistor_carbon",
    "gregtech:vacuum_tube_wire",
    "gregtech:vacuum_tube_wire_fine",
    "gtadditions:primitive_processor",
    "gtadditions:primitive_assembly"
] as string[];

for item in name_removals {
    recipes.removeByRecipeName(item);
}

recipes.addShaped("gt_coke_clay", <metaitem:compressed.coke.clay> * 8, [[<ore:ingotClay>, <ore:ingotClay>, <ore:ingotClay>],[<ore:sand>, <ore:formWood>, <minecraft:sand>], [<ore:sand>, <ore:sand>, <ore:sand>]]);
recipes.addShaped("gt_bronze_hull", <gregtech:machine_casing:10>, [[null, <ore:plateBronze>, null],[<ore:plateBronze>, <ore:gregHardHammers>, <ore:plateBronze>], [null, <ore:plateBronze>, null]]);
recipes.addShaped("gt_solar_boiler", <meta_tile_entity:steam_boiler_solar_bronze>, [[null, <ore:blockGlassColorless>, null],[<ore:pipeSmallBronze>, <ore:plateSilver>, <ore:pipeSmallBronze>], [null, <gregtech:machine_casing:11>, null]]);
recipes.addShaped("gt_coal_boiler", <meta_tile_entity:steam_boiler_coal_bronze>, [[null, <ore:plateBronze>, null],[<ore:plateBronze>, <ore:craftingFurnace>, <ore:plateBronze>], [null, <ore:blockBrick>, null]]);
recipes.addShaped("gt_lava_boiler", <meta_tile_entity:steam_boiler_lava_bronze>, [[null, <ore:plateBronze>, null],[<ore:plateBronze>, <ore:blockGlassColorless>, <ore:plateBronze>], [null, <gregtech:machine_casing:11>, null]]);
recipes.addShaped("gt_brick_hull", <gregtech:machine_casing:11>, [[null, <ore:plateBronze>, null],[null, <ore:blockBrick>, null], [null, <ore:plateBronze>, null]]); // Brick Bronze Hull

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
