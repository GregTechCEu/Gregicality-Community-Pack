import mods.gtadditions.recipe.Utils;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
//import mods.nuclearcraft.AlloyFurnace;

//----------Recipes----------

val recipes_to_remove = [
	"nuclearcraft:nuclearcraft:fission_casing:0",
	"nuclearcraft:nuclearcraft:fission_casing:0_1",
	"nuclearcraft:nuclearcraft:fission_casing:0_2",
	"nuclearcraft:nuclearcraft:fission_computer_port:0",
	"nuclearcraft:nuclearcraft:fission_power_port:0",
	"nuclearcraft:nuclearcraft:salt_fission_controller:0",
	"nuclearcraft:nuclearcraft:fission_reflector:0",
	"nuclearcraft:nuclearcraft:fission_reflector:1",
	"nuclearcraft:nuclearcraft:fission_vessel_port:0",
	"nuclearcraft:nuclearcraft:solid_fission_controller:0",
	"nuclearcraft:nuclearcraft:fission_irradiator_port:0",
	"nuclearcraft:nuclearcraft:fission_cell_port:0",
	"nuclearcraft:nuclearcraft:solid_fission_cell:0",
	"nuclearcraft:nuclearcraft:fission_shield:0",
	"nuclearcraft:nuclearcraft:fission_shield:1",
	"nuclearcraft:nuclearcraft:fission_conductor:0",
	"nuclearcraft:nuclearcraft:salt_fission_vessel:0",
	"nuclearcraft:nuclearcraft:fission_monitor:0",
	"nuclearcraft:nuclearcraft:fission_vent:0",
	"nuclearcraft:nuclearcraft:fission_shield_manager:0",
	"nuclearcraft:nuclearcraft:fission_irradiator:0",
	"nuclearcraft:nuclearcraft:machine_interface:0",

	"nuclearcraft:nuclearcraft:part:0_1",
	"nuclearcraft:nuclearcraft:part:0",
	"nuclearcraft:nuclearcraft:part:1",
	"nuclearcraft:nuclearcraft:part:2",
	"nuclearcraft:nuclearcraft:part:3",
	"nuclearcraft:nuclearcraft:part:4",
	"nuclearcraft:nuclearcraft:part:5",
	"nuclearcraft:nuclearcraft:part:6",
	"nuclearcraft:nuclearcraft:part:7",
	"nuclearcraft:nuclearcraft:part:8",
	"nuclearcraft:nuclearcraft:part:9",
	"nuclearcraft:nuclearcraft:part:10",
	"nuclearcraft:nuclearcraft:part:11",
	"nuclearcraft:nuclearcraft:part:12",
	"nuclearcraft:nuclearcraft:part:13",
	"nuclearcraft:nuclearcraft:part:14",
	"nuclearcraft:nuclearcraft:part:15",
	
	"nuclearcraft:nuclearcraft:fission_source:0",
	"nuclearcraft:nuclearcraft:fission_source:1",
	"nuclearcraft:nuclearcraft:fission_source:2",	

	"nuclearcraft:nuclearcraft:upgrade:0",
	"nuclearcraft:nuclearcraft:upgrade:1",
	"nuclearcraft:nuclearcraft:upgrade:1_1",
	"nuclearcraft:nuclearcraft:radiation_badge:0",
	"nuclearcraft:nuclearcraft:rad_x:0",
	"nuclearcraft:nuclearcraft:portable_ender_chest:0",
	"nuclearcraft:nuclearcraft:portable_ender_chest:0_1",
	"nuclearcraft:nuclearcraft:lithium_ion_cell:0",
	"nuclearcraft:nuclearcraft:geiger_counter:0",
	"nuclearcraft:nuclearcraft:glowing_mushroom:0",

	"nuclearcraft:nuclearcraft:compound:0",
	"nuclearcraft:nuclearcraft:compound:1",
	"nuclearcraft:nuclearcraft:compound:2",
	"nuclearcraft:nuclearcraft:compound:3",
	"nuclearcraft:nuclearcraft:compound:4",
	"nuclearcraft:nuclearcraft:compound:5",
	"nuclearcraft:nuclearcraft:compound:6",
	"nuclearcraft:nuclearcraft:compound:7",
	"nuclearcraft:nuclearcraft:compound:8",
	"nuclearcraft:nuclearcraft:compound:9",
	"nuclearcraft:nuclearcraft:compound:10",
	"nuclearcraft:nuclearcraft:compound:11",

	"nuclearcraft:nuclearcraft:ingot_block:0",
	"nuclearcraft:nuclearcraft:ingot_block:1",
	"nuclearcraft:nuclearcraft:ingot_block:2",
	"nuclearcraft:nuclearcraft:ingot_block:3",
	"nuclearcraft:nuclearcraft:ingot_block:4",
	"nuclearcraft:nuclearcraft:ingot_block:5",
	"nuclearcraft:nuclearcraft:ingot_block:6",
	"nuclearcraft:nuclearcraft:ingot_block:7",
	"nuclearcraft:nuclearcraft:ingot_block:8",
	"nuclearcraft:nuclearcraft:ingot_block:9",
	"nuclearcraft:nuclearcraft:ingot_block:10",
	"nuclearcraft:nuclearcraft:ingot_block:11",
	"nuclearcraft:nuclearcraft:ingot_block:12",
	"nuclearcraft:nuclearcraft:ingot_block:13",
	"nuclearcraft:nuclearcraft:ingot_block:14",
	"nuclearcraft:nuclearcraft:ingot_block:15",

	"nuclearcraft:nuclearcraft:lithium_ion_battery_basic:0",
	"nuclearcraft:nuclearcraft:lithium_ion_battery_advanced:0",
	"nuclearcraft:nuclearcraft:lithium_ion_battery_du:0",
	"nuclearcraft:nuclearcraft:lithium_ion_battery_elite:0",

	"nuclearcraft:nuclearcraft:voltaic_pile_basic:0",
	"nuclearcraft:nuclearcraft:voltaic_pile_advanced:0",
	"nuclearcraft:nuclearcraft:voltaic_pile_du:0",
	"nuclearcraft:nuclearcraft:voltaic_pile_elite:0",
	
	"nuclearcraft:nuclearcraft:helm_hazmat:0",
	"nuclearcraft:nuclearcraft:chest_hazmat:0",
	"nuclearcraft:nuclearcraft:legs_hazmat:0",
	"nuclearcraft:nuclearcraft:boots_hazmat:0",

	"nuclearcraft:nuclearcraft:rad_shielding:0",
	"nuclearcraft:nuclearcraft:rad_shielding:1",
	"nuclearcraft:nuclearcraft:rad_shielding:2",

	"nuclearcraft:nuclearcraft:decay_generator:0",
	"nuclearcraft:nuclearcraft:radiation_scrubber:0",

	"nuclearcraft:nuclearcraft:solid_fission_sink:0",
	"nuclearcraft:nuclearcraft:solid_fission_sink:1",
	"nuclearcraft:nuclearcraft:solid_fission_sink:2",
	"nuclearcraft:nuclearcraft:solid_fission_sink:3",
	"nuclearcraft:nuclearcraft:solid_fission_sink:4",
	"nuclearcraft:nuclearcraft:solid_fission_sink:5",
	"nuclearcraft:nuclearcraft:solid_fission_sink:6",
	"nuclearcraft:nuclearcraft:solid_fission_sink:7",
	"nuclearcraft:nuclearcraft:solid_fission_sink:8",
	"nuclearcraft:nuclearcraft:solid_fission_sink:9",
	"nuclearcraft:nuclearcraft:solid_fission_sink:10",
	"nuclearcraft:nuclearcraft:solid_fission_sink:11",
	"nuclearcraft:nuclearcraft:solid_fission_sink:12",
	"nuclearcraft:nuclearcraft:solid_fission_sink:13",
	"nuclearcraft:nuclearcraft:solid_fission_sink:14",
	"nuclearcraft:nuclearcraft:solid_fission_sink:15",
	
	"nuclearcraft:nuclearcraft:solid_fission_sink2:0",
	"nuclearcraft:nuclearcraft:solid_fission_sink2:1",
	"nuclearcraft:nuclearcraft:solid_fission_sink2:2",
	"nuclearcraft:nuclearcraft:solid_fission_sink2:3",
	"nuclearcraft:nuclearcraft:solid_fission_sink2:4",
	"nuclearcraft:nuclearcraft:solid_fission_sink2:5",
	"nuclearcraft:nuclearcraft:solid_fission_sink2:6",
	"nuclearcraft:nuclearcraft:solid_fission_sink2:7",
	"nuclearcraft:nuclearcraft:solid_fission_sink2:8",
	"nuclearcraft:nuclearcraft:solid_fission_sink2:9",
	"nuclearcraft:nuclearcraft:solid_fission_sink2:10",
	"nuclearcraft:nuclearcraft:solid_fission_sink2:11",
	"nuclearcraft:nuclearcraft:solid_fission_sink2:12",
	"nuclearcraft:nuclearcraft:solid_fission_sink2:13",
	"nuclearcraft:nuclearcraft:solid_fission_sink2:14",
	"nuclearcraft:nuclearcraft:solid_fission_sink2:15",

	"nuclearcraft:nuclearcraft:fission_heater_port:0",
	"nuclearcraft:nuclearcraft:fission_heater_port:1",
	"nuclearcraft:nuclearcraft:fission_heater_port:2",
	"nuclearcraft:nuclearcraft:fission_heater_port:3",
	"nuclearcraft:nuclearcraft:fission_heater_port:4",
	"nuclearcraft:nuclearcraft:fission_heater_port:5",
	"nuclearcraft:nuclearcraft:fission_heater_port:6",
	"nuclearcraft:nuclearcraft:fission_heater_port:7",
	"nuclearcraft:nuclearcraft:fission_heater_port:8",
	"nuclearcraft:nuclearcraft:fission_heater_port:9",
	"nuclearcraft:nuclearcraft:fission_heater_port:10",
	"nuclearcraft:nuclearcraft:fission_heater_port:11",
	"nuclearcraft:nuclearcraft:fission_heater_port:12",
	"nuclearcraft:nuclearcraft:fission_heater_port:13",
	"nuclearcraft:nuclearcraft:fission_heater_port:14",
	"nuclearcraft:nuclearcraft:fission_heater_port:15",

	"nuclearcraft:nuclearcraft:fission_heater_port2:0",
	"nuclearcraft:nuclearcraft:fission_heater_port2:1",
	"nuclearcraft:nuclearcraft:fission_heater_port2:2",
	"nuclearcraft:nuclearcraft:fission_heater_port2:3",
	"nuclearcraft:nuclearcraft:fission_heater_port2:4",
	"nuclearcraft:nuclearcraft:fission_heater_port2:5",
	"nuclearcraft:nuclearcraft:fission_heater_port2:6",
	"nuclearcraft:nuclearcraft:fission_heater_port2:7",
	"nuclearcraft:nuclearcraft:fission_heater_port2:8",
	"nuclearcraft:nuclearcraft:fission_heater_port2:9",
	"nuclearcraft:nuclearcraft:fission_heater_port2:10",
	"nuclearcraft:nuclearcraft:fission_heater_port2:11",
	"nuclearcraft:nuclearcraft:fission_heater_port2:12",
	"nuclearcraft:nuclearcraft:fission_heater_port2:13",
	"nuclearcraft:nuclearcraft:fission_heater_port2:14",
	"nuclearcraft:nuclearcraft:fission_heater_port2:15",

	"nuclearcraft:nuclearcraft:salt_fission_heater:0",
	"nuclearcraft:nuclearcraft:salt_fission_heater:1",
	"nuclearcraft:nuclearcraft:salt_fission_heater:2",
	"nuclearcraft:nuclearcraft:salt_fission_heater:3",
	"nuclearcraft:nuclearcraft:salt_fission_heater:4",
	"nuclearcraft:nuclearcraft:salt_fission_heater:5",
	"nuclearcraft:nuclearcraft:salt_fission_heater:6",
	"nuclearcraft:nuclearcraft:salt_fission_heater:7",
	"nuclearcraft:nuclearcraft:salt_fission_heater:8",
	"nuclearcraft:nuclearcraft:salt_fission_heater:9",
	"nuclearcraft:nuclearcraft:salt_fission_heater:10",
	"nuclearcraft:nuclearcraft:salt_fission_heater:11",
	"nuclearcraft:nuclearcraft:salt_fission_heater:12",
	"nuclearcraft:nuclearcraft:salt_fission_heater:13",
	"nuclearcraft:nuclearcraft:salt_fission_heater:14",
	"nuclearcraft:nuclearcraft:salt_fission_heater:15",

	"nuclearcraft:nuclearcraft:salt_fission_heater2:0",
	"nuclearcraft:nuclearcraft:salt_fission_heater2:1",
	"nuclearcraft:nuclearcraft:salt_fission_heater2:2",
	"nuclearcraft:nuclearcraft:salt_fission_heater2:3",
	"nuclearcraft:nuclearcraft:salt_fission_heater2:4",
	"nuclearcraft:nuclearcraft:salt_fission_heater2:5",
	"nuclearcraft:nuclearcraft:salt_fission_heater2:6",
	"nuclearcraft:nuclearcraft:salt_fission_heater2:7",
	"nuclearcraft:nuclearcraft:salt_fission_heater2:8",
	"nuclearcraft:nuclearcraft:salt_fission_heater2:9",
	"nuclearcraft:nuclearcraft:salt_fission_heater2:10",
	"nuclearcraft:nuclearcraft:salt_fission_heater2:11",
	"nuclearcraft:nuclearcraft:salt_fission_heater2:12",
	"nuclearcraft:nuclearcraft:salt_fission_heater2:13",
	"nuclearcraft:nuclearcraft:salt_fission_heater2:14",
	"nuclearcraft:nuclearcraft:salt_fission_heater2:15",

	"nuclearcraft:nuclearcraft:solar_panel_basic:0",
	"nuclearcraft:nuclearcraft:solar_panel_advanced:0",
	"nuclearcraft:nuclearcraft:solar_panel_du:0",
	"nuclearcraft:nuclearcraft:solar_panel_elite:0",

	"nuclearcraft:nuclearcraft:rtg_uranium:0",
	"nuclearcraft:nuclearcraft:rtg_plutonium:0",
	"nuclearcraft:nuclearcraft:rtg_americium:0",
	"nuclearcraft:nuclearcraft:rtg_californium:0",

	"nuclearcraft:nuclearcraft:turbine_casing:0",
	"nuclearcraft:nuclearcraft:turbine_rotor_bearing:0",
	"nuclearcraft:nuclearcraft:turbine_rotor_shaft:0",
	"nuclearcraft:nuclearcraft:turbine_outlet:0",
	"nuclearcraft:nuclearcraft:turbine_computer_port:0",
	"nuclearcraft:nuclearcraft:turbine_controller:0",
	"nuclearcraft:nuclearcraft:turbine_casing:0_1",
	"nuclearcraft:nuclearcraft:turbine_coil_connector:0",
	"nuclearcraft:nuclearcraft:turbine_inlet:0",
	"nuclearcraft:nuclearcraft:turbine_rotor_stator:0"
	
] as string[];

for item in recipes_to_remove {
	recipes.removeByRecipeName(item);
}

val boron_ingot = <nuclearcraft:ingot:5>;
val ferroboron = <nuclearcraft:alloy:6> * 2;
val tough_alloy = <nuclearcraft:alloy:1> * 2;
val hard_carbon = <nuclearcraft:alloy:2> * 2;
val thermoconducting = <nuclearcraft:alloy:11> * 2;
val extreme = <nuclearcraft:alloy:10> * 2;

val solder = <liquid:soldering_alloy> as ILiquidStack;

val materials_rotors = [
	<ore:plateSteel>*3,
	<ore:plateExtreme>*3,
	<ore:ingotSiCSiCCMC>*3
] as IIngredient[];

val rotors = [
	<nuclearcraft:turbine_rotor_blade_steel>,
	<nuclearcraft:turbine_rotor_blade_extreme>,
	<nuclearcraft:turbine_rotor_blade_sic_sic_cmc>
] as IItemStack[];

val materials_coils = [
	<ore:wireFineMagnesium>*16,
	<ore:wireFineBeryllium>*16,
	<ore:wireFineAluminium>*16,
	<ore:wireFineGold>*16,
	<ore:wireFineCopper>*16,
	<ore:wireFineSilver>*16
] as IIngredient[];

val coils = [
	<nuclearcraft:turbine_dynamo_coil:0>,
	<nuclearcraft:turbine_dynamo_coil:1>,
	<nuclearcraft:turbine_dynamo_coil:2>,
	<nuclearcraft:turbine_dynamo_coil:3>,
	<nuclearcraft:turbine_dynamo_coil:4>,
	<nuclearcraft:turbine_dynamo_coil:5>
] as IItemStack[];

for rotor in rotors{
recipes.remove(rotor);
}

for coil in coils{
recipes.remove(coil);
}

//Furnace rerecipifying
var furnace_removals = [
	boron_ingot,
	<ore:ingotManganeseDioxide>.firstItem,
	<ore:ingotManganeseOxide>.firstItem,
	<nuclearcraft:ingot:11>
] as IIngredient[];

for item in furnace_removals {
    furnace.remove(item);
}

furnace.addRecipe(<ore:ingotBoron>.firstItem, <ore:dustBoron>);



// Uncomment the following line of code to yeet the thing for good.
// Be careful, some alloys not used in early versions of GCM will not be put back, such as shibuichi.
//AlloyFurnace.removeAllRecipes();

//ASSEMBLER RECIPES--------------------

assembler.recipeBuilder()
	.inputs([<ore:plateTinAlloy>*2, <ore:plateZirconium>*2, <ore:plateReactorSteel>])
	.outputs(<nuclearcraft:part:11>)
	.fluidInputs(solder*72)
	.EUt(480)
	.duration(40)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([hulls[4], <ore:plateCupronickel>*6, <ore:blockUranium238>*2, <ore:plateAdvanced>*4])
	.outputs(<nuclearcraft:rtg_uranium>)
	.fluidInputs(solder*72)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([hulls[4], <ore:plateCupronickel>*6, <ore:ingotPlutonium238All>*2, <ore:plateAdvanced>*4])
	.outputs(<nuclearcraft:rtg_plutonium>)
	.fluidInputs(solder*72)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([hulls[4], <ore:plateCupronickel>*6, <ore:ingotAmericium241All>*2, <ore:plateAdvanced>*4])
	.outputs(<nuclearcraft:rtg_americium>)
	.fluidInputs(solder*72)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([hulls[4], <ore:plateCupronickel>*6, <ore:ingotCalifornium250All>*2, <ore:plateAdvanced>*4])
	.outputs(<nuclearcraft:rtg_californium>)
	.fluidInputs(solder*72)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([<nuclearcraft:fission_casing>, <ore:stickLongAnnealedCopper>*8])
	.outputs(<nuclearcraft:fission_conductor>)
	.fluidInputs(solder*72)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([hulls[4], pumps[4]*2, <ore:plateBasic>*4])
	.outputs(<nuclearcraft:fission_vent>)
	.fluidInputs(solder*144)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([hulls[4], <ore:plateBeryllium>*4, <ore:plateGraphite>*4, <ore:plateBasic>*4])	
	.outputs(<nuclearcraft:fission_reflector:0>)
	.fluidInputs(solder*144)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([hulls[4], <ore:plateLead>*4, <ore:plateSteel>*4, <ore:plateBasic>*4])
	.outputs(<nuclearcraft:fission_reflector:1>)
	.fluidInputs(solder*144)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([hulls[4], <ore:plateZirconium>*2, <ore:ingotZircaloy>*2, <ore:plateBasic>*2])
	.outputs(<nuclearcraft:fission_irradiator>)
	.fluidInputs(solder*72)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([hulls[4], <ore:dustRadium>*2, <ore:dustBeryllium>*2, <ore:plateBasic>*4])
	.outputs(<nuclearcraft:fission_source:0>)
	.fluidInputs(solder*72)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([hulls[4], <ore:dustPolonium>*2, <ore:dustBeryllium>*2, <ore:plateBasic>*4])
	.outputs(<nuclearcraft:fission_source:1>)
	.fluidInputs(solder*72)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([hulls[4], <ore:ingotCalifornium252All>*1, <ore:plateBasic>*4])
	.outputs(<nuclearcraft:fission_source:2>)
	.fluidInputs(solder*72)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([hulls[4], <ore:plateSilver>*2, <ore:ingotBoron>*2, <ore:plateBasic>*4])
	.outputs(<nuclearcraft:fission_shield:0>)
	.fluidInputs(solder*72)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([hulls[4], robotArms[4]*2, <ore:plateBasic>*4, <ore:plateZirconium>])
	.outputs(<nuclearcraft:fission_irradiator_port>)
	.fluidInputs(solder*144)
	.EUt(360)
	.duration(80)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([hulls[4], <ore:plateAdvanced>*4, <ore:ingotZircaloy>*2, robotArms[4]*2])
	.outputs(<nuclearcraft:fission_cell_port>*4)
	.fluidInputs(solder*144)
	.EUt(450)
	.duration(80)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([hulls[4], pumps[4]*2, <ore:plateElite>*4, <ore:ingotZircaloy>*2])
	.outputs(<nuclearcraft:fission_vessel_port>*4)
	.fluidInputs(solder*144)
	.EUt(500)
	.duration(100)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([hulls[4], robotArms[4]*2, <metaitem:display>, <ore:plateAdvanced>*4, <ore:plateHastelloyN>*4, <ore:circuitElite>*2, <ore:plateReactorSteel>*6])
	.outputs(<nuclearcraft:solid_fission_controller>)
	.fluidInputs(solder*144)
	.EUt(500)
	.duration(200)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([hulls[4], <ore:ingotZircaloy>*2, <ore:plateAdvanced>*4, <ore:plateTough>*2, <ore:frameGtZirconiumCarbide>*4])
	.outputs(<nuclearcraft:solid_fission_cell>*4)
	.fluidInputs(solder*144)
	.EUt(440)
	.duration(60)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([<ore:frameGtStainlessSteel>, <ore:plateAdvanced>*4, <ore:pipeTinyCopper>*16, <ore:ingotThermoconducting>*6])
	.outputs(<nuclearcraft:part:14>*8)
	.fluidInputs(solder*72)
	.EUt(400)
	.duration(40)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([hulls[4], pumps[4]*2, <ore:plateElite>*4, <ore:plateReactorSteel>*4])
	.outputs(<nuclearcraft:fission_heater_port:0>)
	.fluidInputs(solder*72)
	.EUt(400)
	.duration(40)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([hulls[5], <ore:plateElite>*4, <ore:plateHastelloyN>*4, <metaitem:display>, robotArms[5]*2, <ore:plateReactorSteel>*6, <ore:circuitMaster>*2])
	.outputs(<nuclearcraft:salt_fission_controller>*1)
	.fluidInputs(solder*144)
	.EUt(1000)
	.duration(200)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([hulls[5], pumps[5], <ore:frameGtZirconiumCarbide>*4, <ore:plateElite>*4, <ore:ingotZircaloy>*2, <ore:ingotZirconiumMolybdenum>*2])
	.outputs(<nuclearcraft:salt_fission_vessel>*4)
	.fluidInputs(solder*72)
	.EUt(600)
	.duration(100)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([<ore:frameGtStainlessSteel>, <ore:pipeTinyCopper>*32, <ore:ingotThermoconducting>*6, <ore:plateElite>*4])
	.outputs(<nuclearcraft:salt_fission_heater:0>*8)
	.fluidInputs(solder*144)
	.EUt(600)
	.duration(100)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([hulls[4], <ore:plateTough>*4, <ore:plateHslasteel>*4 , <ore:circuitElite>*1])
	.outputs(<nuclearcraft:turbine_controller>)
	.fluidInputs(solder*144)
	.EUt(500)
	.duration(100)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([<ore:frameGtStainlessSteel>*1, <ore:plateHslasteel>*8])
	.outputs(<nuclearcraft:turbine_casing>*8)
	.fluidInputs(solder*72)
	.EUt(440)
	.duration(80)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([<ore:stickLongTitanium>*8, <ore:plateHslasteel>*6, <ore:plateTough>*3])
	.outputs(<nuclearcraft:turbine_rotor_shaft>*4)
	.fluidInputs(solder*72)
	.EUt(400)
	.duration(80)
	.buildAndRegister();

for i in 0 to rotors.length{
	assembler.recipeBuilder()
		.inputs([<ore:plateHslasteel>*3, materials_rotors[i]])
		.outputs(rotors[i])
		.fluidInputs(solder*72)
		.EUt(400)
		.duration(80)
		.buildAndRegister();
}

for i in 0 to coils.length{
	assembler.recipeBuilder()
		.inputs([<ore:plateHslasteel>*3, materials_coils[i], <ore:frameGtTitanium>])
		.outputs(coils[i])
		.fluidInputs(solder*72)
		.EUt(400)
		.duration(80)
		.buildAndRegister();
}

assembler.recipeBuilder()
	.inputs([<ore:plateHslasteel>*6])
	.outputs(<nuclearcraft:turbine_rotor_stator>)
	.fluidInputs(solder*72)
	.EUt(400)
	.duration(80)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([<ore:plateHslasteel>*4, <ore:roundTitanium>*16, <ore:frameGtTitanium>])
	.outputs(<nuclearcraft:turbine_rotor_bearing>)
	.fluidInputs(solder*72)
	.EUt(400)
	.duration(80)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([<ore:plateAnnealedCopper>*2, <ore:plateHslasteel>*2, <ore:frameGtTitanium>])
	.outputs(<nuclearcraft:turbine_coil_connector>)
	.fluidInputs(solder*72)
	.EUt(400)
	.duration(80)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([<ore:plateHslasteel>*4, pumps[4]*2, <ore:frameGtTitanium>])
	.outputs(<nuclearcraft:turbine_inlet>)
	.fluidInputs(solder*72)
	.circuit(1)
	.EUt(400)
	.duration(80)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([<ore:plateHslasteel>*4, pumps[4]*2, <ore:frameGtTitanium>])
	.outputs(<nuclearcraft:turbine_outlet>)
	.fluidInputs(solder*72)
	.circuit(2)
	.EUt(400)
	.duration(80)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([hulls[4], <ore:plateElite>*4, <ore:plateExtreme>*1])
	.outputs(<nuclearcraft:radiation_scrubber>)
	.fluidInputs(solder*72)
	.EUt(300)
	.duration(80)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([<ore:ingotFerroboron>*4, <ore:circuitAdvanced>*1, <ore:platePlastic>*1, <ore:wireFineCopper>*4, <ore:wireFineTungsten>*1, <ore:plateSteel>*1])
	.outputs(<nuclearcraft:geiger_counter>)
	.fluidInputs(solder*72)
	.EUt(300)
	.duration(120)
	.buildAndRegister();

//BLAST FURNACE RECIPES--------------------

blast_furnace.recipeBuilder()
	.inputs(<ore:ingotSteel>)
	.inputs(<ore:dustBoron>)
	.outputs(<ore:ingotFerroboron>.firstItem * 2)
	.property("temperature", 3500)
	.EUt(480)
	.duration(704)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<ore:ingotFerroboron> * 2)
	.inputs(<ore:dustLithium>)
	.outputs(<ore:ingotTough>.firstItem * 3)
	.property("temperature", 3900)
	.EUt(480)
	.duration(1212)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<ore:dustGraphite> * 2)
	.inputs(<ore:dustDiamond>)
	.outputs(<ore:ingotHardCarbon>.firstItem * 3)
	.property("temperature", 3700)
	.EUt(480)
	.duration(809)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<ore:ingotGraphite> * 2)
	.inputs(<ore:dustDiamond>)
	.outputs(<ore:ingotHardCarbon>.firstItem * 3)
	.property("temperature", 3700)
	.EUt(480)
	.duration(809)
	.buildAndRegister();


// This is fine to be 1 each instead of 3 since it is reducible
// i.e. (3 + 3 -> 6) is the same as (1 + 1 -> 2)
blast_furnace.recipeBuilder()
	.inputs(<ore:ingotHardCarbon>)
	.inputs(<ore:ingotTough>)
	.outputs(<ore:ingotExtreme>.firstItem * 2)
	.property("temperature", 3900)
	.EUt(1750)
	.duration(500)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<ore:ingotExtreme>)
	.inputs(<ore:gemBoronArsenide> * 2)
	.outputs(<ore:ingotThermoconducting>.firstItem * 3)
	.property("temperature", 3500)
	.EUt(4000)
	.duration(2097)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<ore:ingotMagnesium>)
	.inputs(<ore:dustBoron> * 2)
	.outputs(<ore:ingotMagnesiumDiboride>.firstItem * 3)
	.property("temperature", 3500)
	.EUt(480)
	.duration(800)
	.buildAndRegister();

chemical_reactor.recipeBuilder()
	.inputs(<ore:dustManganese>)
	.fluidInputs([<fluid:oxygen> * 2000])
	.outputs(<ore:dustManganeseDioxide>.firstItem * 3)

blast_furnace.recipeBuilder()
	.inputs(<ore:dustManganeseDioxide> * 3)
	.inputs(<ore:dustLithium>)
	.outputs(<ore:ingotLithiumManganeseDioxide>.firstItem * 4)
	.property("temperature", 3500)
	.EUt(480)
	.duration(800)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<ore:ingotZirconium> * 7)
	.inputs(<ore:ingotTin>)
	.outputs(<ore:ingotZircaloy>.firstItem * 8)
	.property("temperature", 3500)
	.EUt(480)
	.duration(800)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<ore:ingotSilicon>)
	.inputs(<ore:dustCarbon>)
	.outputs(<ore:ingotSiliconCarbide>.firstItem * 2)
	.property("temperature", 3500)
	.EUt(480)
	.duration(800)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<ore:dustCarbon>)
	.inputs(<ore:dustManganese>)
	.outputs(<ore:dustCarbonManganese>.firstItem * 2)
	.EUt(30)
	.duration(250)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<ore:ingotSteel> * 14)
	.inputs(<ore:dustCarbonManganese> * 2)
	.outputs(<ore:ingotHSLASteel>.firstItem * 16)
	.property("temperature", 4400)
	.EUt(480)
	.duration(800)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<ore:ingotMolybdenum> * 15)
	.inputs(<ore:ingotZirconium>)
	.outputs(<ore:ingotZirconiumMolybdenum>.firstItem * 16)
	.property("temperature", 4400)
	.EUt(480)
	.duration(800)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<ore:ingotNiobium> * 3)
	.inputs(<ore:ingotTin>)
	.outputs(<ore:ingotNiobiumTin>.firstItem * 4)
	.property("temperature", 5400)
	.EUt(1750)
	.duration(900)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<ore:ingotNichrome> * 2)
	.inputs(<ore:ingotNiobiumTitanium>)
	.outputs(<ore:ingotSuperAlloy>.firstItem * 3)
	.property("temperature", 5400)
	.EUt(9750)
	.duration(1200)
	.buildAndRegister();

//CANNER RECIPES--------------------

val heater_ports_solid = [
	<nuclearcraft:fission_heater_port:1>,
	<nuclearcraft:fission_heater_port:2>,
	<nuclearcraft:fission_heater_port:3>,
	<nuclearcraft:fission_heater_port:4>,
	<nuclearcraft:fission_heater_port:5>,
	<nuclearcraft:fission_heater_port:6>,
	<nuclearcraft:fission_heater_port:7>,
	<nuclearcraft:fission_heater_port:8>,
	<nuclearcraft:fission_heater_port:9>,
	<nuclearcraft:fission_heater_port:10>,
	<nuclearcraft:fission_heater_port:11>,
	<nuclearcraft:fission_heater_port:12>,
	<nuclearcraft:fission_heater_port:13>,
	<nuclearcraft:fission_heater_port:14>,
	<nuclearcraft:fission_heater_port:15>,
	<nuclearcraft:fission_heater_port2:0>,
	<nuclearcraft:fission_heater_port2:1>,
	<nuclearcraft:fission_heater_port2:2>,
	<nuclearcraft:fission_heater_port2:3>,
	<nuclearcraft:fission_heater_port2:4>,
	<nuclearcraft:fission_heater_port2:5>,
	<nuclearcraft:fission_heater_port2:6>,
	<nuclearcraft:fission_heater_port2:7>,
	<nuclearcraft:fission_heater_port2:8>,
	<nuclearcraft:fission_heater_port2:9>,
	<nuclearcraft:fission_heater_port2:10>,
	<nuclearcraft:fission_heater_port2:11>,
	<nuclearcraft:fission_heater_port2:14>
] as IItemStack[];

val heat_sinks_solid = [
	<nuclearcraft:solid_fission_sink:1>,
	<nuclearcraft:solid_fission_sink:2>,
	<nuclearcraft:solid_fission_sink:3>,
	<nuclearcraft:solid_fission_sink:4>,
	<nuclearcraft:solid_fission_sink:5>,
	<nuclearcraft:solid_fission_sink:6>,
	<nuclearcraft:solid_fission_sink:7>,
	<nuclearcraft:solid_fission_sink:8>,
	<nuclearcraft:solid_fission_sink:9>,
	<nuclearcraft:solid_fission_sink:10>,
	<nuclearcraft:solid_fission_sink:11>,
	<nuclearcraft:solid_fission_sink:12>,
	<nuclearcraft:solid_fission_sink:13>,
	<nuclearcraft:solid_fission_sink:14>,
	<nuclearcraft:solid_fission_sink:15>,
	<nuclearcraft:solid_fission_sink2:0>,
	<nuclearcraft:solid_fission_sink2:1>,
	<nuclearcraft:solid_fission_sink2:2>,
	<nuclearcraft:solid_fission_sink2:3>,
	<nuclearcraft:solid_fission_sink2:4>,
	<nuclearcraft:solid_fission_sink2:5>,
	<nuclearcraft:solid_fission_sink2:6>,
	<nuclearcraft:solid_fission_sink2:7>,
	<nuclearcraft:solid_fission_sink2:8>,
	<nuclearcraft:solid_fission_sink2:9>,
	<nuclearcraft:solid_fission_sink2:10>,
	<nuclearcraft:solid_fission_sink2:11>,
	<nuclearcraft:solid_fission_sink2:14>
] as IItemStack[];

val coolant_heaters_solid = [
	<nuclearcraft:salt_fission_heater:1>,
	<nuclearcraft:salt_fission_heater:2>,
	<nuclearcraft:salt_fission_heater:3>,
	<nuclearcraft:salt_fission_heater:4>,
	<nuclearcraft:salt_fission_heater:5>,
	<nuclearcraft:salt_fission_heater:6>,
	<nuclearcraft:salt_fission_heater:7>,
	<nuclearcraft:salt_fission_heater:8>,
	<nuclearcraft:salt_fission_heater:9>,
	<nuclearcraft:salt_fission_heater:10>,
	<nuclearcraft:salt_fission_heater:11>,
	<nuclearcraft:salt_fission_heater:12>,
	<nuclearcraft:salt_fission_heater:13>,
	<nuclearcraft:salt_fission_heater:14>,
	<nuclearcraft:salt_fission_heater:15>,
	<nuclearcraft:salt_fission_heater2:0>,
	<nuclearcraft:salt_fission_heater2:1>,
	<nuclearcraft:salt_fission_heater2:2>,
	<nuclearcraft:salt_fission_heater2:3>,
	<nuclearcraft:salt_fission_heater2:4>,
	<nuclearcraft:salt_fission_heater2:5>,
	<nuclearcraft:salt_fission_heater2:6>,
	<nuclearcraft:salt_fission_heater2:7>,
	<nuclearcraft:salt_fission_heater2:8>,
	<nuclearcraft:salt_fission_heater2:9>,
	<nuclearcraft:salt_fission_heater2:10>,
	<nuclearcraft:salt_fission_heater2:11>,
	<nuclearcraft:salt_fission_heater2:14>
] as IItemStack[];

val heater_ports_liquid = [
	<nuclearcraft:fission_heater_port2:12>,
	<nuclearcraft:fission_heater_port2:13>,
	<nuclearcraft:fission_heater_port2:15>
] as IItemStack[];

val heat_sinks_liquid = [
	<nuclearcraft:solid_fission_sink2:12>,
	<nuclearcraft:solid_fission_sink2:13>,
	<nuclearcraft:solid_fission_sink2:15>
] as IItemStack[];

val coolant_heaters_liquid = [
	<nuclearcraft:salt_fission_heater2:12>,
	<nuclearcraft:salt_fission_heater2:13>,
	<nuclearcraft:salt_fission_heater2:15>
] as IItemStack[];

val material_solid = [
	<ore:plateIron>,
	<ore:plateRedstone>,
	<ore:gemQuartz>,
	<ore:obsidian>,
	<ore:ingotBrickNether>,
	<ore:plateGlowstone>,
	<ore:plateLapis>,
	<ore:plateGold>,
	<ore:gemPrismarine>,
	<ore:slimeball>,
	<ore:dustEndstone>,
	<minecraft:purpur_block>,
	<ore:plateDiamond>,
	<ore:plateEmerald>,
	<ore:plateCopper>,
	<ore:plateTin>,
	<ore:plateLead>,
	<ore:ingotBoron>,
	<ore:plateLithium>,
	<ore:ingotMagnesium>,
	<ore:plateManganese>,
	<ore:plateAluminium>,
	<ore:plateSilver>,
	<ore:gemFluorite>,
	<ore:gemVilliaumite>,
	<ore:gemCarobbiite>,
	<ore:dustArsenic>,
	<ore:plateEnderium>
] as IIngredient[];

val material_liquid = [
	<liquid:liquid_nitrogen>,
	<liquid:liquid_helium>,
	<liquid:cryotheum>
] as ILiquidStack[];

for i in 0 to material_solid.length{
	canner.recipeBuilder()
		.inputs([<nuclearcraft:fission_heater_port:0>, material_solid[i]*8])
		.outputs(heater_ports_solid[i])
		.EUt(300)
		.duration(40)
		.buildAndRegister();

	canner.recipeBuilder()
		.inputs([<ore:emptyHeatSink>*1, material_solid[i]*8])
		.outputs(heat_sinks_solid[i])
		.EUt(300)
		.duration(40)
		.buildAndRegister();
	
	canner.recipeBuilder()
		.inputs([<nuclearcraft:salt_fission_heater>, material_solid[i]*8])
		.outputs(coolant_heaters_solid[i])
		.EUt(300)
		.duration(40)
		.buildAndRegister();
}

//FLUID CANNER RECIPES--------------------

fluid_canner.recipeBuilder()
	.inputs([<nuclearcraft:part:11>])
	.outputs(<nuclearcraft:heavy_water_moderator>)
	.fluidInputs(<liquid:heavy_water>*1296)
	.EUt(30)
	.duration(50)
.buildAndRegister();

fluid_canner.recipeBuilder()
	.inputs([<ore:emptyHeatSink>*1])
	.outputs(<nuclearcraft:solid_fission_sink:0>)
	.fluidInputs(<liquid:water>*1000)
	.EUt(300)
	.duration(40)
	.buildAndRegister();

fluid_canner.recipeBuilder()
	.inputs([<ore:foilPlastic>*2])
	.outputs(<nuclearcraft:radaway>)
	.fluidInputs(<liquid:radaway>*100)
	.EUt(300)
	.duration(80)
	.buildAndRegister();

fluid_canner.recipeBuilder()
	.inputs([<ore:foilPlastic>*2])
	.outputs(<nuclearcraft:radaway_slow>)
	.fluidInputs(<liquid:radaway_slow>*100)
	.EUt(300)
	.duration(80)
	.buildAndRegister();

for i in 0 to material_liquid.length{
	fluid_canner.recipeBuilder()
		.inputs(<nuclearcraft:fission_heater_port:0>*1)
		.fluidInputs(material_liquid[i]*1000)
		.outputs(heater_ports_liquid[i])
		.EUt(300)
		.duration(40)
		.buildAndRegister();

	fluid_canner.recipeBuilder()
		.inputs(<ore:emptyHeatSink>*1)
		.fluidInputs(material_liquid[i]*1000)
		.outputs(heat_sinks_liquid[i])
		.EUt(300)
		.duration(40)
		.buildAndRegister();

	fluid_canner.recipeBuilder()
		.inputs(<nuclearcraft:salt_fission_heater>*1)
		.fluidInputs(material_liquid[i]*1000)
		.outputs(coolant_heaters_liquid[i])
		.EUt(300)
		.duration(40)
		.buildAndRegister();
}

//FLUID EXTRACTOR RECIPES--------------------

fluid_extractor.recipeBuilder()
	.inputs(<nuclearcraft:ground_cocoa_nibs>*1)
	.fluidOutputs(<liquid:chocolate_liquor>*144)
	.EUt(16)
	.duration(40)
	.buildAndRegister();

fluid_extractor.recipeBuilder()
	.inputs(<ore:ingotCocoaButter>*1)
	.fluidOutputs(<liquid:cocoa_butter>*144)
	.EUt(16)
	.duration(40)
	.buildAndRegister();

//FORMING PRESS RECIPES--------------------
	
Utils.removeRecipeByOutput(forming_press, [<gtadditions:ga_multiblock_casing:13>], [], false);
forming_press.recipeBuilder()
	.inputs([<ore:plateDenseLead>*18, <ore:plateDenseReactorSteel>*4, <ore:plateDenseStainlessSteel>*2])
	.outputs(<nuclearcraft:fission_casing>*4)
	.EUt(250)
	.duration(80)
	.buildAndRegister();

forming_press.recipeBuilder()
	.inputs([<ore:plateLead>*1, <ore:plateGraphite>*1])
	.outputs(<nuclearcraft:part:0>*1)
	.EUt(250)
	.duration(80)
	.buildAndRegister();

forming_press.recipeBuilder()
	.inputs([<ore:plateBasic>*1, <ore:plateTough>*2, <ore:plateRedstone>*2])
	.outputs(<nuclearcraft:part:1>*1)
	.EUt(250)
	.duration(80)
	.buildAndRegister();

forming_press.recipeBuilder()
	.inputs([<ore:plateAdvanced>*1, <ore:plateUranium238>*2])
	.outputs(<nuclearcraft:part:2>*1)
	.EUt(250)
	.duration(80)
	.buildAndRegister();

forming_press.recipeBuilder()
	.inputs([<ore:plateDu>*1, <ore:ingotBoron>*4])
	.outputs(<nuclearcraft:part:3>*1)
	.EUt(250)
	.duration(80)
	.buildAndRegister();

forming_press.recipeBuilder()
	.inputs([<ore:plateIron>*3, <ore:plateGraphite>*3, <ore:plateLead>*3])
	.outputs(<nuclearcraft:rad_shielding:0>)
	.EUt(300)
	.duration(80)
	.buildAndRegister();

forming_press.recipeBuilder()
	.inputs([<ore:platePlastic>*3, <nuclearcraft:rad_shielding:0>*2, <ore:ingotFerroboron>*1, <ore:plateBasic>*3])
	.outputs(<nuclearcraft:rad_shielding:1>)
	.EUt(300)
	.duration(80)
	.buildAndRegister();

forming_press.recipeBuilder()
	.inputs([<ore:plateBeryllium>*3, <nuclearcraft:rad_shielding:1>*2, <ore:ingotHardCarbon>*1, <ore:plateDU>*2])
	.outputs(<nuclearcraft:rad_shielding:2>)
	.EUt(300)
	.duration(80)
	.buildAndRegister();


