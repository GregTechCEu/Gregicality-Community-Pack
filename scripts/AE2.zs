import mods.appliedenergistics2.Inscriber;
import mods.threng.Etcher;
import mods.threng.Aggregator;
import mods.threng.Centrifuge;

val engineering_processor = <appliedenergistics2:material:24>;
val logic_processor = <appliedenergistics2:material:22>;
val calculation_processor = <appliedenergistics2:material:23>;
val formation_core = <appliedenergistics2:material:43>;
val annihilation_core = <appliedenergistics2:material:44>;
val printed_silicon = <appliedenergistics2:material:20>;
val printed_engineering = <appliedenergistics2:material:17>;
val printed_logic = <appliedenergistics2:material:18>;
val printed_calculation = <appliedenergistics2:material:16>;
val printed_parallel = <contenttweaker:printed_parallel>;
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
val fluix_logic_unit = <threng:material:4>;

val name_removals = [
	"appliedenergistics2:network/crafting/patterns_blank",
	"appliedenergistics2:network/blocks/energy_energy_acceptor",
	"appliedenergistics2:network/crafting/molecular_assembler",
	"appliedenergistics2:network/blocks/interfaces_interface",
	"appliedenergistics2:network/blocks/fluid_interfaces_interface",
	"ae2fc:dual_interface",
	"appliedenergistics2:misc/tint_tnt",
	"appliedenergistics2:network/blocks/security_station",
	"appliedenergistics2:network/blocks/storage_drive",
	"appliedenergistics2:network/blocks/storage_chest",
	"appliedenergistics2:network/parts/panels_semi_dark_monitor",
	"appliedenergistics2:materials/annihilationcore",
	"appliedenergistics2:materials/formationcore",
	"appliedenergistics2:network/blocks/cell_workbench",
	"appliedenergistics2:network/blocks/io_port",
	"appliedenergistics2:network/blocks/io_condenser",
	"appliedenergistics2:network/blocks/energy_energy_cell",
	"appliedenergistics2:network/crafting/cpu_crafting_unit",
	"appliedenergistics2:network/cells/storage_cell_1k",
	"appliedenergistics2:network/cells/storage_cell_4k",
	"appliedenergistics2:network/cells/storage_cell_16k",
	"appliedenergistics2:network/cells/storage_cell_64k",
	"appliedenergistics2:network/cells/fluid_storage_cell_1k",
	"appliedenergistics2:network/cells/fluid_storage_cell_4k",
	"appliedenergistics2:network/cells/fluid_storage_cell_16k",
	"appliedenergistics2:network/cells/fluid_storage_cell_64k",
	"appliedenergistics2:network/cells/storage_components_cell_1k_part",
	"appliedenergistics2:network/cells/storage_components_cell_4k_part",
	"appliedenergistics2:network/cells/storage_components_cell_16k_part",
	"appliedenergistics2:network/cells/storage_components_cell_64k_part",
	"appliedenergistics2:network/cells/fluid_storage_components_cell_1k_part",
	"appliedenergistics2:network/cells/fluid_storage_components_cell_4k_part",
	"appliedenergistics2:network/cells/fluid_storage_components_cell_16k_part",
	"appliedenergistics2:network/cells/fluid_storage_components_cell_64k_part",
	"extracells:storagecomponent/fluid/256k",
	"extracells:storagecomponent/fluid/1024k",
	"extracells:storagecomponent/fluid/4096k",
	"extracells:storagecomponent/item/256k",
	"extracells:storagecomponent/item/1024k",
	"extracells:storagecomponent/item/4096k",
	"extracells:storagecomponent/item/16384k",
	"appliedenergistics2:network/cells/empty_storage_cell",
	"extracells:storagecells/item/owncasing/256k",
	"extracells:storagecells/item/owncasing/1024k",
	"extracells:storagecells/item/owncasing/4096k",
	"extracells:storagecells/item/owncasing/16384",
	"extracells:storagecells/fluid/owncasing/256k",
	"extracells:storagecells/fluid/owncasing/1024k",
	"extracells:storagecells/fluid/owncasing/4096k",
	"extracells:storagecells/case/item",
	"threng:steel_process_dust",
	"threng:machine_core",
	"threng:pau",
	"threng:level_maintainer",
	"threng:ma_frame",
	"threng:spec_core_2",
	"threng:spec_core_4",
	"threng:centrifuge",
	"appliedenergistics2:tools/network_biometric_card",
	"appliedenergistics2:tools/network_memory_card",
	"appliedenergistics2:tools/misctools_entropy_manipulator",
	"appliedenergistics2:network/cells/view_cell",
	"appliedenergistics2:materials/advancedcard",
	"appliedenergistics2:materials/basiccard",
	"appliedenergistics2:network/parts/planes_annihilation_fluid_alt",
	"appliedenergistics2:network/parts/planes_annihilation_fluid",
	"appliedenergistics2:network/parts/planes_formation_fluid_alt",
	"appliedenergistics2:network/parts/planes_formation_fluid",
	"appliedenergistics2:network/parts/planes_annihilation_alt2",
	"appliedenergistics2:network/parts/planes_annihilation_alt",
	"appliedenergistics2:network/parts/planes_formation",
	"appliedenergistics2:network/parts/planes_formation_alt",
	"appliedenergistics2:network/parts/toggle_bus",
	"appliedenergistics2:network/parts/tunnels_me",
	"appliedenergistics2:network/wireless_part",
	"wct:wct",
	"appliedenergistics2:network/blocks/quantum_ring",
	"appliedenergistics2:network/blocks/quantum_link",
	"appliedenergistics2:network/parts/import_bus",
	"appliedenergistics2:network/parts/import_bus_fluid",
	"appliedenergistics2:network/parts/export_bus_fluid",
	"appliedenergistics2:network/parts/export_bus",
	"ae2fc:fluid_discretizer",
	"ae2fc:fluid_pattern_encoder",
	"ae2fc:fluid_packet_decoder",
	"ae2fc:ingredient_buffer",
	"ae2fc:burette"
] as string[];

for item in name_removals {
	recipes.removeByRecipeName(item);
}

//patterns
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

recipes.addShapeless(<appliedenergistics2:tiny_tnt> * 4, [<minecraft:tnt>]);

recipes.addShaped(<appliedenergistics2:security_station>, [[<ore:plateAluminium>, <appliedenergistics2:chest>, <ore:plateAluminium>],[me_cable, <appliedenergistics2:material:37>, me_cable], [<ore:plateAluminium>, <appliedenergistics2:material:24>, <ore:plateAluminium>]]);

assembler.recipeBuilder()
	.inputs(engineering_processor * 2)
	.inputs(tieredPlates[2] * 4)
	.inputs(me_cable * 2)
	.outputs(<appliedenergistics2:drive>)
	.EUt(120)
	.duration(100)
	.buildAndRegister();

recipes.addShaped(<appliedenergistics2:chest>, [[<ore:blockGlass>, <appliedenergistics2:part:380>, <ore:blockGlass>],[me_cable, null, me_cable], [<ore:plateAluminium>, <ore:crystalPureFluix> | <ore:crystalFluix>, <ore:plateAluminium>]]);

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

assembler.recipeBuilder()
	.inputs(<ore:plateNetherQuartz>)
	.inputs(<ore:plateFluix>)
	.inputs(logic_processor)
	.outputs(annihilation_core * 2)
	.EUt(120)
	.duration(200)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs(<ore:plateCertusQuartz>)
	.inputs(<ore:plateFluix>)
	.inputs(logic_processor)
	.outputs(formation_core * 2)
	.EUt(120)
	.duration(200)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<ore:frameGtStainlessSteel>)
	.inputs(calculation_processor)
	.inputs(<ore:chest>)
	.outputs(<appliedenergistics2:cell_workbench>)
	.EUt(120)
	.duration(150)
	.buildAndRegister();

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

assembler.recipeBuilder()
	.inputs(tieredPlates[2] * 2)
	.inputs(tieredGlass[2] * 2)
	.inputs(<ore:plateFluix> * 2)
	.inputs(circuits[2])
	.outputs(<appliedenergistics2:condenser>)
	.EUt(120)
	.duration(200)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<ore:plateCertusQuartz> * 4)
	.inputs(<ore:plateFluix> * 4)
	.inputs(<metaitem:battery.re.mv.sodium> | <metaitem:battery.re.mv.lithium> | <metaitem:battery.re.mv.cadmium)
	.inputs(<ore:frameGtAluminium>)
	.outputs(<appliedenergistics2:energy_cell>.withTag({}))
	.EUt(120)
	.duration(200)
	.buildAndRegister();
	
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
	
	
assembler.recipeBuilder()
	.inputs(tieredGlass[2])
	.inputs(<ore:plateRedstone>*2)
	.inputs(tieredPlates[2] * 2)
	.inputs(<ore:wireFineCopper> * 4)
	.outputs(<appliedenergistics2:material:39>)
	.EUt(120)
	.duration(200)
	.buildAndRegister();

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
furnace.remove(fluix_steel);

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
	.inputs(printed_parallel)
	.inputs(printed_silicon * 4)
	.inputs(circuits[3])
	.inputs(<ore:wireFineRedAlloy> * 8)
	.outputs(parallel_processor)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

Etcher.removeRecipe(speculative_processor);
circuit_assembler.recipeBuilder()
	.inputs(<threng:material:13>)
	.inputs(printed_silicon * 4)
	.inputs(circuits[4])
	.inputs(<ore:wireFineRedAlloy> * 16)
	.outputs(speculative_processor)
	.EUt(480)
	.duration(100)
	.buildAndRegister();
	
compressor.recipeBuilder()
	.inputs(resonating_crystal * 9)
	.outputs(<ore:blockResonatingCrystal>.firstItem)
	.EUt(120)
	.duration(100)
	.buildAndRegister();
	
cutting_saw.recipeBuilder()
	.inputs(<ore:blockResonatingCrystal>)
	.outputs(<ore:plateResonatingCrystal>.firstItem * 9)
	.EUt(120)
	.duration(480)
	.buildAndRegister();

laser_engraver.recipeBuilder()
	.inputs(<ore:plateResonatingCrystal>)
	.notConsumable(<ore:lensSkystone>)
	.outputs(printed_parallel)
	.EUt(1920)
	.duration(100)
	.buildAndRegister();
	
metal_bender.recipeBuilder()
	.inputs(fluix_steel)
	.circuit(0)
	.outputs(<ore:plateFluixSteel>.firstItem)
	.EUt(1920)
	.duration(50)
	.buildAndRegister();

circuit_assembler.recipeBuilder()
	.inputs(logic_processor * 2)
	.inputs(calculation_processor * 2)
	.inputs(<ore:plateFluixSteel> * 2)
	.inputs(tieredGlass[3])
	.outputs(fluix_logic_unit)
	.EUt(480)
	.duration(150)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<appliedenergistics2:interface>)
	.inputs(<appliedenergistics2:crafting_accelerator> * 2)
	.inputs(fluix_logic_unit)
	.inputs(speculative_processor)
	.inputs(<ore:plateFluixSteel> * 4)
	.inputs(<ore:frameGtTitanium>)
	.outputs(<threng:machine:3>)
	.EUt(1920)
	.duration(100)
	.buildAndRegister();

recipes.addShaped(<threng:machine:4>, [[<ore:plateFluixSteel>, <appliedenergistics2:part:280>, <ore:plateFluixSteel>],
[logic_processor, fluix_logic_unit, logic_processor], 
[<ore:plateFluixSteel>, <appliedenergistics2:material:53>, <ore:plateFluixSteel>]]);

recipes.addShaped(<threng:big_assembler> * 4, [[<ore:plateFluixSteel>, <ore:craftingTableWood>, <ore:plateFluixSteel>],
[logic_processor, <ore:frameGtStainlessSteel>, logic_processor], 
[<ore:plateFluixSteel>, <ore:craftingTableWood>, <ore:plateFluixSteel>]]);

//speculation core 1x
Aggregator.removeRecipe(<threng:material:7>);
assembler.recipeBuilder()
	.inputs(carbonic_fluix)
	.inputs(<appliedenergistics2:material:6>) //matter ball
	.inputs(<appliedenergistics2:material:45>) //sky stone dust
	.outputs(<threng:material:7>)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

//spec core 1x -> 2x
assembler.recipeBuilder()
	.inputs(<threng:material:7> * 2)
	.inputs(<ore:plateRedstone>)
	.outputs(<threng:material:8>)
	.EUt(480)
	.duration(50)
	.buildAndRegister();

//spec core 2x -> 4x
assembler.recipeBuilder()
	.inputs(<threng:material:8> * 2)
	.inputs(<ore:plateSilicon>)
	.outputs(<threng:material:9>)
	.EUt(480)
	.duration(50)
	.buildAndRegister();

//pure nether
Centrifuge.removeRecipe(<appliedenergistics2:material:11> * 2);

//pure fluix
Centrifuge.removeRecipe(<appliedenergistics2:material:12> * 2);

//pure quartz
Centrifuge.removeRecipe(<appliedenergistics2:material:10> * 2);

//sky stone
Centrifuge.removeRecipe(<appliedenergistics2:material:45>);

//ender pearl
Centrifuge.removeRecipe(<appliedenergistics2:material:46>);

//fluix crystal
Aggregator.removeRecipe(<appliedenergistics2:material:7> * 2);

macerator.recipeBuilder()
	.inputs(<ore:crystalChargedCertusQuartz>)
	.outputs(<ore:dustChargedCertus>.firstItem)
	.EUt(8)
	.duration(20)
	.buildAndRegister();
	
mixer.recipeBuilder()
	.inputs(<ore:dustRedstone>)
	.inputs(<ore:dustNetherQuartz>)
	.inputs(<ore:dustChargedCertus>)
	.outputs(<ore:dustFluix>.firstItem * 3)
	.EUt(30)
	.duration(60)
	.buildAndRegister();
	
chemical_bath.recipeBuilder()
	.inputs(<ore:dustFluix>)
	.fluidInputs(<liquid:water> * 250)
	.outputs(<ore:crystalFluix>.firstItem)
	.EUt(30)
	.duration(10)
	.buildAndRegister();

autoclave.recipeBuilder()
	.inputs(<ore:crystalFluix>)
	.fluidInputs(<liquid:water> * 500)
	.outputs(<ore:crystalPureFluix>.firstItem * 2)
	.EUt(30)
	.duration(80)
	.buildAndRegister();
	
autoclave.recipeBuilder()
	.inputs(<ore:crystalCertusQuartz>)
	.fluidInputs(<liquid:water> * 500)
	.outputs(<ore:crystalPureCertusQuartz>.firstItem * 2)
	.EUt(30)
	.duration(80)
	.buildAndRegister();
	
autoclave.recipeBuilder()
	.inputs(<ore:gemNetherQuartz>)
	.fluidInputs(<liquid:water> * 500)
	.outputs(<ore:crystalPureNetherQuartz>.firstItem * 2)
	.EUt(30)
	.duration(80)
	.buildAndRegister();

polarizer.recipeBuilder()
	.inputs(<ore:crystalCertusQuartz>)
	.outputs(<ore:crystalChargedCertusQuartz>.firstItem)
	.EUt(30)
	.duration(80)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(engineering_processor)
	.inputs(<ore:plateAluminium> * 2)
	.inputs(<ore:wireFineElectrum> * 8)
	.outputs(<appliedenergistics2:biometric_card>.withTag({}))
	.EUt(120)
	.duration(100)
	.buildAndRegister();
	
	
assembler.recipeBuilder()
	.inputs(calculation_processor)
	.inputs(<ore:plateAluminium> * 2)
	.inputs(<ore:wireFineElectrum> * 8)
	.outputs(<appliedenergistics2:memory_card>.withTag({}))
	.EUt(120)
	.duration(100)
	.buildAndRegister();
	
	
assembler.recipeBuilder()
	.inputs(<ore:crystalFluix> | <ore:crystalPureFluix>)
	.inputs(engineering_processor)
	.inputs(<appliedenergistics2:energy_cell>.withTag({}))
	.inputs(<ore:stickLongAluminium>)
	.inputs(<ore:wireFineRedAlloy> * 16)
	.outputs(<appliedenergistics2:entropy_manipulator>.withTag({}))
	.EUt(120)
	.duration(100)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs(<ore:plateStainlessSteel> * 2)
	.inputs(calculation_processor)
	.inputs(engineering_processor)
	.inputs(<ore:wireFineRedAlloy> * 16)
	.outputs(<appliedenergistics2:material:28> * 4)
	.EUt(120)
	.duration(100)
	.buildAndRegister();


assembler.recipeBuilder()
	.inputs(<ore:plateAluminium> * 2)
	.inputs(logic_processor)
	.inputs(<ore:wireFineRedAlloy> * 8)
	.outputs(<appliedenergistics2:material:28> * 4)
	.EUt(120)
	.duration(100)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs(<ore:crystalFluix> * 2 | <ore:crystalPureFluix> * 2)
	.inputs(<ore:plateLapis> * 3)
	.inputs(<ore:plateAluminium> * 2)
	.inputs(annihilation_core)
	.outputs(<appliedenergistics2:part:302>)
	.circuit(0)
	.EUt(120)
	.duration(100)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<ore:crystalFluix> * 2 | <ore:crystalPureFluix> * 2)
	.inputs(<ore:plateLapis> * 3)
	.inputs(<ore:plateAluminium> * 2)
	.inputs(formation_core)
	.outputs(<appliedenergistics2:part:321>)
	.circuit(0)
	.EUt(120)
	.duration(100)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs(<ore:crystalFluix> * 2 | <ore:crystalPureFluix> * 2)
	.inputs(<ore:plateRedstone> * 3)
	.inputs(<ore:plateAluminium> * 2)
	.inputs(annihilation_core)
	.outputs(<appliedenergistics2:part:300>)
	.circuit(1)
	.EUt(120)
	.duration(100)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<ore:crystalFluix> * 2 | <ore:crystalPureFluix> * 2)
	.inputs(<ore:plateRedstone> * 3)
	.inputs(<ore:plateAluminium> * 2)
	.inputs(formation_core)
	.outputs(<appliedenergistics2:part:320>)
	.circuit(1)
	.EUt(120)
	.duration(100)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<ore:wireFineRedAlloy> * 4)
	.inputs(me_cable)
	.inputs(<minecraft:lever>)
	.outputs(<appliedenergistics2:part:80>)
	.EUt(120)
	.duration(100)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs(<ore:crystalFluix> * 3 | <ore:crystalPureFluix> * 3)
	.inputs(<ore:plateAluminium> * 2)
	.inputs(engineering_processor)
	.outputs(<appliedenergistics2:part:460>)
	.EUt(120)
	.duration(100)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs(tieredPlates[3] * 2)
	.inputs(<ore:pearlFluix>)
	.inputs(circuits[3])
	.outputs(<appliedenergistics2:material:41>)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<ore:pearlFluix> * 2)
	.inputs(<appliedenergistics2:part:360>)
	.inputs(<appliedenergistics2:wireless_terminal>.withTag({}))
	.inputs(tieredPlates[4] * 2)
	.inputs(circuits[4])
	.outputs(<wct:wct>.withTag({InfinityEnergy: 0}))
	.EUt(1920)
	.duration(100)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs(tieredPlates[5] * 4)
	.inputs(parallel_processor * 2)
	.inputs(speculative_processor * 2)
	.inputs(circuits[5])
	.inputs(<appliedenergistics2:energy_cell>.withTag({}))
	.inputs(<appliedenergistics2:part:56> * 2)//smart
	.outputs(<appliedenergistics2:quantum_ring> * 4)
	.EUt(7680)
	.duration(100)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(tieredGlass[5] * 4)
	.inputs(<ore:pearlFluix> * 4)
	.inputs(<ore:wireFineTungsten> * 16)
	.inputs(tieredPlates[5] * 4)
	.inputs(circuits[5])
	.outputs(<appliedenergistics2:quantum_link>)
	.EUt(7680)
	.duration(200)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<ore:plateAluminium> * 2)
	.inputs(annihilation_core)
	.inputs(<ore:craftingPiston>)
	.circuit(1)
	.outputs(<appliedenergistics2:part:240>)
	.EUt(120)
	.duration(100)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs(<ore:plateAluminium> * 2)
	.inputs(annihilation_core)
	.inputs(<ore:craftingPiston>)
	.inputs(<ore:plateLapis> * 2)
	.circuit(0)
	.outputs(<appliedenergistics2:part:241>)
	.EUt(120)
	.duration(100)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs(<ore:plateAluminium> * 2)
	.inputs(formation_core)
	.inputs(<ore:craftingPiston>)
	.inputs(<ore:plateLapis> * 2)
	.circuit(0)
	.outputs(<appliedenergistics2:part:261>)
	.EUt(120)
	.duration(100)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs(<ore:plateAluminium> * 2)
	.inputs(annihilation_core)
	.inputs(<ore:craftingPiston>)
	.circuit(1)
	.outputs(<appliedenergistics2:part:260>)
	.EUt(120)
	.duration(100)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(engineering_processor * 2)
	.inputs(tieredPlates[2] * 2)
	.inputs(<appliedenergistics2:part:220>)
	.inputs(<appliedenergistics2:part:221>)
	.inputs(<appliedenergistics2:condenser>)
	.EUt(480)
	.duration(100)
	.outputs(<ae2fc:fluid_discretizer>)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(engineering_processor)
	.inputs(tieredPlates[2] * 2)
	.inputs(<ore:plateLapis> * 4)
	.inputs(<ore:craftingTableWood>)
	.EUt(480)
	.duration(100)
	.outputs(<ae2fc:fluid_pattern_encoder>)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(calculation_processor)
	.inputs(tieredPlates[2] * 2)
	.inputs(me_cable * 2)
	.inputs(<appliedenergistics2:fluid_interface>)
	.inputs(<ore:blockHopper>)
	.EUt(480)
	.duration(100)
	.outputs(<ae2fc:fluid_packet_decoder>)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(calculation_processor)
	.inputs(tieredPlates[2] * 2)
	.inputs(me_cable * 2)
	.inputs(<minecraft:bucket>)
	.inputs(<ore:blockHopper>)
	.inputs(tieredGlass[3] * 2)
	.EUt(480)
	.duration(100)
	.outputs(<ae2fc:burette>)
	.buildAndRegister();
		
//invisible jei recipes :)		
recipes.addShaped(<ae2fc:fluid_pattern_encoder>, [[<ore:plateAluminium>, <ore:plateLapis>, <ore:plateAluminium>],
[<ore:plateLapis>, <ore:workbench>, <ore:plateLapis>], 
[<ore:plateAluminium>, <appliedenergistics2:material:24>, <ore:plateAluminium>]]);

recipes.addShaped(<ae2fc:burette>, [[<ore:plateAluminium>, <ore:blockHopper>, <ore:plateAluminium>],
[<gtadditions:ga_transparent_casing:1>, <minecraft:bucket>, <gtadditions:ga_transparent_casing:1>], 
[<appliedenergistics2:part:16>, <appliedenergistics2:material:23>, <appliedenergistics2:part:16>]]);

recipes.addShaped(<ae2fc:fluid_packet_decoder>, [[<ore:plateAluminium>, <ore:blockHopper>, <ore:plateAluminium>],
[<appliedenergistics2:part:16>, <appliedenergistics2:fluid_interface>, <appliedenergistics2:part:16>], 
[<ore:plateAluminium>, <appliedenergistics2:material:23>, <ore:plateAluminium>]]);

		