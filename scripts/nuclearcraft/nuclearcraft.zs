import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

val name_removals = [
    "nuclearcraft:nuclearcraft:rtg_uranium:0",
	"nuclearcraft:nuclearcraft:rtg_plutonium:0",
	"nuclearcraft:nuclearcraft:rtg_americium:0",
	"nuclearcraft:nuclearcraft:rtg_californium:0",
    "nuclearcraft:nuclearcraft:bin:0",
    "nuclearcraft:nuclearcraft:fission_casing:0",
	"nuclearcraft:nuclearcraft:fission_casing:0_1",
	"nuclearcraft:nuclearcraft:fission_casing:0_2",
    "nuclearcraft:nuclearcraft:fission_reflector:0",
	"nuclearcraft:nuclearcraft:fission_reflector:1",
    "nuclearcraft:nuclearcraft:fission_vent:0",
	"nuclearcraft:nuclearcraft:fission_irradiator:0",
	"nuclearcraft:nuclearcraft:fission_source:0",
	"nuclearcraft:nuclearcraft:fission_source:1",
	"nuclearcraft:nuclearcraft:fission_source:2",
	"nuclearcraft:nuclearcraft:fission_shield:0",
	"nuclearcraft:nuclearcraft:fission_shield:1",
	"nuclearcraft:nuclearcraft:fission_irradiator_port:0",
	"nuclearcraft:nuclearcraft:fission_cell_port:0",
	"nuclearcraft:nuclearcraft:fission_vessel_port:0",
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
	"nuclearcraft:nuclearcraft:solid_fission_controller:0",
	"nuclearcraft:nuclearcraft:salt_fission_controller:0",
	"nuclearcraft:nuclearcraft:turbine_controller:0",
	"nuclearcraft:nuclearcraft:turbine_casing:0",
	"nuclearcraft:nuclearcraft:turbine_rotor_bearing:0",
	"nuclearcraft:nuclearcraft:turbine_rotor_shaft:0",
	"nuclearcraft:nuclearcraft:turbine_outlet:0",
	"nuclearcraft:nuclearcraft:turbine_computer_port:0",
	"nuclearcraft:nuclearcraft:turbine_casing:0_1",
	"nuclearcraft:nuclearcraft:turbine_coil_connector:0",
	"nuclearcraft:nuclearcraft:turbine_inlet:0",
	"nuclearcraft:nuclearcraft:turbine_rotor_stator:0",
    "nuclearcraft:nuclearcraft:turbine_rotor_blade_steel:0",
    "nuclearcraft:nuclearcraft:turbine_rotor_blade_extreme:0",
    "nuclearcraft:nuclearcraft:turbine_rotor_blade_sic_sic_cmc:0",
    "nuclearcraft:nuclearcraft:turbine_dynamo_coil:0",
    "nuclearcraft:nuclearcraft:turbine_dynamo_coil:1",
    "nuclearcraft:nuclearcraft:turbine_dynamo_coil:2",
    "nuclearcraft:nuclearcraft:turbine_dynamo_coil:3",
    "nuclearcraft:nuclearcraft:turbine_dynamo_coil:4",
    "nuclearcraft:nuclearcraft:turbine_dynamo_coil:5",
	"nuclearcraft:nuclearcraft:radiation_scrubber:0",
	"nuclearcraft:nuclearcraft:geiger_counter:0",
    "nuclearcraft:nuclearcraft:geiger_block:0",
	"nuclearcraft:nuclearcraft:fission_computer_port:0",
	"nuclearcraft:nuclearcraft:fission_power_port:0",
	"nuclearcraft:nuclearcraft:solid_fission_cell:0",
	"nuclearcraft:nuclearcraft:fission_conductor:0",
	"nuclearcraft:nuclearcraft:salt_fission_vessel:0",
	"nuclearcraft:nuclearcraft:fission_monitor:0",
	"nuclearcraft:nuclearcraft:fission_shield_manager:0",
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
    "nuclearcraft:nuclearcraft:upgrade:0",
	"nuclearcraft:nuclearcraft:upgrade:1",
	"nuclearcraft:nuclearcraft:upgrade:1_1",
	"nuclearcraft:nuclearcraft:radiation_badge:0",
	"nuclearcraft:nuclearcraft:rad_x:0",
	"nuclearcraft:nuclearcraft:portable_ender_chest:0",
	"nuclearcraft:nuclearcraft:portable_ender_chest:0_1",
	"nuclearcraft:nuclearcraft:lithium_ion_cell:0",
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
	"nuclearcraft:nuclearcraft:helm_hazmat:0",
	"nuclearcraft:nuclearcraft:chest_hazmat:0",
	"nuclearcraft:nuclearcraft:legs_hazmat:0",
	"nuclearcraft:nuclearcraft:boots_hazmat:0",
	"nuclearcraft:nuclearcraft:rad_shielding:0",
	"nuclearcraft:nuclearcraft:rad_shielding:1",
	"nuclearcraft:nuclearcraft:rad_shielding:2",
	"nuclearcraft:nuclearcraft:multitool:0",
	"nuclearcraft:nuclearcraft:water_source:0",
	"nuclearcraft:nuclearcraft:water_source_compact:0",
	"nuclearcraft:nuclearcraft:water_source_dense:0"
] as string[];

for item in name_removals {
    recipes.removeByRecipeName(item);
}

val hidden = [
    <nuclearcraft:ingot_block:14>,
    <nuclearcraft:ingot_block:15>,
    <nuclearcraft:fertile_isotope:2>,
    <ore:gemRhodochrosite>.firstItem,
    <nuclearcraft:gem_dust:1>,
    <ore:dustManganeseOxide>.firstItem,
    <ore:ingotShibuichi>.firstItem,
    <ore:ingotTinSilver>.firstItem,
    <ore:ingotLeadPlatinum>.firstItem,
    <ore:ingotLithiumManganeseDioxide>.firstItem,
    <nuclearcraft:compound>,
    <ore:dustCrystalBinder>.firstItem,
    <nuclearcraft:compound:6>,
    <ore:dustDimensional>.firstItem,
    <ore:dustCarbonManganese>.firstItem,
    <ore:dustAlugentum>.firstItem,
    <ore:ingotSiliconCarbide>.firstItem,
    <ore:solenoidCopper>.firstItem,
    <ore:solenoidMagnesiumDiboride>.firstItem,
    <ore:bioplastic>.firstItem,
    <ore:servo>.firstItem,
    <ore:motor>.firstItem,
    <ore:actuator>.firstItem,
    <ore:ingotPyrolyticCarbon>.firstItem,
    <nuclearcraft:upgrade>,
    <nuclearcraft:upgrade:1>,
    <nuclearcraft:lithium_ion_cell>,
    <nuclearcraft:portable_ender_chest>,
    <nuclearcraft:radiation_badge>
] as IItemStack[];

for item in hidden {
    mods.jei.JEI.hide(item);
}   

val disables = [
    <nuclearcraft:machine_interface>,
    <nuclearcraft:solar_panel_basic>,
    <nuclearcraft:solar_panel_advanced>,
    <nuclearcraft:solar_panel_du>,
    <nuclearcraft:solar_panel_elite>,
    <nuclearcraft:decay_generator>,
    <ore:ingotManganeseOxide>.firstItem,
    <ore:ingotManganeseDioxide>.firstItem,
	<ore:blockUranium238>.firstItem
] as IItemStack[];

for item in disables {
    mods.jei.JEI.removeAndHide(item);
}

var furnace_removals = [
	<ore:ingotBoron>.firstItem,
    <ore:dustManganeseOxide>.firstItem,
    <ore:ingotManganeseOxide>.firstItem,
    <ore:ingotManganeseDioxide>.firstItem,
	<qmd:ingot:2>
] as IIngredient[];

for item in furnace_removals {
    furnace.remove(item);
}

furnace.addRecipe(<ore:ingotBoron>.firstItem, <ore:dustBoron>);

val solder = soldering_alloys[1] * 72;







// Materials
// Ferroboron
mixer.recipeBuilder().duration(400).EUt(8)
    .inputs(<ore:dustSteel>)
    .inputs(<ore:dustBoron>)
    .outputs(<ore:dustFerroboron>.firstItem * 2)
    .buildAndRegister();

blast_furnace.recipeBuilder().duration(861).EUt(120)
    .inputs(<ore:dustFerroboron>)
    .outputs(<ore:ingotHotFerroboron>.firstItem)
    .property("temperature", 2800)
    .buildAndRegister();

vacuum_freezer.recipeBuilder().duration(126).EUt(120)
    .inputs(<ore:ingotHotFerroboron>)
    .outputs(<ore:ingotFerroboron>.firstItem)
    .buildAndRegister();

macerator.recipeBuilder().duration(30).EUt(32)
    .inputs(<ore:ingotFerroboron>)
    .outputs(<ore:dustFerroboron>.firstItem)
    .buildAndRegister();

// Tough Alloy
mixer.recipeBuilder().duration(400).EUt(8)
    .inputs(<ore:dustRegularLithium>)
    .inputs(<ore:dustFerroboron> * 2)
    .outputs(<ore:dustTough>.firstItem * 3)
    .buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<ore:dustTough>)
	.outputs(<ore:ingotHotTough>.firstItem)
	.property("temperature", 3900)
	.EUt(120)
	.duration(1212)
	.buildAndRegister();

vacuum_freezer.recipeBuilder().duration(282).EUt(120)
    .inputs(<ore:ingotHotTough>)
    .outputs(<ore:ingotTough>.firstItem)
    .buildAndRegister();

macerator.recipeBuilder().duration(30).EUt(32)
    .inputs(<ore:ingotTough>)
    .outputs(<ore:dustTough>.firstItem)
    .buildAndRegister();

// Hard Carbon
implosion_compressor.recipeBuilder().EUt(30).duration(20)
    .inputs(<ore:dustRegularGraphite> * 4)
    .inputs(<ore:dustTinyDiamond> * 9)
    .property("explosives", 4)
    .outputs(<ore:ingotHardCarbon>.firstItem * 4)
    .buildAndRegister();

implosion_compressor.recipeBuilder().EUt(30).duration(20)
    .inputs(<ore:dustRegularGraphite> * 4)
    .inputs(<ore:dustTinyDiamond> * 9)
    .property("explosives", <metaitem:dynamite>)
    .outputs(<ore:ingotHardCarbon>.firstItem * 4)
    .buildAndRegister();


// Magnesium Diboride
alloy_smelter.recipeBuilder()
	.inputs(<ore:ingotMagnesium>)
	.inputs(<ore:dustBoron> * 2)
	.outputs(<ore:ingotMagnesiumDiboride>.firstItem * 3)
	.EUt(480)
	.duration(800)
	.buildAndRegister();

alloy_smelter.recipeBuilder()
	.inputs(<ore:dustMagnesium>)
	.inputs(<ore:dustBoron> * 2)
	.outputs(<ore:ingotMagnesiumDiboride>.firstItem * 3)
	.EUt(480)
	.duration(800)
	.buildAndRegister();

alloy_smelter.recipeBuilder()
	.inputs(<ore:dustMagnesium>)
	.inputs(<ore:ingotBoron> * 2)
	.outputs(<ore:ingotMagnesiumDiboride>.firstItem * 3)
	.EUt(480)
	.duration(800)
	.buildAndRegister();

alloy_smelter.recipeBuilder()
	.inputs(<ore:ingotMagnesium>)
	.inputs(<ore:ingotBoron> * 2)
	.outputs(<ore:ingotMagnesiumDiboride>.firstItem * 3)
	.EUt(480)
	.duration(800)
	.buildAndRegister();

// Extreme Alloy
mixer.recipeBuilder().duration(450).EUt(8)
    .inputs(<ore:dustFerroboron>)
    .inputs(<ore:dustTough> * 2)
    .inputs(<ore:dustNiobiumTitanium>)
    .inputs(<ore:dustRedSteel> * 2)
    .outputs(<ore:dustEnergetic>.firstItem * 6)
    .buildAndRegister();

implosion_compressor.recipeBuilder().duration(20).EUt(30)
    .inputs(<ore:dustEnergetic>)
    .inputs(<ore:ingotHardCarbon>)
    .property("explosives", 4)
    .outputs(<ore:dustExtreme>.firstItem * 2)
    .buildAndRegister();

implosion_compressor.recipeBuilder().duration(20).EUt(30)
    .inputs(<ore:dustEnergetic>)
    .inputs(<ore:ingotHardCarbon>)
    .property("explosives", <metaitem:dynamite>)
    .outputs(<ore:dustExtreme>.firstItem * 2)
    .buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<ore:dustExtreme>)
	.outputs(<ore:ingotHotExtreme>.firstItem)
	.property("temperature", 4200)
	.EUt(120)
	.duration(1750)
	.buildAndRegister();

vacuum_freezer.recipeBuilder().duration(282).EUt(120)
    .inputs(<ore:ingotHotExtreme>)
    .outputs(<ore:ingotExtreme>.firstItem)
    .buildAndRegister();

macerator.recipeBuilder().duration(30).EUt(32)
    .inputs(<ore:ingotExtreme>)
    .outputs(<ore:dustExtreme>.firstItem)
    .buildAndRegister();

// Thermoconducting Alloy
alloy_smelter.recipeBuilder()
	.inputs(<ore:ingotExtreme>)
	.inputs(<ore:gemBoronArsenide> * 2)
	.outputs(<ore:ingotThermoconducting>.firstItem * 3)
	.EUt(4000)
	.duration(597)
	.buildAndRegister();

// Zircalloy
alloy_smelter.recipeBuilder()
	.inputs(<ore:ingotZirconium> * 7)
	.inputs(<ore:ingotTinAlloy>)
	.outputs(<ore:ingotZircaloy>.firstItem * 8)
	.EUt(480)
	.duration(800)
	.buildAndRegister();

alloy_smelter.recipeBuilder()
	.inputs(<ore:dustZirconium> * 7)
	.inputs(<ore:ingotTinAlloy>)
	.outputs(<ore:ingotZircaloy>.firstItem * 8)
	.EUt(480)
	.duration(800)
	.buildAndRegister();

alloy_smelter.recipeBuilder()
	.inputs(<ore:ingotZirconium> * 7)
	.inputs(<ore:dustTinAlloy>)
	.outputs(<ore:ingotZircaloy>.firstItem * 8)
	.EUt(480)
	.duration(800)
	.buildAndRegister();

alloy_smelter.recipeBuilder()
	.inputs(<ore:dustZirconium> * 7)
	.inputs(<ore:dustTinAlloy>)
	.outputs(<ore:ingotZircaloy>.firstItem * 8)
	.EUt(480)
	.duration(800)
	.buildAndRegister();

// SiC-SiC Ceramic Matrix Composite
autoclave.recipeBuilder().duration(40).EUt(30)
    .inputs(<ore:dustSiliconCarbide> * 4)
    .fluidInputs([<liquid:hot_nitrogen> * 100])
    .outputs(<ore:fiberSiliconCarbide>.firstItem)
    .buildAndRegister();

arc_furnace.recipeBuilder().duration(20).EUt(480)
    .inputs(<ore:fiberSiliconCarbide>)
    .outputs(<ore:ingotSiCSiCCMC>.firstItem)
    .buildAndRegister();

// HSLA
mixer.recipeBuilder().EUt(8).duration(176)
    .inputs(<ore:dustRegularInvar> * 2)
    .inputs(<ore:dustRegularVanadium>)
    .inputs(<ore:dustRegularTitanium>)
    .inputs(<ore:dustRegularMolybdenum>)
    .outputs(<ore:dustHslaSteel>.firstItem * 5)
    .buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<ore:dustHslaSteel>)
	.outputs(<ore:ingotHotHslaSteel>.firstItem)
	.property("temperature", 4400)
	.EUt(480)
	.duration(800)
	.buildAndRegister();

vacuum_freezer.recipeBuilder().duration(282).EUt(120)
    .inputs(<ore:ingotHotHslaSteel>)
    .outputs(<ore:ingotHSLASteel>.firstItem)
    .buildAndRegister();

macerator.recipeBuilder().duration(30).EUt(30)
    .inputs(<ore:ingotHSLASteel>)
    .outputs(<ore:dustHslaSteel>.firstItem)
    .buildAndRegister();

// Zirconium Molybdenum
alloy_smelter.recipeBuilder()
	.inputs(<ore:ingotMolybdenum> * 15)
	.inputs(<ore:ingotZirconium>)
	.outputs(<ore:ingotZirconiumMolybdenum>.firstItem * 16)
	.EUt(480)
	.duration(800)
	.buildAndRegister();

alloy_smelter.recipeBuilder()
	.inputs(<ore:dustMolybdenum> * 15)
	.inputs(<ore:ingotZirconium>)
	.outputs(<ore:ingotZirconiumMolybdenum>.firstItem * 16)
	.EUt(480)
	.duration(800)
	.buildAndRegister();

alloy_smelter.recipeBuilder()
	.inputs(<ore:ingotMolybdenum> * 15)
	.inputs(<ore:dustZirconium>)
	.outputs(<ore:ingotZirconiumMolybdenum>.firstItem * 16)
	.EUt(480)
	.duration(800)
	.buildAndRegister();

alloy_smelter.recipeBuilder()
	.inputs(<ore:dustMolybdenum> * 15)
	.inputs(<ore:dustZirconium>)
	.outputs(<ore:ingotZirconiumMolybdenum>.firstItem * 16)
	.EUt(480)
	.duration(800)
	.buildAndRegister();

// Niobium Tin
// TODO BETTER RECIPES + FREEZER
blast_furnace.recipeBuilder()
	.inputs(<ore:ingotNiobium> * 3)
	.inputs(<ore:ingotTin>)
	.outputs(<ore:ingotNiobiumTin>.firstItem * 4)
	.property("temperature", 5400)
	.EUt(1750)
	.duration(900)
	.buildAndRegister();

// Super Alloy
blast_furnace.recipeBuilder()
	.inputs(<ore:ingotNichrome> * 2)
	.inputs(<ore:ingotNiobiumTitanium>)
	.outputs(<ore:ingotSuperAlloy>.firstItem * 3)
	.property("temperature", 5400)
	.EUt(9750)
	.duration(1200)
	.buildAndRegister();





// Supercold Ice
chemical_bath.recipeBuilder().duration(150).EUt(30)
    .inputs(<ore:blockIce>)
    .fluidInputs([<liquid:liquid_helium> * 50])
    .outputs(<nuclearcraft:supercold_ice>)
    .buildAndRegister();

// Heavy Water Moderator
fluid_canner.recipeBuilder().duration(50).EUt(30)
	.inputs(<ore:emptyFrame>)
	.fluidInputs([<liquid:heavy_water> * 1000])
	.outputs(<nuclearcraft:heavy_water_moderator>)
	.buildAndRegister();

// RTGs
assembler.recipeBuilder().EUt(480).duration(100)
	.inputs(hulls[4], <ore:plateCupronickel>*6, <ore:blockUranium>*2, <ore:plateAdvanced>*4)
	.outputs(<nuclearcraft:rtg_uranium>)
	.fluidInputs(solder)
	.buildAndRegister();

assembler.recipeBuilder().EUt(1920).duration(100)
	.inputs(hulls[5], <ore:plateCupronickel>*6, <ore:ingotPlutonium238All>*2, <ore:plateAdvanced>*4)
	.outputs(<nuclearcraft:rtg_plutonium>)
	.fluidInputs(solder)
	.buildAndRegister();

assembler.recipeBuilder().EUt(7680).duration(100)
	.inputs(hulls[5], <ore:plateCupronickel>*6, <ore:ingotAmericium241All>*2, <ore:plateAdvanced>*4)
	.outputs(<nuclearcraft:rtg_americium>)
	.fluidInputs(solder)
	.buildAndRegister();

assembler.recipeBuilder().EUt(30720).duration(100)
	.inputs(hulls[6], <ore:plateCupronickel>*6, <ore:ingotCalifornium250All>*2, <ore:plateAdvanced>*4)
	.outputs(<nuclearcraft:rtg_californium>)
	.fluidInputs(solder)
	.buildAndRegister();

// Universal Bin
recipes.addShaped("nuclearcraft_bin", <nuclearcraft:bin>, [
    [<ore:screwSteel>, <ore:plateLead>, <ore:screwSteel>], 
    [<ore:plateLead>, <ore:gearSmallSteel>, <ore:plateLead>], 
    [<ore:screwSteel>, <ore:plateLead>, <ore:screwSteel>]
]);

// Fission Reactor Casing
assembler.recipeBuilder()
	.inputs(<ore:plateDenseLead>, <ore:plateDenseReactorSteel>*2, <ore:frameGtRedSteel>*4)
	.outputs(<nuclearcraft:fission_casing>*4)
	.EUt(250)
	.duration(80)
	.buildAndRegister();

// Fission Conductor
assembler.recipeBuilder()
	.inputs(<nuclearcraft:fission_casing>, <ore:springAnnealedCopper>*8)
	.outputs(<nuclearcraft:fission_conductor>)
	.fluidInputs(solder)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

// Fission Reflectors
// Beryllium
assembler.recipeBuilder()
	.inputs(hulls[3], <ore:plateBeryllium>*4, <ore:plateGraphite>*4, <ore:plateBasic>*4)	
	.outputs(<nuclearcraft:fission_reflector:0>)
	.fluidInputs(solder)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

// Lead-Steel
assembler.recipeBuilder()
	.inputs(hulls[3], <ore:plateLead>*4, <ore:plateBlackSteel>*4, <ore:plateBasic>*4)
	.outputs(<nuclearcraft:fission_reflector:1>)
	.fluidInputs(solder)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

// Fission Vent
assembler.recipeBuilder()
	.inputs(hulls[3], pumps[4]*2, <ore:plateBasic>*4)
	.outputs(<nuclearcraft:fission_vent>)
	.fluidInputs(solder)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

// Fission Neutron Irradiator
assembler.recipeBuilder()
	.inputs(hulls[3], <ore:plateZirconium>*2, <ore:plateZircaloy>*2, <ore:plateBasic>*2)
	.outputs(<nuclearcraft:fission_irradiator>)
	.fluidInputs(solder)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

// Fission Neutron Sources
// Ra-Be
assembler.recipeBuilder()
	.inputs(hulls[3], <ore:dustRadium>*2, <ore:dustBeryllium>*2, <ore:plateBasic>*4)
	.outputs(<nuclearcraft:fission_source:0>)
	.fluidInputs(solder)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

// Po-Be
assembler.recipeBuilder()
	.inputs(hulls[3], <ore:dustPolonium>*2, <ore:dustBeryllium>*2, <ore:plateBasic>*4)
	.outputs(<nuclearcraft:fission_source:1>)
	.fluidInputs(solder)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

// Cf-252
assembler.recipeBuilder()
	.inputs(hulls[3], <ore:ingotCalifornium252All>*1, <ore:plateBasic>*4)
	.outputs(<nuclearcraft:fission_source:2>)
	.fluidInputs(solder)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

// Boron-Silver Fission Neutron Shield
assembler.recipeBuilder()
	.inputs(hulls[3], <ore:plateSilver>*2, <ore:ingotBoron>*2, <ore:plateBasic>*4)
	.outputs(<nuclearcraft:fission_shield:0>)
	.fluidInputs(solder)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

// Ports
// Fission Neutron Irradiator Port
assembler.recipeBuilder()
	.inputs([hulls[3], robotArms[4]*2, <ore:plateBasic>*4, <ore:plateZirconium>])
	.outputs(<nuclearcraft:fission_irradiator_port>)
	.fluidInputs(solder)
	.EUt(360)
	.duration(80)
	.buildAndRegister();

// Fission Fuel Cell Port
assembler.recipeBuilder()
	.inputs(hulls[3], <ore:plateAdvanced>*4, <ore:plateZircaloy>*2, robotArms[4]*2)
	.outputs(<nuclearcraft:fission_cell_port>*4)
	.fluidInputs(solder)
	.EUt(450)
	.duration(80)
	.buildAndRegister();

// Solid Fission Fuel Cell
assembler.recipeBuilder()
	.inputs([hulls[3], <ore:plateZircaloy>*2, <ore:plateAdvanced>*4, <ore:plateTough>*2, <ore:frameGtZirconiumCarbide>*4])
	.outputs(<nuclearcraft:solid_fission_cell>*4)
	.fluidInputs(solder)
	.EUt(440)
	.duration(60)
	.buildAndRegister();

// Fission Fuel Vessel Port
assembler.recipeBuilder()
	.inputs(hulls[3], pumps[4]*2, <ore:plateElite>*4, <ore:plateZircaloy>*2)
	.outputs(<nuclearcraft:fission_vessel_port>*4)
	.fluidInputs(solder)
	.EUt(500)
	.duration(100)
	.buildAndRegister();

// Standard Fission Fuel Heater Port
assembler.recipeBuilder()
	.inputs(hulls[3], pumps[4]*2, <ore:plateElite>*4, <ore:plateReactorSteel>*4)
	.outputs(<nuclearcraft:fission_heater_port:0>)
	.fluidInputs(solder)
	.EUt(400)
	.duration(40)
	.buildAndRegister();

// Port Canning
val fission_heater_1 = <nuclearcraft:fission_heater_port>.definition;
val fission_heater_2 = <nuclearcraft:fission_heater_port2>.definition;

val heat_sinks_solid_1 = <nuclearcraft:solid_fission_sink>.definition;
val heat_sinks_solid_2 = <nuclearcraft:solid_fission_sink2>.definition;

val salt_heater_1 = <nuclearcraft:salt_fission_heater>.definition;
val salt_heater_2 = <nuclearcraft:salt_fission_heater2>.definition;

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

val port_materials_solid = [
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
	<ore:dustSodiumFluoride>,
	<ore:dustPotassiumFluoride>,
	<ore:dustArsenic>,
	<ore:plateEnderium>
] as IIngredient[];

val port_materials_liquid = [
	<liquid:liquid_nitrogen>,
	<liquid:liquid_helium>,
	<liquid:cryotheum>
] as ILiquidStack[];


for i in 0 to 15 {
    canner.recipeBuilder()
        .inputs(<nuclearcraft:fission_heater_port>, port_materials_solid[i] * 8)
        .outputs(fission_heater_1.makeStack(i + 1))
        .EUt(300)
        .duration(40)
        .buildAndRegister();

    canner.recipeBuilder()
        .inputs(fission_heater_1.makeStack(i + 1))
        .outputs(<nuclearcraft:fission_heater_port>, port_materials_solid[i].itemArray[0] * 8)
        .EUt(300)
        .duration(40)
        .buildAndRegister();

    canner.recipeBuilder()
        .inputs(<ore:emptyHeatSink>, port_materials_solid[i].itemArray[0] * 8)
        .outputs(heat_sinks_solid_1.makeStack(i + 1))
        .EUt(300)
        .duration(40)
        .buildAndRegister();

    canner.recipeBuilder()
        .inputs(heat_sinks_solid_1.makeStack(i + 1))
        .outputs(<ore:emptyHeatSink>.firstItem, port_materials_solid[i].itemArray[0] * 8)
        .EUt(300)
        .duration(40)
        .buildAndRegister();
    
    canner.recipeBuilder()
        .inputs(<nuclearcraft:salt_fission_heater>, port_materials_solid[i].itemArray[0] * 8)
        .outputs(salt_heater_1.makeStack(i + 1))
        .EUt(300)
        .duration(40)
        .buildAndRegister();

    canner.recipeBuilder()
        .inputs(salt_heater_1.makeStack(i + 1))
        .outputs(<nuclearcraft:salt_fission_heater>, port_materials_solid[i].itemArray[0] * 8)
        .EUt(300)
        .duration(40)
        .buildAndRegister();
}

for i in 0 to 12 {
    canner.recipeBuilder()
        .inputs(<nuclearcraft:fission_heater_port>, port_materials_solid[i + 15] * 8)
        .outputs(fission_heater_2.makeStack(i))
        .EUt(300)
        .duration(40)
        .buildAndRegister();

    canner.recipeBuilder()
        .inputs(fission_heater_2.makeStack(i))
        .outputs(<nuclearcraft:fission_heater_port>, port_materials_solid[i + 15].itemArray[0] * 8)
        .EUt(300)
        .duration(40)
        .buildAndRegister();

    canner.recipeBuilder()
        .inputs(<ore:emptyHeatSink>, port_materials_solid[i + 15] * 8)
        .outputs(heat_sinks_solid_2.makeStack(i))
        .EUt(300)
        .duration(40)
        .buildAndRegister();

    canner.recipeBuilder()
        .inputs(heat_sinks_solid_2.makeStack(i))
        .outputs(<ore:emptyHeatSink>.firstItem, port_materials_solid[i + 15].itemArray[0] * 8)
        .EUt(300)
        .duration(40)
        .buildAndRegister();
    
    canner.recipeBuilder()
        .inputs(<nuclearcraft:salt_fission_heater>, port_materials_solid[i + 15] * 8)
        .outputs(salt_heater_2.makeStack(i))
        .EUt(300)
        .duration(40)
        .buildAndRegister();

    canner.recipeBuilder()
        .inputs(salt_heater_2.makeStack(i))
        .outputs(<nuclearcraft:salt_fission_heater>, port_materials_solid[i + 15].itemArray[0] * 8)
        .EUt(300)
        .duration(40)
        .buildAndRegister();
}

// Enderium Cooler
canner.recipeBuilder()
    .inputs(<nuclearcraft:fission_heater_port>, port_materials_solid[27] * 8)
    .outputs(fission_heater_2.makeStack(14))
    .EUt(300)
    .duration(40)
    .buildAndRegister();

canner.recipeBuilder()
    .inputs(fission_heater_2.makeStack(14))
    .outputs(<nuclearcraft:fission_heater_port>, port_materials_solid[27].itemArray[0] * 8)
    .EUt(300)
    .duration(40)
    .buildAndRegister();

canner.recipeBuilder()
    .inputs(<ore:emptyHeatSink>, port_materials_solid[27].itemArray[0] * 8)
    .outputs(heat_sinks_solid_2.makeStack(14))
    .EUt(300)
    .duration(40)
    .buildAndRegister();

canner.recipeBuilder()
    .inputs(heat_sinks_solid_2.makeStack(14))
    .outputs(<ore:emptyHeatSink>.firstItem, port_materials_solid[27].itemArray[0] * 8)
    .EUt(300)
    .duration(40)
    .buildAndRegister();

canner.recipeBuilder()
    .inputs(<nuclearcraft:salt_fission_heater>, port_materials_solid[27].itemArray[0] * 8)
    .outputs(salt_heater_2.makeStack(14))
    .EUt(300)
    .duration(40)
    .buildAndRegister();

canner.recipeBuilder()
    .inputs(salt_heater_2.makeStack(14))
    .outputs(<nuclearcraft:salt_fission_heater>, port_materials_solid[27].itemArray[0] * 8)
    .EUt(300)
    .duration(40)
    .buildAndRegister();

for i in 0 to port_materials_liquid.length{
	fluid_canner.recipeBuilder()
		.inputs(<nuclearcraft:fission_heater_port>)
		.fluidInputs(port_materials_liquid[i] * 1000)
		.outputs(heater_ports_liquid[i])
		.EUt(300)
		.duration(40)
		.buildAndRegister();

	fluid_canner.recipeBuilder()
		.inputs(heater_ports_liquid[i])
		.outputs(<nuclearcraft:fission_heater_port>)
        .fluidOutputs(port_materials_liquid[i] * 1000)
		.EUt(300)
		.duration(40)
		.buildAndRegister();

	fluid_canner.recipeBuilder()
		.inputs(<ore:emptyHeatSink>.firstItem)
		.fluidInputs(port_materials_liquid[i] * 1000)
		.outputs(heat_sinks_liquid[i])
		.EUt(300)
		.duration(40)
		.buildAndRegister();

	fluid_canner.recipeBuilder()
        .inputs(heat_sinks_liquid[i])
		.outputs(<ore:emptyHeatSink>.firstItem)
		.fluidOutputs(port_materials_liquid[i] * 1000)
		.EUt(300)
		.duration(40)
		.buildAndRegister();

	fluid_canner.recipeBuilder()
		.inputs(<nuclearcraft:salt_fission_heater>)
		.fluidInputs(port_materials_liquid[i] * 1000)
		.outputs(coolant_heaters_liquid[i])
		.EUt(300)
		.duration(40)
		.buildAndRegister();

	fluid_canner.recipeBuilder()
        .inputs(coolant_heaters_liquid[i])
		.outputs(<nuclearcraft:salt_fission_heater>)
		.fluidOutputs(port_materials_liquid[i] * 1000)
		.EUt(300)
		.duration(40)
		.buildAndRegister();
}

// Water Fission Heat Sink
fluid_canner.recipeBuilder()
	.inputs(<ore:emptyHeatSink>)
	.outputs(<nuclearcraft:solid_fission_sink>)
	.fluidInputs([<liquid:water>*1000])
	.EUt(300)
	.duration(40)
	.buildAndRegister();

// Water Fission Heat Sink
fluid_canner.recipeBuilder()
	.inputs(<nuclearcraft:solid_fission_sink>)
	.outputs(<ore:emptyHeatSink>.firstItem)
	.fluidOutputs([<liquid:water>*1000])
	.EUt(300)
	.duration(40)
	.buildAndRegister();

// Fission Reactor Controller
assembler.recipeBuilder()
	.inputs(hulls[4], robotArms[4] * 2, <metaitem:display>, <ore:plateAdvanced> * 4, <ore:plateHastelloyN> * 4, circuits[5] * 2, <ore:plateReactorSteel> * 6)
	.outputs(<nuclearcraft:solid_fission_controller>)
	.fluidInputs(solder)
	.EUt(500)
	.duration(2000)
	.buildAndRegister();

// Molten Salt Fission Reactor Controller
assembler.recipeBuilder()
	.inputs(hulls[5], <ore:plateElite> * 4, <ore:plateHastelloyN> * 4, <metaitem:display>, robotArms[5] * 2, <ore:plateReactorSteel> * 6, circuits[6] * 2)
	.outputs(<nuclearcraft:salt_fission_controller>)
	.fluidInputs(solder)
	.EUt(1000)
	.duration(2000)
	.buildAndRegister();

// Turbine Controller
assembler.recipeBuilder()
	.inputs(hulls[4], <ore:plateTough>*4, <ore:plateHslaSteel>*4 , circuits[5])
	.outputs(<nuclearcraft:turbine_controller>)
	.fluidInputs(solder)
	.EUt(500)
	.duration(1500)
	.buildAndRegister();

// Turbine Casing
assembler.recipeBuilder()
	.inputs(tieredPlates[3] * 8, <ore:plateHslaSteel> * 8, <ore:frameGtBlueSteel> * 4)
	.outputs(<nuclearcraft:turbine_casing>*8)
	.EUt(440)
	.duration(80)
	.buildAndRegister();

// Turbine Rotor Shaft
assembler.recipeBuilder()
	.inputs([<ore:stickLongTitanium> * 8, <ore:plateHslaSteel> * 6, <ore:plateTough> * 3])
	.outputs(<nuclearcraft:turbine_rotor_shaft> * 4)
	.fluidInputs(solder)
	.EUt(400)
	.duration(80)
	.buildAndRegister();

// Standard Rotor
assembler.recipeBuilder()
	.inputs(<ore:plateHslaSteel> * 6)
    .circuit(0)
	.outputs(<nuclearcraft:turbine_rotor_stator>)
	.fluidInputs(solder)
	.EUt(400)
	.duration(80)
	.buildAndRegister();

// Steel Rotor
assembler.recipeBuilder()
    .inputs(<ore:plateHslaSteel> * 3, <ore:plateSteel> * 3)
    .circuit(1)
    .outputs(<nuclearcraft:turbine_rotor_blade_steel>)
    .fluidInputs(solder)
    .EUt(400)
    .duration(80)
    .buildAndRegister();

// Extreme Rotor
assembler.recipeBuilder()
    .inputs(<ore:plateHslaSteel> * 3, <ore:plateExtreme> * 3)
    .circuit(2)
    .outputs(<nuclearcraft:turbine_rotor_blade_extreme>)
    .fluidInputs(solder)
    .EUt(400)
    .duration(80)
    .buildAndRegister();

// SiCSiC Rotor
assembler.recipeBuilder()
    .inputs(<ore:plateHslaSteel> * 3, <ore:ingotSiCSiCCMC> * 3)
    .notConsumable(<ore:craftingDiamondBlade>)
    .outputs(<nuclearcraft:turbine_rotor_blade_sic_sic_cmc>)
    .fluidInputs(solder)
    .EUt(400)
    .duration(80)
    .buildAndRegister();

// Turbine Bearing
assembler.recipeBuilder()
	.inputs(<ore:plateHslaSteel> * 4, <ore:roundTitanium> * 16, <ore:frameGtTitanium>)
	.outputs(<nuclearcraft:turbine_rotor_bearing>)
	.fluidInputs(solder)
	.EUt(400)
	.duration(80)
	.buildAndRegister();

// Dynamo Coils
val coil_materials = [
	<ore:wireFineMagnesium>,
	<ore:wireFineBeryllium>,
	<ore:wireFineAluminium>,
	<ore:wireFineGold>,
	<ore:wireFineCopper>,
	<ore:wireFineSilver>
] as IIngredient[];

val coil = <nuclearcraft:turbine_dynamo_coil>.definition;

for i in 0 to coil_materials.length{
	assembler.recipeBuilder()
		.inputs(<ore:plateHslaSteel> * 3, coil_materials[i] * 16, <ore:frameGtTitanium>)
		.outputs(coil.makeStack(i))
		.fluidInputs(solder)
		.EUt(400)
		.duration(80)
		.buildAndRegister();
}

// Turbine Dynamo Coil Connector
assembler.recipeBuilder()
	.inputs(<ore:plateAnnealedCopper> * 2, <ore:plateHslaSteel> * 2, <ore:frameGtTitanium>)
	.outputs(<nuclearcraft:turbine_coil_connector>)
	.fluidInputs(solder)
	.EUt(400)
	.duration(80)
	.buildAndRegister();

// Turbine IO
assembler.recipeBuilder()
	.inputs([<ore:plateHslaSteel> * 4, pumps[3] * 2, <ore:frameGtTitanium>])
	.outputs(<nuclearcraft:turbine_inlet>)
	.fluidInputs(solder)
	.circuit(0)
	.EUt(400)
	.duration(80)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs([<ore:plateHslaSteel> * 4, pumps[3] * 2, <ore:frameGtTitanium>])
	.outputs(<nuclearcraft:turbine_outlet>)
	.fluidInputs(solder)
	.circuit(1)
	.EUt(400)
	.duration(80)
	.buildAndRegister();

// Radiation Scrubber
assembler.recipeBuilder()
	.inputs(hulls[3], <ore:plateElite> * 4, <ore:plateExtreme>, circuits[5])
	.outputs(<nuclearcraft:radiation_scrubber>)
	.fluidInputs(solder)
	.EUt(300)
	.duration(80)
	.buildAndRegister();

// Tritium Lamp
fluid_canner.recipeBuilder().duration(100).EUt(30)
    .inputs(tieredGlass[2])
    .fluidInputs([<liquid:tritium> * 100])
    .outputs(<nuclearcraft:tritium_lamp>)
    .buildAndRegister();

// Geiger Counter
assembler.recipeBuilder()
	.inputs([<ore:plateTough> * 4, <ore:circuitAdvanced>, <ore:platePlastic>, <ore:wireFineCopper> * 4, <ore:wireFineTitanium> * 4, <ore:plateSteel>])
	.outputs(<nuclearcraft:geiger_counter>)
	.fluidInputs(solder)
	.EUt(300)
	.duration(120)
	.buildAndRegister();

// Geiger Counter Block
canner.recipeBuilder().EUt(30).duration(400)
    .inputs(<gregtech:machine_casing:1>, <nuclearcraft:geiger_counter>)
    .outputs(<nuclearcraft:geiger_block>)
    .buildAndRegister();

canner.recipeBuilder().EUt(30).duration(400)
    .inputs(<nuclearcraft:geiger_block>)
    .outputs(<gregtech:machine_casing:1>, <nuclearcraft:geiger_counter>)
    .buildAndRegister();

// Boron Nitride
// H3BO3 + NH3 -> BN + 3H2O
chemical_reactor.recipeBuilder().duration(100).EUt(120)
    .fluidInputs([<fluid:boric_acid> * 1000])
    .fluidInputs([<fluid:ammonia> * 1000])
    .fluidOutputs([<fluid:water> * 3000])
    .outputs(<ore:dustBoronNitride>.firstItem * 2)
    .buildAndRegister();

compressor.recipeBuilder().duration(100).EUt(120)
    .inputs(<ore:dustBoronNitride>)
    .outputs(<ore:gemBoronNitride>.firstItem)
    .buildAndRegister();

// Fluorite Gem
autoclave.recipeBuilder().duration(1600).EUt(24)
    .inputs(<ore:dustRegularFluorite>)
    .fluidInputs([<fluid:water> * 200])
    .chancedOutput(<ore:gemFluorite>.firstItem, 7000, 1000)
    .buildAndRegister();

autoclave.recipeBuilder().duration(1200).EUt(24)
    .inputs(<ore:dustRegularFluorite>)
    .fluidInputs([<fluid:distilled_water> * 200])
    .chancedOutput(<ore:gemFluorite>.firstItem, 8000, 1000)
    .buildAndRegister();

// Boron Arsenide
// As2O3 + B2H6 -> 2BAs + 3H2O
chemical_reactor.recipeBuilder().duration(100).EUt(120)
    .inputs(<ore:dustRegularArsenicTrioxide> * 5)
    .fluidInputs([<fluid:diborane> * 1000])
    .outputs(<ore:gemBoronArsenide>.firstItem * 2)
    .buildAndRegister();

// Tiered Plating
// Basic
forming_press.recipeBuilder()
	.inputs(<ore:plateLead>, <ore:plateGraphite>)
	.outputs(<ore:plateBasic>.firstItem)
	.EUt(30)
	.duration(200)
	.buildAndRegister();

// Advanced
forming_press.recipeBuilder()
	.inputs(<ore:plateBasic>, <ore:plateTough>, <ore:plateRedSteel>)
	.outputs(<ore:plateAdvanced>.firstItem)
	.EUt(250)
	.duration(80)
	.buildAndRegister();

// DU
forming_press.recipeBuilder()
	.inputs(<ore:plateAdvanced>, <ore:plateUranium> * 2, <ore:plateNiobiumNitride>)
	.outputs(<ore:plateDU>.firstItem)
	.EUt(250)
	.duration(80)
	.buildAndRegister();

// Elite
forming_press.recipeBuilder()
	.inputs(<ore:plateDU>, <ore:plateTungstenSteel> * 2, <ore:plateNiobiumTitanium> * 2, <ore:plateEnderium>, <ore:plateDarkSteel>)
	.outputs(<ore:plateElite>.firstItem)
	.EUt(250)
	.duration(80)
    .buildAndRegister();

// Empty Frame
assembler.recipeBuilder()
	.inputs(<ore:plateTinAlloy> * 2, <ore:plateZirconium> * 2, <ore:plateReactorSteel>)
	.outputs(<ore:emptyFrame>.firstItem)
	.EUt(480)
	.duration(40)
	.buildAndRegister();

// Empty Heat Sink
assembler.recipeBuilder()
	.inputs(<ore:frameGtStainlessSteel>, <ore:plateAdvanced> * 4, <ore:pipeTinyCopper> * 16, <ore:ingotThermoconducting> * 6)
	.outputs(<ore:emptyHeatSink>.firstItem * 8)
	.fluidInputs(solder)
	.EUt(400)
	.duration(40)
	.buildAndRegister();

// Salt Fission Vessel
assembler.recipeBuilder()
	.inputs(hulls[4], pumps[5], <ore:frameGtZirconiumCarbide> * 4, <ore:plateElite> * 4, <ore:plateZircaloy> * 2, <ore:ingotZirconiumMolybdenum> * 2)
	.outputs(<nuclearcraft:salt_fission_vessel>*4)
	.fluidInputs(solder)
	.EUt(600)
	.duration(100)
	.buildAndRegister();

// Salt Fission Heater
assembler.recipeBuilder()
	.inputs(<ore:frameGtStainlessSteel>, <ore:pipeTinyCopper> * 32, <ore:ingotThermoconducting> * 6, <ore:plateElite> * 4)
	.outputs(<nuclearcraft:salt_fission_heater:0> * 8)
	.fluidInputs(solder)
	.EUt(600)
	.duration(100)
	.buildAndRegister();

// Radaway
mixer.recipeBuilder()
	.inputs(<ore:dustSmallGlowstone>)
	.fluidInputs([<liquid:ethanol> * 1000])
	.fluidOutputs([<liquid:radaway> * 1000])
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<ore:dustSmallRedstone>)
	.fluidInputs([<liquid:radaway> * 1000])
	.fluidOutputs([<liquid:radaway_slow> * 1000])
	.buildAndRegister();

fluid_canner.recipeBuilder()
	.inputs(<ore:foilPolystyrene>)
	.fluidInputs([<liquid:radaway>*100])
	.outputs(<nuclearcraft:radaway>)
	.EUt(300)
	.duration(80)
	.buildAndRegister();

fluid_canner.recipeBuilder()
	.inputs(<ore:foilPolystyrene>)
	.fluidInputs([<liquid:radaway_slow>*100])
	.outputs(<nuclearcraft:radaway_slow>)
	.EUt(300)
	.duration(80)
	.buildAndRegister();

fluid_canner.recipeBuilder()
	.inputs(<ore:foilPlastic>)
	.fluidInputs([<liquid:radaway_slow>*50])
	.outputs(<nuclearcraft:rad_x>)
	.EUt(300)
	.duration(80)
	.buildAndRegister();

// Radiation Shielding
forming_press.recipeBuilder()
	.inputs(<ore:plateIron> * 3, <ore:plateGraphite> * 3, <ore:plateLead> * 3, <ore:plateBasic> * 3)
	.outputs(<nuclearcraft:rad_shielding>)
	.EUt(300)
	.duration(80)
	.buildAndRegister();

forming_press.recipeBuilder()
	.inputs(<ore:platePlastic> * 3, <nuclearcraft:rad_shielding> * 2, <ore:ingotFerroboron>, <ore:plateAdvanced> * 3)
	.outputs(<nuclearcraft:rad_shielding:1>)
	.EUt(300)
	.duration(80)
	.buildAndRegister();

forming_press.recipeBuilder()
	.inputs(<ore:plateBeryllium> * 3, <nuclearcraft:rad_shielding:1> * 2, <ore:ingotHardCarbon>, <ore:plateDU> * 3)
	.outputs(<nuclearcraft:rad_shielding:2>)
	.EUt(300)
	.duration(80)
	.buildAndRegister();

// Multitool
recipes.addShaped("nc_multitool", <nuclearcraft:multitool>, [[<ore:craftingToolBendingCylinder>, <ore:stickBismuthBronze>, <ore:stickBismuthBronze>], [<ore:plateBlueSteel>, <ore:stickLongStaballoy>, <ore:gearSmallInconelB>], [<ore:gregWrenches>, <ore:gregScrewDrivers>, <ore:craftingToolFile>]]);

// Reactor Glasses
val casing_glass = [
	<nuclearcraft:fission_glass>, <nuclearcraft:heat_exchanger_glass>, <nuclearcraft:turbine_glass>, <qmd:accelerator_glass>, <qmd:particle_chamber_glass>, <qmd:containment_glass>
] as IItemStack[];

val casings = [
	<nuclearcraft:fission_casing>, <nuclearcraft:heat_exchanger_casing>, <nuclearcraft:turbine_casing>, <qmd:accelerator_casing>, <qmd:particle_chamber_casing>, <qmd:containment_casing>
] as IIngredient[];

for i, item in casing_glass {
	alloy_smelter.recipeBuilder().duration(100).EUt(8)
		.inputs(casings[i])
		.inputs(tieredGlass[2])
		.outputs(item)
		.buildAndRegister();

	recipes.remove(item);
}

// Isotopes
gas_centrifuge.recipeBuilder().circuit(0).EUt(480).duration(200)
	.fluidInputs([<liquid:lithium> * 1440])
	.fluidOutputs([<liquid:lithium_6> * 144])
	.fluidOutputs([<liquid:lithium_7> * 1296])
	.buildAndRegister();

gas_centrifuge.recipeBuilder().circuit(0).EUt(480).duration(200)
	.fluidInputs([<liquid:boron> * 1728])
	.fluidOutputs([<liquid:boron_10> * 432])
	.fluidOutputs([<liquid:boron_11> * 1296])
	.buildAndRegister();

val isotopes = [<liquid:lithium_6>, <liquid:lithium_7>, <liquid:boron_10>, <liquid:boron_11>] as ILiquidStack[];
val isotopes_item = [<ore:ingotLithium6>.firstItem, <ore:ingotLithium7>.firstItem, <ore:ingotBoron11>.firstItem, <ore:ingotBoron10>.firstItem] as IItemStack[];

for i, fluid in isotopes {
	fluid_solidifier.recipeBuilder().duration(20).EUt(8)
		.fluidInputs([fluid * 144])
		.notConsumable(<metaitem:shape.mold.ball>)
		.outputs(isotopes_item[i])
		.buildAndRegister();

	fluid_extractor.recipeBuilder().duration(200).EUt(8)
		.inputs(isotopes_item[i])
		.fluidOutputs([fluid * 144])
		.buildAndRegister();

}

thermal_centrifuge.recipeBuilder().EUt(480).duration(200)
	.inputs(<ore:dustMagnesium> * 9)
	.outputs(<ore:ingotMagnesium24>.firstItem  * 8)
	.outputs(<ore:ingotMagnesium26>.firstItem)
	.buildAndRegister();

thermal_centrifuge.recipeBuilder().EUt(480).duration(200)
	.inputs(<ore:dustCalcium> * 8)
	.outputs(<ore:ingotCalcium48>.firstItem)
	.buildAndRegister();

// Water Sources
recipes.addShaped("nc_water_source", <nuclearcraft:water_source>, [
	[<ore:plateBasic>, <enderio:block_reservoir>, <ore:plateBasic>],
	[<enderio:block_reservoir>, <ore:screwSteel>, <enderio:block_reservoir>],
	[<ore:plateBasic>, <enderio:block_reservoir>, <ore:plateBasic>]
]);

compressor.recipeBuilder().duration(200).EUt(8)
	.inputs(<nuclearcraft:water_source> * 8)
	.outputs(<nuclearcraft:water_source_compact>)
	.buildAndRegister();

compressor.recipeBuilder().duration(200).EUt(8)
	.inputs(<nuclearcraft:water_source_compact> * 8)
	.outputs(<nuclearcraft:water_source_dense>)
	.buildAndRegister();

// Cobblestone Generators
chemical_bath.recipeBuilder().duration(200).EUt(8)
	.fluidInputs([<fluid:lava> * 1000])
	.inputs(<nuclearcraft:water_source>)
	.outputs(<nuclearcraft:cobblestone_generator>)
	.buildAndRegister();

chemical_bath.recipeBuilder().duration(200).EUt(8)
	.fluidInputs([<fluid:lava> * 1000])
	.inputs(<nuclearcraft:cobblestone_generator_compact>)
	.outputs(<nuclearcraft:cobblestone_generator>)
	.buildAndRegister();

chemical_bath.recipeBuilder().duration(200).EUt(8)
	.fluidInputs([<fluid:lava> * 1000])
	.inputs(<nuclearcraft:water_source_dense>)
	.outputs(<nuclearcraft:cobblestone_generator_dense>)
	.buildAndRegister();

// Decay Recipes
val decay_inputs = [
	<ore:dustThorium>,
	// <ore:dustRadium>,
	<ore:dustPolonium>,
	<ore:dustProtactinium233>,
	<ore:dustStrontium90>,
	<ore:dustRuthenium106>,
	<ore:dustCaesium137>,
	<ore:dustPromethium147>,
	<ore:dustEuropium155>,
	<ore:dustUraniumRadioactive233>,
	<ore:dustUranium235>,
	<ore:dustUranium>,
	<ore:ingotNeptunium236>,
	<ore:dustNeptunium237>,
	<ore:dustPlutoniumRadioactive239>,
	<ore:dustPlutonium241>,
	<ore:ingotPlutonium242>,
	<ore:dustAmericium241>,
	<ore:dustAmericium243>,
	<ore:ingotCurium243>,
	<ore:dustCurium245>,
	<ore:dustCurium246>,
	<ore:dustCurium247>,
	<ore:dustBerkelium247>,
	<ore:ingotBerkelium248>,
	<ore:ingotCalifornium249>,
	<ore:ingotCalifornium250>,
	<ore:dustCalifornium251>,
	<ore:ingotPlutonium238>,
	<ore:ingotBeryllium7>,
	<ore:dustProtactinium231>,
	<ore:dustUraniumRadioactive234>,
	<ore:ingotCobalt60>,
	<ore:ingotIridium192>
] as IIngredient[];

val decay_outputs = [
	<ore:dustLead>,
	// <ore:dustRadium>,
	<ore:dustLead>,
	<ore:dustUraniumRadioactive233>,
	<ore:dustZirconium>,
	<ore:dustPalladium>,
	<ore:dustBarium>,
	<ore:dustNeodymium>,
	<ore:dustGadolinium>,
	<ore:dustBismuth>,
	<ore:dustLead>,
	<ore:dustSmallRadium>,
	<ore:dustThorium>,
	<ore:dustUraniumRadioactive233>,
	<ore:dustUranium235>,
	<ore:dustNeptunium237>,
	<ore:dustUranium>,
	<ore:dustNeptunium237>,
	<ore:dustPlutoniumRadioactive239>,
	<ore:dustPlutoniumRadioactive239>,
	<ore:dustPlutonium241>,
	<ore:ingotPlutonium242>,
	<ore:dustAmericium243>,
	<ore:dustAmericium243>,
	<ore:dustThorium>,
	<ore:dustCurium245>,
	<ore:dustCurium246>,
	<ore:dustCurium247>,
	<ore:dustUraniumRadioactive234>,
	<ore:ingotLithium7>,
	<ore:dustLead>,
	<ore:dustSmallRadium>,
	<ore:dustNickel>,
	<ore:dustPlatinum>
] as IIngredient[];

for i in 0 to decay_inputs.length {
	decay_chamber.recipeBuilder().duration(200).EUt(30)
		.inputs(decay_inputs[i])
		.outputs(decay_outputs[i].itemArray[0])
		.buildAndRegister();
}

// Borax
centrifuge.recipeBuilder().duration(100).EUt(24)
	.inputs(<ore:dustIrradiatedBorax>)
	.outputs(<ore:dustBorax>.firstItem)
	.buildAndRegister();


// TODO HAZMAT SUIT
