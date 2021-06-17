import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMap;

val removals = [
    "galacticraftcore:landing_pad_0",
    "galacticraftcore:landing_pad_1",
    "galacticraftcore:rocket_workbench",
    "galaxyspace:machineframes",
    "galacticraftcore:fuel_loader",
    "galacticraftcore:air_lock_frame_1",
    "galacticraftcore:magnetic_table",
    "galacticraftcore:fluid_pipe",
    "galacticraftcore:spin_thruster",
    "galacticraftcore:telemetry",
    "galacticraftplanets:mars_machine_0",
    "galacticraftplanets:mars_machine_4",
    "galacticraftplanets:mars_machine_8",
    "galacticraftplanets:miner_base",
    "galaxyspace:planet_shield",
    "galaxyspace:gravitation_module"
] as string[];

for item in removals {
    recipes.removeByRecipeName(item);
}

val disables = [
    <galacticraftcore:refinery>,
    <galacticraftcore:magnetic_table>,
    <galacticraftcore:solar>,
    <galacticraftcore:solar:4>,
    <galacticraftcore:dishbase>,
    <galacticraftcore:machine>,
    <galacticraftcore:machine:12>,
    <galacticraftcore:machine2>,
    <galacticraftcore:machine2:4>,
    <galacticraftcore:machine2:8>,
    <galacticraftcore:machine2:12>,
    <galacticraftcore:machine3>,
    <galacticraftcore:machine_tiered>,
    <galacticraftcore:machine_tiered:4>,
    <galacticraftcore:machine_tiered:8>,
    <galacticraftcore:machine_tiered:12>,
    <galacticraftcore:machine4>,
    <galacticraftcore:emergency_box>,
    <galacticraftcore:emergency_box:1>,
    <galacticraftplanets:mars_machine_t2>,
    <galacticraftplanets:mars_machine_t2:4>,
    <galacticraftplanets:mars_machine_t2:8>,
    <galacticraftplanets:beam_reflector>,
    <galacticraftplanets:beam_receiver>,
    <galacticraftplanets:telepad_short>,
    <galacticraftplanets:geothermal_generator>,
    <galacticraftplanets:solar_array_module>,
    <galacticraftplanets:solar_array_controller>,
    <galacticraftplanets:laser_turret>,
    <galacticraftplanets:geothermal_generator>,
    <galaxyspace:machineframes>,
    <galaxyspace:machineframes:1>,
    <galaxyspace:machineframes:2>,
    <galaxyspace:assembly_machine>,
    <galaxyspace:fuel_generator>,
    <galaxyspace:wind_generator>,
    <galaxyspace:modern_solarpanel>,
    <galaxyspace:universal_recycler>,
    <galaxyspace:liquid_extractor>,
    <galaxyspace:liquid_separator>,
    <galaxyspace:hydroponic_base>,
    <galaxyspace:hydroponic_farm>,
    <galaxyspace:panel_controller>,
    <galaxyspace:single_solarpanel>,
    <galaxyspace:modern_single_solarpanel>,
    <galaxyspace:modern_storage_module>,
    <galaxyspace:gas_burner>,
    <galaxyspace:oxygen_storage_module_1>,
    <galaxyspace:solarwind_panel>,
    <galaxyspace:adv_circuit_fabricator>,
    <galaxyspace:energy_pad>,
    <galaxyspace:modification_table>,
    <galaxyspace:rocket_assembler>
] as IItemStack[];

for item in disables {
    mods.jei.JEI.removeAndHide(item);
}

// Launch Pad
recipes.addShaped("gc_launch_pad", <galacticraftcore:landing_pad> * 3, [
    [<ore:compressedIron>, <ore:compressedIron>, <ore:compressedIron>],
    [<metaitem:plate.advanced_alloy>, <metaitem:plate.advanced_alloy>, <metaitem:plate.advanced_alloy>],
    [<ore:blockIron>, <ore:blockIron>, <ore:blockIron>]
]);

// Buggy Pad
recipes.addShaped("gc_buggy_pad", <galacticraftcore:landing_pad:1> * 3, [
    [<ore:compressedSteel>, <ore:compressedSteel>, <ore:compressedSteel>],
    [<metaitem:plate.advanced_alloy>, <metaitem:plate.advanced_alloy>, <metaitem:plate.advanced_alloy>],
    [<ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>]
]);

// Oxygen Bubble Distributor
recipes.addShaped("gc_oxygen_bubble_distributor", <galacticraftcore:distributor>, [
    [<ore:compressedAluminium>, <galacticraftcore:air_fan>, <ore:compressedAluminium>],
    [<galacticraftcore:air_vent>, motors[3], <galacticraftcore:air_vent>],
    [<ore:compressedSteel>, <galacticraftcore:air_fan>, <ore:compressedSteel>]
]);

// Oxygen Collector
recipes.addShaped("gc_oxygen_collector", <galacticraftcore:collector>, [
    [<ore:compressedAluminium>, <galacticraftcore:oxygen_concentrator>, <ore:compressedAluminium>],
    [<galacticraftcore:air_vent>, <galacticraftcore:air_fan>, motors[3]],
    [<ore:compressedSteel>, <ore:cableGtDoubleAluminium>, <ore:compressedSteel>]
]);

// Oxygen Compressor
recipes.addShaped("gc_oxygen_compressor", <galacticraftcore:oxygen_compressor>, [
    [<ore:compressedAluminium>, <galacticraftcore:oxygen_concentrator>, <ore:compressedAluminium>],
    [pistons[3], <metaitem:large_fluid_cell.steel>, motors[3]],
    [<ore:compressedSteel>, <ore:compressedBronze>, <ore:compressedSteel>]
]);

// Oxygen Decompressor
recipes.addShaped("gc_oxygen_decompressor", <galacticraftcore:oxygen_compressor:4>, [
    [<ore:compressedAluminium>, <galacticraftcore:oxygen_concentrator>, <ore:compressedAluminium>],
    [motors[3], <metaitem:large_fluid_cell.steel>, <galacticraftcore:air_fan>],
    [<ore:compressedSteel>, <ore:compressedBronze>, <ore:compressedSteel>]
]);

// Oxygen Sealer
recipes.addShaped("gc_oxygen_sealer", <galacticraftcore:sealer>, [
    [<ore:compressedAluminium>, <galacticraftcore:air_vent>, <ore:compressedAluminium>],
    [<galacticraftcore:air_vent>, <galacticraftcore:distributor>, <galacticraftcore:air_vent>],
    [<ore:compressedDesh>, <galacticraftcore:oxygen_detector>, <ore:compressedDesh>]
]);

// Oxygen Detector
recipes.addShaped("gc_oxygen_detector", <galacticraftcore:oxygen_detector>, [
    [<ore:compressedDesh>, <ore:compressedSteel>, <ore:compressedDesh>],
    [<galacticraftcore:air_vent>, sensors[3], <galacticraftcore:air_vent>],
    [<ore:compressedAluminium>, <ore:wireGtSingleRedAlloy>, <ore:compressedAluminium>]
]);

// Fuel Loader
recipes.addShaped("gc_fuel_loader", <galacticraftcore:fuel_loader>, [
    [<ore:compressedSteel>, <ore:waferBasic>, <ore:compressedSteel>],
    [pumps[3], <metaitem:large_fluid_cell.steel>, motors[3]],
    [<ore:compressedAluminium>, <ore:pipeMediumSteel>, <ore:compressedAluminium>]
]);

// Cargo Loader
recipes.addShaped("gc_cargo_loader", <galacticraftcore:cargo>, [
    [<ore:compressedAluminium>, conveyors[3], <ore:compressedAluminium>],
    [conveyors[3], hulls[3], conveyors[3]],
    [<ore:compressedDesh>, <ore:gearBrass>, <ore:compressedDesh>]
]);

// Cargo Unloader
recipes.addShaped("gc_cargo_unloader", <galacticraftcore:cargo:4>, [
    [<ore:compressedDesh>, <ore:gearBrass>, <ore:compressedDesh>],
    [conveyors[3], hulls[3], conveyors[3]],
    [<ore:compressedAluminium>, conveyors[3], <ore:compressedAluminium>]
]);

// NASA Workbench
recipes.addShaped("gc_nasa_workbench", <galacticraftcore:rocket_workbench>, [
    [robotArms[3], robotArms[3], robotArms[3]],
    [circuits[5], <metaitem:display>, circuits[5]],
    [<ore:frameGtRedSteel>, <meta_tile_entity:gregtech:assembler.hv>, <ore:frameGtRedSteel>]
]);

// Air Lock Frame
recipes.addShaped("gc_air_lock_frame", <galacticraftcore:air_lock_frame>, [
    [<ore:compressedMeteoricIron>, <ore:screwStainlessSteel>, <ore:compressedMeteoricIron>],
    [<galacticraftcore:air_vent>, <ore:gregScrewDrivers>, <galacticraftcore:air_vent>],
    [<ore:compressedAluminium>, <ore:screwStainlessSteel>, <ore:compressedAluminium>]
]);

// Air Lock Controller
recipes.addShaped("gc_air_lock_controller", <galacticraftcore:air_lock_frame:1>, [
    [<ore:compressedMeteoricIron>, <galacticraftcore:oxygen_concentrator>, <ore:compressedMeteoricIron>],
    [<galacticraftcore:air_vent>, <ore:waferAdvanced>, <galacticraftcore:air_vent>],
    [<ore:compressedAluminium>, <ore:wireGtSingleRedAlloy>, <ore:compressedAluminium>]
]);

// Spin Thruster
recipes.addShaped("gc_spin_thruster", <galacticraftcore:spin_thruster>, [
    [<ore:compressedTitanium>, <ore:compressedTitanium>, <ore:compressedTitanium>],
    [<metaitem:fluid_cell>, <ore:waferAdvanced>, <metaitem:fluid_cell>],
    [<galacticraftcore:engine>, <galacticraftcore:heavy_plating>, <galacticraftcore:engine>]
]);

// Display Screen
recipes.addShaped("gc_display_screen", <galacticraftcore:view_screen>, [
    [<ore:compressedSteel>, <ore:compressedSteel>, <ore:compressedSteel>],
    [<ore:waferBasic>, <metaitem:display>, <ore:waferBasic>],
    [<ore:compressedSteel>, <ore:compressedSteel>, <ore:compressedSteel>]
]);

// Telemetry Unit
recipes.addShaped("gc_telemetry_unit", <galacticraftcore:telemetry>, [
    [sensors[3], <ore:compressedTin>, emitters[3]],
    [<ore:waferBasic>, <ore:compressedTin>, <ore:waferBasic>],
    [<ore:compressedTin>, <ore:compressedCopper>, <ore:compressedTin>]
]);

// Terraformer
recipes.addShaped("gc_terraformer", <galacticraftplanets:mars_machine>, [
    [<ore:compressedTitanium>, <galacticraftcore:oxygen_concentrator>, <ore:compressedTitanium>],
    [<ore:compressedDesh>, <gregtech:turbine_casing:2>, <ore:compressedDesh>],
    [motors[3], <meta_tile_entity:devtech:super.tank.ulv>, pumps[3]]
]);

// Cryogenic Chamber
recipes.addShaped("gc_cryogenic_chamber", <galacticraftplanets:mars_machine:4>, [
    [<galacticraftplanets:item_basic_asteroids:5>, <gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "cryotheum", Amount: 1000}}), <galacticraftplanets:item_basic_asteroids:5>],
    [<galacticraftplanets:item_basic_mars:3>, <metaitem:memory_foam_block>, <galacticraftplanets:item_basic_mars:3>],
    [<galacticraftplanets:item_basic_asteroids:5>, <minecraft:clock>, <galacticraftplanets:item_basic_asteroids:5>]
]);

// Launch Controller
recipes.addShaped("gc_launch_controller", <galacticraftplanets:mars_machine:8>, [
    [<ore:waferAdvanced>, sensors[3], <ore:waferAdvanced>],
    [<ore:compressedDesh>, hulls[3], <ore:compressedDesh>],
    [<ore:cableGtDoubleAluminium>, <ore:compressedDesh>, <ore:cableGtDoubleAluminium>]
]);

// Astro Miner Base
recipes.addShaped("gc_astrominer_base", <galacticraftplanets:miner_base> * 4, [
    [<ore:compressedTitanium>, <galacticraftcore:steel_pole>, <ore:compressedTitanium>],
    [<galacticraftcore:steel_pole>, <ore:frameGtTungstenSteel>, <galacticraftcore:steel_pole>],
    [<ore:compressedDesh>, <galacticraftcore:steel_pole>, <ore:compressedDesh>]
]);

// Planetary Shield
recipes.addShaped("gs_planetary_shield", <galaxyspace:planet_shield>, [
    [<ore:compressedMeteoricIron>, emitters[3], <ore:compressedMeteoricIron>],
    [<ore:compressedTitanium>, field_generators[3], <ore:compressedTitanium>],
    [<galacticraftplanets:item_basic_asteroids:5>, <galacticraftplanets:item_basic_asteroids:5>, <galacticraftplanets:item_basic_asteroids:5>]
]);

// Gravity Module
recipes.addShaped("gs_gravity_module", <galaxyspace:gravitation_module>, [
    [<galaxyspace:compressed_plates:4>, <ore:craftingLensWhite>, <galaxyspace:compressed_plates:4>],
    [<ore:cableGtDoubleAluminium>, field_generators[3], <ore:cableGtDoubleAluminium>],
    [circuits[4], <ore:compressedTitanium>, circuits[4]]
]);