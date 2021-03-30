import mods.appliedenergistics2.Inscriber;
import mods.threng.Etcher;
import mods.threng.Aggregator;


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
val part_1k = <appliedenergistics2:material:35>;
val part_4k = <appliedenergistics2:material:36>;
val part_16k = <appliedenergistics2:material:37>;
val part_64k = <appliedenergistics2:material:38>;
val part_256k = <extracells:storage.component>;
val part_1024k = <extracells:storage.component:1>;
val part_4096k = <extracells:storage.component:2>;
val part_16384k = <extracells:storage.component:3>;
val fluid_part_1k = <appliedenergistics2:material:54>;
val fluid_part_4k = <appliedenergistics2:material:55>;
val fluid_part_16k = <appliedenergistics2:material:56>;
val fluid_part_64k = <appliedenergistics2:material:57>;
val fluid_part_256k = <extracells:storage.component:8>;
val fluid_part_1024k = <extracells:storage.component:9>;
val fluid_part_4096k = <extracells:storage.component:10>;
val parallel_processor = <threng:material:6>;
val speculative_processor = <threng:material:14>;
val fluix_steel = <threng:material>;
val carbonic_fluix = <threng:material:1>;
val resonating_crystal = <threng:material:5>;

mods.jei.JEI.hideCategory("appliedenergistics2.inscriber");


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
	.notConsumable(scripts.gregtech_globals.intCircuit(0))
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
	.notConsumable(scripts.gregtech_globals.intCircuit(1))
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
	.notConsumable(scripts.gregtech_globals.intCircuit(2))
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


//storage disks
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_1k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_4k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_16k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_64k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_1k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_4k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_16k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_64k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_components_cell_1k_part");
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_components_cell_4k_part");
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_components_cell_16k_part");
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_components_cell_64k_part");
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_components_cell_1k_part");
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_components_cell_4k_part");
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_components_cell_16k_part");
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_components_cell_64k_part");
recipes.removeByRecipeName("extracells:storagecomponent/fluid/256k");
recipes.removeByRecipeName("extracells:storagecomponent/fluid/1024k");
recipes.removeByRecipeName("extracells:storagecomponent/fluid/4096k");
recipes.removeByRecipeName("extracells:storagecomponent/item/256k");
recipes.removeByRecipeName("extracells:storagecomponent/item/1024k");
recipes.removeByRecipeName("extracells:storagecomponent/item/4096k");
recipes.removeByRecipeName("extracells:storagecomponent/item/16384k");

assembler.recipeBuilder()
	.inputs(logic_processor)
	.inputs(<ore:plateCertusQuartz> * 4)
	.inputs(<ore:plateRedstone> * 4)
	.inputs(<ore:wireFineCopper> * 4)
	.outputs(part_1k)
	.EUt(120)
	.duration(100)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(calculation_processor)
	.inputs(part_1k * 3)
	.inputs(<metaitem:plate.random_access_memory> * 2)
	.inputs(circuits[1])
	.notConsumable(scripts.gregtech_globals.intCircuit(0))
	.outputs(part_4k)
	.EUt(120)
	.duration(150)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs(calculation_processor)
	.inputs(part_4k * 3)
	.inputs(<metaitem:plate.nor_memory_chip> * 4)
	.inputs(<metaitem:plate.nand_memory_chip> * 4)
	.inputs(circuits[2])
	.notConsumable(scripts.gregtech_globals.intCircuit(0))
	.outputs(part_16k)
	.EUt(480)
	.duration(200)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs(parallel_processor * 8)
	.inputs(speculative_processor * 8)
	.inputs(<metaitem:plate.system_on_chip> * 4)
	.inputs(circuits[5])
	.notConsumable(scripts.gregtech_globals.intCircuit(0))
	.outputs(part_16k)
	.EUt(122880)
	.duration(20)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs(calculation_processor)
	.inputs(part_16k * 3)
	.inputs(<metaitem:plate.central_processing_unit> * 8)
	.inputs(<metaitem:plate.integrated_logic_circuit> * 8)
	.notConsumable(scripts.gregtech_globals.intCircuit(0))
	.outputs(part_64k)
	.EUt(1920)
	.duration(250)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs(calculation_processor)
	.inputs(part_16k * 3)
	.inputs(<metaitem:plate.central_processing_unit> * 8)
	.inputs(<metaitem:plate.integrated_logic_circuit> * 8)
	.notConsumable(scripts.gregtech_globals.intCircuit(0))
	.outputs(part_64k)
	.EUt(1920)
	.duration(250)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(engineering_processor)
	.inputs(logic_processor)
	.inputs(part_64k * 3)
	.inputs(circuits[6])
	.outputs(part_256k)
	.EUt(30720)
	.duration(100)
	.buildAndRegister();
	
		
assembler.recipeBuilder()
	.inputs(parallel_processor * 16)
	.inputs(speculative_processor * 16)
	.inputs(<metaitem:hasoc> * 4)
	.inputs(circuits[7])
	.notConsumable(scripts.gregtech_globals.intCircuit(0))
	.outputs(part_256k)
	.EUt(491520)
	.duration(20)
	.buildAndRegister();
	
	
assembler.recipeBuilder()
	.inputs(engineering_processor * 2)
	.inputs(logic_processor * 2)
	.inputs(part_256k * 3)
	.inputs(circuits[7])
	.outputs(part_1024k)
	.EUt(122880)
	.duration(100)
	.buildAndRegister();
	
	
assembler.recipeBuilder()
	.inputs(engineering_processor * 4)
	.inputs(logic_processor * 4)
	.inputs(part_1024k * 3)
	.inputs(circuits[8])
	.outputs(part_4096k)
	.EUt(491520)
	.duration(100)
	.buildAndRegister();
	
	
assembler.recipeBuilder()
	.inputs(engineering_processor * 8)
	.inputs(logic_processor * 8)
	.inputs(part_4096k * 3)
	.inputs(circuits[9])
	.outputs(part_16384k)
	.EUt(491520)
	.duration(250)
	.buildAndRegister();
	

assembler.recipeBuilder()
	.inputs(logic_processor)
	.inputs(<ore:plateCertusQuartz> * 4)
	.inputs(<ore:plateLapis> * 4)
	.inputs(<ore:wireFineCopper> * 4)
	.outputs(fluid_part_1k)
	.EUt(120)
	.duration(100)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs(calculation_processor)
	.inputs(fluid_part_1k * 3)
	.inputs(<metaitem:plate.random_access_memory> * 2)
	.inputs(circuits[1])
	.notConsumable(scripts.gregtech_globals.intCircuit(1))
	.outputs(fluid_part_4k)
	.EUt(120)
	.duration(150)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs(calculation_processor)
	.inputs(fluid_part_4k * 3)
	.inputs(<metaitem:plate.nor_memory_chip> * 4)
	.inputs(<metaitem:plate.nand_memory_chip> * 4)
	.inputs(circuits[2])
	.notConsumable(scripts.gregtech_globals.intCircuit(1))
	.outputs(fluid_part_16k)
	.EUt(480)
	.duration(200)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs(calculation_processor)
	.inputs(fluid_part_16k * 3)
	.inputs(<metaitem:plate.central_processing_unit> * 8)
	.inputs(<metaitem:plate.integrated_logic_circuit> * 8)
	.notConsumable(scripts.gregtech_globals.intCircuit(1))
	.outputs(fluid_part_64k)
	.EUt(1920)
	.duration(250)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs(parallel_processor * 8)
	.inputs(speculative_processor * 8)
	.inputs(<metaitem:plate.system_on_chip> * 4)
	.inputs(circuits[5])
	.notConsumable(scripts.gregtech_globals.intCircuit(1))
	.outputs(fluid_part_16k)
	.EUt(122880)
	.duration(20)
	.buildAndRegister();
	
	
assembler.recipeBuilder()
	.inputs(engineering_processor)
	.inputs(logic_processor)
	.inputs(fluid_part_64k * 3)
	.inputs(circuits[6])
	.outputs(fluid_part_256k)
	.EUt(30720)
	.duration(100)
	.buildAndRegister();
	
		
assembler.recipeBuilder()
	.inputs(parallel_processor * 16)
	.inputs(speculative_processor * 16)
	.inputs(<metaitem:hasoc> * 4)
	.inputs(circuits[7])
	.notConsumable(scripts.gregtech_globals.intCircuit(1))
	.outputs(fluid_part_256k)
	.EUt(491520)
	.duration(20)
	.buildAndRegister();
	
	
assembler.recipeBuilder()
	.inputs(engineering_processor * 2)
	.inputs(logic_processor * 2)
	.inputs(fluid_part_256k * 3)
	.inputs(circuits[7])
	.outputs(fluid_part_1024k)
	.EUt(122880)
	.duration(100)
	.buildAndRegister();
	
	
assembler.recipeBuilder()
	.inputs(engineering_processor * 4)
	.inputs(logic_processor * 4)
	.inputs(fluid_part_1024k * 3)
	.inputs(circuits[8])
	.outputs(fluid_part_4096k)
	.EUt(491520)
	.duration(100)
	.buildAndRegister();
	
	
recipes.removeByRecipeName("appliedenergistics2:network/cells/empty_storage_cell");
assembler.recipeBuilder()
	.inputs(tieredGlass[2])
	.inputs(<ore:plateRedstone>*2)
	.inputs(tieredPlates[2] * 2)
	.inputs(<ore:wireFineCopper> * 4)
	.outputs(<appliedenergistics2:material:39>)
	.EUt(120)
	.duration(200)
	.buildAndRegister();


recipes.removeByRecipeName("extracells:storagecells/item/owncasing/256k");
recipes.removeByRecipeName("extracells:storagecells/item/owncasing/1024k");
recipes.removeByRecipeName("extracells:storagecells/item/owncasing/4096k");
recipes.removeByRecipeName("extracells:storagecells/item/owncasing/16384");
recipes.removeByRecipeName("extracells:storagecells/fluid/owncasing/256k");
recipes.removeByRecipeName("extracells:storagecells/fluid/owncasing/1024k");
recipes.removeByRecipeName("extracells:storagecells/fluid/owncasing/4096k");
recipes.removeByRecipeName("extracells:storagecells/case/item");

assembler.recipeBuilder()
	.inputs(tieredPlates[5] * 4)
	.inputs(tieredGlass[5] * 2)
	.inputs(<ore:boltRuridit> * 4)
	.inputs(<ore:wireFineEnderium> * 16)
	.notConsumable(scripts.gregtech_globals.intCircuit(0))
	.outputs(<extracells:storage.casing>)
	.EUt(7680)
	.duration(200)
	.buildAndRegister();


assembler.recipeBuilder()
	.inputs(tieredPlates[5] * 4)
	.inputs(tieredGlass[5] * 2)
	.inputs(<ore:boltRuridit> * 4)
	.inputs(<ore:wireFineEnderium> * 16)
	.notConsumable(scripts.gregtech_globals.intCircuit(1))
	.outputs(<extracells:storage.casing:1>)
	.EUt(7680)
	.duration(200)
	.buildAndRegister();


Aggregator.removeRecipe(fluix_steel);
Aggregator.removeRecipe(carbonic_fluix);
Aggregator.removeRecipe(resonating_crystal);

mixer.recipeBuilder()
	.inputs(<ore:dustCoal>)
	.inputs(<ore:dustFluix>)
	.inputs(<ore:dustSilicon>)
	.notConsumable(scripts.gregtech_globals.intCircuit(3))
	.outputs(carbonic_fluix * 3)
	.EUt(120)
	.duration(100)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(carbonic_fluix)
	.inputs(<ore:ingotSteel>)
	.outputs(fluix_steel * 2)
	.property("temperature", 2600)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<ore:dustDiamond>)
	.inputs(<ore:dustEnderPearl>)
	.inputs(<appliedenergistics2:material:45>)
	.notConsumable(scripts.gregtech_globals.intCircuit(3))
	.outputs(<ore:dustResonatingCrystal>.firstItem * 3)
	.EUt(480)
	.duration(100)
	.buildAndRegister();
	
implosion_compressor.recipeBuilder()
	.EUt(480)
	.duration(10)
	.inputs(<ore:dustResonatingCrystal> * 4)
	.outputs(resonating_crystal * 4)
	.property("explosives", 1)
	.buildAndRegister();
	
Etcher.removeRecipe(parallel_processor);
circuit_assembler.recipeBuilder()
	.inputs(resonating_crystal)
	.inputs(printed_silicon * 4)
	.inputs(circuits[3])
	.inputs(<ore:wireFineRedAlloy> * 8)
	.outputs(parallel_processor)
	.EUt(1920)
	.duration(100)
	.buildAndRegister();

Etcher.removeRecipe(speculative_processor);
circuit_assembler.recipeBuilder()
	.inputs(<threng:material:13>)
	.inputs(printed_silicon * 4)
	.inputs(circuits[4])
	.inputs(<ore:wireFineRedAlloy> * 16)
	.outputs(speculative_processor)
	.EUt(1920)
	.duration(100)
	.buildAndRegister();