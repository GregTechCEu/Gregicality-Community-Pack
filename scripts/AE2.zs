val engineering_processor = <appliedenergistics2:material:24>;
val logic_processor = <appliedenergistics2:material:22>;
val calculation_processor = <appliedenergistics2:material:23>;
val formation_core = <appliedenergistics2:material:43>;
val annihilation_core = <appliedenergistics2:material:44>;
val printed_silicon = <appliedenergistics2:material:20>;
val printed_engineering = <appliedenergistics2:material:17>;
val printed_logic = <appliedenergistics2:material:18>;
val printed_calculation = <appliedenergistics2:material:16>;

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
recipes.removeByRecipeName("appliedenergistics2:network/blocks/controller");
assembler.recipeBuilder()
	.inputs(<ore:frameGtAluminium>)
	.inputs(circuits[2] * 8)
	.inputs(tieredWires[2] * 16)
	.inputs(tieredPlates[2] * 6)
	.inputs(<ore:platePlastic> * 8)
	.inputs(sensors[2] * 2)
	.inputs(emitters[2] * 2)
	.inputs(engineering_processor * 8)
	.outputs(<appliedenergistics2:controller> * 4)
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