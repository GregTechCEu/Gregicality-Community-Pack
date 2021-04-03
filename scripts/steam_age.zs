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
recipes.addShaped("gt_bronze_hull", <gregtech:machine_casing:10>, [[null, <ore:plateBronze>, null],[<ore:plateBronze>, <ore:craftingToolHardHammer>, <ore:plateBronze>], [null, <ore:plateBronze>, null]]);
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

// Circuits
// Resistor
recipes.addShaped("gt_resistor", <metaitem:component.resistor>, [[<metaitem:rubber_drop>, <ore:wireFineCopper>, <metaitem:rubber_drop>], [<ore:paper>, <ore:dustRegularCharcoal> | <ore:dustRegularCoal> | <ore:dustRegularCarbon>, <ore:paper>], [null, <ore:wireFineCopper>, null]]);

mods.gtadditions.recipe.Utils.removeRecipeByOutput(assembler, [<metaitem:component.resistor>], [], false);

assembler.recipeBuilder().EUt(16).duration(100)
    .inputs(<metaitem:rubber_drop>)
    .inputs(<ore:dustRegularCharcoal> | <ore:dustRegularCoal> | <ore:dustRegularCarbon>)
    .inputs(<ore:wireFineCopper> * 2)
    .outputs(<metaitem:component.resistor>)
    .buildAndRegister();

assembler.recipeBuilder().EUt(16).duration(100)
    .inputs(<ore:dustRegularCharcoal> | <ore:dustRegularCoal> | <ore:dustRegularCarbon>)
    .inputs(<ore:wireFineCopper> * 4)
    .fluidInputs([<fluid:glue> * 250])
    .outputs(<metaitem:component.resistor> * 4)
    .buildAndRegister();

assembler.recipeBuilder().EUt(16).duration(100)
    .inputs(<ore:dustRegularCharcoal> | <ore:dustRegularCoal> | <ore:dustRegularCarbon>)
    .inputs(<ore:wireFineAnnealedCopper> * 4)
    .fluidInputs([<fluid:glue> * 250])
    .outputs(<metaitem:component.resistor> * 8)
    .buildAndRegister();

// Diode
mods.gtadditions.recipe.Utils.removeRecipeByOutput(assembler, [<metaitem:component.diode>], [], false);

assembler.recipeBuilder().EUt(30).duration(80)
    .inputs(<ore:wireFineCopper> * 4, <metaitem:wafer.silicon>)
    .fluidInputs([<fluid:glass> * 288])
    .outputs(<metaitem:component.diode> * 2)
    .buildAndRegister();

assembler.recipeBuilder().EUt(30).duration(80)
    .inputs(<ore:wireFineCopper> * 4, <metaitem:wafer.silicon>)
    .fluidInputs([<fluid:plastic> * 144])
    .outputs(<metaitem:component.diode> * 4)
    .buildAndRegister();

assembler.recipeBuilder().EUt(30).duration(80)
    .inputs(<ore:wireFineCopper> * 4, <ore:dustSmallGalliumArsenide>)
    .fluidInputs([<fluid:glass> * 288])
    .outputs(<metaitem:component.diode> * 4)
    .buildAndRegister();

assembler.recipeBuilder().EUt(30).duration(80)
    .inputs(<ore:wireFineCopper> * 4, <ore:dustSmallGalliumArsenide>)
    .fluidInputs([<fluid:plastic> * 144])
    .outputs(<metaitem:component.diode> * 8)
    .buildAndRegister();

assembler.recipeBuilder().EUt(120).duration(80)
    .inputs(<ore:wireFineAnnealedCopper> * 4, <ore:dustSmallGalliumArsenide>)
    .fluidInputs([<fluid:plastic> * 144])
    .outputs(<metaitem:component.diode> * 16)
    .buildAndRegister();

// Vacuum Tube
mods.gtadditions.recipe.Utils.removeRecipeByOutput(assembler, [circuits[0].itemArray[0]], [], false);

recipes.addShaped("gt_vacuum_tube", circuits[0].itemArray[0], [[null, <metaitem:component.glass.tube>, null], [null, <ore:springSmallCopper>, null], [<ore:stickSteel>, null, <ore:stickSteel>]]);

assembler.recipeBuilder().EUt(16).duration(160)
    .inputs(<metaitem:component.glass.tube>, <ore:springSmallCopper>, <ore:boltSteel> * 2)
    .outputs(circuits[0].itemArray[0] * 2)
    .buildAndRegister();

assembler.recipeBuilder().EUt(30).duration(40)
    .inputs(<metaitem:component.glass.tube>, <ore:wireFineCopper>, <ore:boltSteel> * 1)
    .fluidInputs([<fluid:red_alloy> * 18])
    .outputs(circuits[0].itemArray[0] * 3)
    .buildAndRegister();

assembler.recipeBuilder().EUt(30).duration(40)
    .inputs(<metaitem:component.glass.tube>, <ore:wireFineAnnealedCopper>, <ore:boltSteel> * 1)
    .fluidInputs([<fluid:red_alloy> * 18])
    .outputs(circuits[0].itemArray[0] * 4)
    .buildAndRegister();


// Primitive Processor
recipes.addShaped("gt_primitive_processor", circuits[1].itemArray[0] * 2, [[<metaitem:component.resistor>, tieredPlates[0], <metaitem:component.resistor>], [circuits[0].itemArray[0], <metaitem:board.basic>, circuits[0].itemArray[0]], [<ore:cableGtSingleRedAlloy>, <ore:cableGtSingleRedAlloy>, <ore:cableGtSingleRedAlloy>]]);

circuit_assembler.recipeBuilder().EUt(16).duration(200)
    .inputs(<metaitem:board.basic>, <metaitem:component.resistor> * 2, <ore:wireGtSingleRedAlloy> * 2, circuits[0].itemArray[0] * 2)
    .fluidInputs([soldering_alloys[0] * 144])
    .outputs(circuits[1].itemArray[0] * 2)
    .buildAndRegister();

circuit_assembler.recipeBuilder().EUt(16).duration(200)
    .inputs(<metaitem:board.basic>, <metaitem:component.resistor> * 2, <ore:wireGtSingleRedAlloy> * 2, circuits[0].itemArray[0] * 2)
    .fluidInputs([soldering_alloys[1] * 72])
    .outputs(circuits[1].itemArray[0] * 2)
    .buildAndRegister();

// Primitive Assembly
recipes.addShaped("gt_primitive_assembly", <metaitem:circuit.assembly.primitive>, [[<metaitem:component.diode>, tieredPlates[0], <metaitem:component.diode>], [circuits[1].itemArray[0], <metaitem:board.basic>, circuits[1].itemArray[0]], [<ore:cableGtSingleCopper>, <ore:cableGtSingleCopper>, <ore:cableGtSingleCopper>]]);

circuit_assembler.recipeBuilder().EUt(30).duration(300)
    .inputs(<metaitem:board.basic>, circuits[1].itemArray[0], <metaitem:component.diode> * 2, <ore:cableGtSingleCopper> * 2)
    .fluidInputs([soldering_alloys[0] * 144])
    .outputs(<metaitem:circuit.assembly.primitive> * 2)
    .buildAndRegister();

circuit_assembler.recipeBuilder().EUt(30).duration(300)
    .inputs(<metaitem:board.basic>, circuits[1].itemArray[0], <metaitem:component.diode> * 2, <ore:cableGtSingleCopper> * 2)
    .fluidInputs([soldering_alloys[1] * 72])
    .outputs(<metaitem:circuit.assembly.primitive> * 2)
    .buildAndRegister();