import mods.appliedenergistics2.Inscriber;
import mods.threng.Etcher;


val engineering_processor = <appliedenergistics2:material:24>;
val logic_processor = <appliedenergistics2:material:22>;
val calculation_processor = <appliedenergistics2:material:23>;
val formation_core = <appliedenergistics2:material:43>;
val annihilation_core = <appliedenergistics2:material:44>;
val printed_silicon = <appliedenergistics2:material:20>;
val printed_engineering = <appliedenergistics2:material:17>;
val printed_logic = <appliedenergistics2:material:18>;
val printed_calculation = <appliedenergistics2:material:16>;
val me_cable = <appliedenergistics2:part:16>;

//patterns
recipes.removeByRecipeName("appliedenergistics2:network/crafting/patterns_blank");
assembler.recipeBuilder()
	.inputs(circuits[3] * 1)
	.inputs(<ore:platePlastic> * 2)
	.inputs(tieredPlates[3] * 2)
	.inputs(<ore:wireFineGold> * 8)
	.outputs(<appliedenergistics2:material:52> * 8)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

//controller
recipes.removeByRecipeName("appliedenergistics2:network/blocks/energy_energy_acceptor");
assembler.recipeBuilder()
	.inputs(<ore:frameGtAluminium>)
	.inputs(circuits[2])
	.inputs(<ore:wireFineCopper> * 16)
	.inputs(tieredPlates[2] * 4)
	.inputs(<ore:platePlastic> * 4)
	.inputs(sensors[2])
	.inputs(emitters[2])
	.inputs(engineering_processor * 8)
	.outputs(<appliedenergistics2:energy_acceptor>)
	.EUt(120)
	.duration(100)
	.buildAndRegister();
	

//molecular assembler
recipes.removeByRecipeName("appliedenergistics2:network/crafting/molecular_assembler");
assembler.recipeBuilder()
	.inputs(formation_core * 1)
	.inputs(annihilation_core * 1)
	.inputs(tieredGlass[3] * 1)
	.inputs(tieredPlates[3] * 2)
	.inputs(tieredWires[3] * 4)
	.outputs(<appliedenergistics2:molecular_assembler> * 1)
	.EUt(480)
	.duration(100)
	.buildAndRegister();
	
//interface
recipes.removeByRecipeName("appliedenergistics2:network/blocks/interfaces_interface");
assembler.recipeBuilder()
	.inputs(formation_core * 1)
	.inputs(annihilation_core * 1)
	.inputs(<ore:frameGtStainlessSteel> * 1)
	.inputs(robotArms[3] * 1)
	.inputs(circuits[3] * 1)
	.outputs(<appliedenergistics2:interface>)
	.EUt(480)
	.duration(50)
	.buildAndRegister();
	
//fluid interface
recipes.removeByRecipeName("appliedenergistics2:network/blocks/fluid_interfaces_interface");
assembler.recipeBuilder()
	.inputs(formation_core * 1)
	.inputs(annihilation_core * 1)
	.inputs(<ore:frameGtStainlessSteel> * 1)
	.inputs(pumps[3] * 1)
	.inputs(circuits[3] * 1)
	.outputs(<appliedenergistics2:fluid_interface>)
	.EUt(480)
	.duration(50)
	.buildAndRegister();

//dual interface
recipes.removeByRecipeName("ae2fc:dual_interface");
assembler.recipeBuilder()
	.inputs(formation_core * 1)
	.inputs(annihilation_core * 1)
	.inputs(<ore:frameGtTitanium> * 1)
	.inputs(pumps[3] * 1)
	.inputs(robotArms[3] * 1)
	.inputs(circuits[3] * 1)
	.outputs(<ae2fc:dual_interface>)
	.EUt(1920)
	.duration(50)
	.buildAndRegister();
	
//printed circuits
autoclave.recipeBuilder()
	.inputs(<appliedenergistics2:smooth_sky_stone_block> * 1)
	.fluidInputs(<liquid:water> * 1000)
	.outputs(<ore:lensSkystone>.firstItem)
	.EUt(120)
	.duration(100)
	.buildAndRegister();
	
laser_engraver.recipeBuilder()
	.inputs(<ore:plateDiamond> * 1)
	.notConsumable(<ore:lensSkystone>)
	.outputs(printed_engineering * 1)
	.EUt(120)
	.duration(50)
	.buildAndRegister();
	
laser_engraver.recipeBuilder()
	.inputs(<ore:plateSilicon> * 1)
	.notConsumable(<ore:lensSkystone>)
	.outputs(printed_silicon * 1)
	.EUt(120)
	.duration(50)
	.buildAndRegister();
	
laser_engraver.recipeBuilder()
	.inputs(<ore:plateGold> * 1)
	.notConsumable(<ore:lensSkystone>)
	.outputs(printed_logic * 1)
	.EUt(120)
	.duration(50)
	.buildAndRegister();
	
laser_engraver.recipeBuilder()
	.inputs(<ore:plateCertusQuartz> * 1)
	.notConsumable(<ore:lensSkystone>)
	.outputs(printed_calculation * 1)
	.EUt(120)
	.duration(50)
	.buildAndRegister();
	
	
Inscriber.removeRecipe(printed_calculation);
Inscriber.removeRecipe(printed_engineering);
Inscriber.removeRecipe(printed_logic);
Inscriber.removeRecipe(printed_silicon);

//processors
circuit_assembler.recipeBuilder()
	.inputs(printed_silicon * 1)
	.inputs(circuits[1] * 1)
	.inputs(printed_calculation * 1)
	.outputs(calculation_processor * 1)
	.EUt(30)
	.duration(100)
	.buildAndRegister();
	
circuit_assembler.recipeBuilder()
	.inputs(printed_silicon * 1)
	.inputs(circuits[1] * 1)
	.inputs(printed_logic * 1)
	.outputs(logic_processor * 1)
	.EUt(30)
	.duration(100)
	.buildAndRegister();
	
circuit_assembler.recipeBuilder()
	.inputs(printed_silicon * 1)
	.inputs(circuits[1] * 1)
	.inputs(printed_engineering * 1)
	.outputs(engineering_processor * 1)
	.EUt(30)
	.duration(100)
	.buildAndRegister();
	
Inscriber.removeRecipe(engineering_processor);
Inscriber.removeRecipe(logic_processor);
Inscriber.removeRecipe(calculation_processor);
Etcher.removeRecipe(engineering_processor);
Etcher.removeRecipe(logic_processor);
Etcher.removeRecipe(calculation_processor);

recipes.removeByRecipeName("appliedenergistics2:misc/tint_tnt");
recipes.addShapeless(<appliedenergistics2:tiny_tnt> * 4, [<minecraft:tnt>]);

recipes.removeByRecipeName("appliedenergistics2:network/blocks/security_station");
recipes.addShaped(<appliedenergistics2:security_station>, [[<ore:plateAluminium>, <appliedenergistics2:chest>, <ore:plateAluminium>],[me_cable, <appliedenergistics2:material:37>, me_cable], [<ore:plateAluminium>, <appliedenergistics2:material:24>, <ore:plateAluminium>]]);

recipes.removeByRecipeName("appliedenergistics2:network/blocks/storage_drive");
assembler.recipeBuilder()
	.inputs(engineering_processor * 2)
	.inputs(tieredPlates[2] * 4)
	.inputs(me_cable * 2)
	.outputs(<appliedenergistics2:drive>)
	.EUt(120)
	.duration(100)
	.buildAndRegister();

recipes.removeByRecipeName("appliedenergistics2:network/blocks/storage_chest");
recipes.addShaped(<appliedenergistics2:chest>, [[<ore:blockGlass>, <appliedenergistics2:part:380>, <ore:blockGlass>],[me_cable, null, me_cable], [<ore:plateAluminium>, <ore:crystalPureFluix> | <ore:crystalFluix>, <ore:plateAluminium>]]);

recipes.removeByRecipeName("appliedenergistics2:network/parts/panels_semi_dark_monitor");
assembler.recipeBuilder()
	.inputs(tieredPlates[2] * 1)
	.inputs(<ore:plateGlowstone> * 2)
	.inputs(circuits[2] * 1)
	.inputs(<appliedenergistics2:quartz_glass> * 3)
	.outputs(<appliedenergistics2:part:180> * 3)
	.EUt(120)
	.duration(100)
	.buildAndRegister();
	
compressor.recipeBuilder()
	.inputs(<ore:crystalPureFluix> | <ore:crystalFluix>)
	.outputs(<ore:plateFluix>.firstItem)
	.EUt(120)
	.duration(100)
	.buildAndRegister();

recipes.removeByRecipeName("appliedenergistics2:materials/annihilationcore");
assembler.recipeBuilder()
	.inputs(<ore:plateNetherQuartz>)
	.inputs(<ore:plateFluix>)
	.inputs(logic_processor)
	.outputs(annihilation_core * 2)
	.EUt(120)
	.duration(200)
	.buildAndRegister();
	
recipes.removeByRecipeName("appliedenergistics2:materials/formationcore");
assembler.recipeBuilder()
	.inputs(<ore:plateCertusQuartz>)
	.inputs(<ore:plateFluix>)
	.inputs(logic_processor)
	.outputs(formation_core * 2)
	.EUt(120)
	.duration(200)
	.buildAndRegister();
	
recipes.removeByRecipeName("appliedenergistics2:network/blocks/cell_workbench");
assembler.recipeBuilder()
	.inputs(<ore:frameGtStainlessSteel>)
	.inputs(calculation_processor)
	.inputs(<ore:chest>)
	.outputs(<appliedenergistics2:cell_workbench>)
	.EUt(120)
	.duration(150)
	.buildAndRegister();
	
recipes.removeByRecipeName("appliedenergistics2:network/blocks/io_port");
assembler.recipeBuilder()
	.inputs(me_cable * 2)
	.inputs(tieredGlass[2] * 2)
	.inputs(<appliedenergistics2:drive>)
	.inputs(logic_processor)
	.inputs(tieredPlates[2] * 2)
	.outputs(<appliedenergistics2:io_port>)
	.EUt(120)
	.duration(200)
	.buildAndRegister();

recipes.removeByRecipeName("appliedenergistics2:network/blocks/io_condenser");
assembler.recipeBuilder()
	.inputs(tieredPlates[2] * 2)
	.inputs(tieredGlass[2] * 2)
	.inputs(<ore:plateFluix> * 2)
	.inputs(circuits[2])
	.outputs(<appliedenergistics2:condenser>)
	.EUt(120)
	.duration(200)
	.buildAndRegister();

	
recipes.removeByRecipeName("appliedenergistics2:network/blocks/energy_energy_cell");
assembler.recipeBuilder()
	.inputs(<ore:plateCertusQuartz> * 4)
	.inputs(<ore:plateFluix> * 4)
	.inputs(<gregtech:meta_item_1:32527> | <gregtech:meta_item_1:32528> | <gregtech:meta_item_1:32529>)
	.inputs(<ore:frameGtAluminium>)
	.outputs(<appliedenergistics2:energy_cell>.withTag({}))
	.EUt(120)
	.duration(200)
	.buildAndRegister();
	
recipes.removeByRecipeName("appliedenergistics2:network/crafting/cpu_crafting_unit");
assembler.recipeBuilder()
	.inputs(logic_processor)
	.inputs(calculation_processor)
	.inputs(engineering_processor)
	.inputs(me_cable * 2)
	.inputs(tieredPlates[3] * 2)
	.outputs(<appliedenergistics2:crafting_unit>)
	.EUt(480)
	.duration(100)
	.buildAndRegister();
