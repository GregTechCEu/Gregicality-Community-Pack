import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMap;
import mods.jei.JEI.removeAndHide;

val removals = [
    "galacticraftcore:steel_pole",
    "galacticraftcore:canvas",
    "galacticraftcore:oxygen_mask",
    "galacticraftcore:oxygen_gear",
    "galacticraftcore:parachute_0",
    "galacticraftcore:oxygen_tank_light_full",
    "galacticraftcore:oxygen_tank_light_full_1",
    "galacticraftcore:oxygen_tank_med_full",
    "galacticraftcore:oxygen_tank_med_full_1",
    "galacticraftcore:oxygen_tank_heavy_full",
    "galacticraftcore:oxygen_tank_heavy_full_1",
    "galacticraftplanets:orion_drive",
    "galaxyspace:rocket_modules",
    "galaxyspace:rocket_modules_1",
    "galaxyspace:rocket_modules_2",
    "galacticraftcore:air_vent",
    "galacticraftcore:oxygen_concentrator",
    "galacticraftcore:nose_cone",
    "galacticraftcore:rocket_fins",
    "galacticraftcore:engine_0",
    "galacticraftcore:engine_0_alt",
    "galacticraftcore:engine_1",
    "galacticraftplanets:heavy_nose_cone_0",
    "galacticraftplanets:item_basic_asteroids_1",
    "galacticraftplanets:item_basic_asteroids_1_alt",
    "galacticraftplanets:item_basic_asteroids_2",
    "galacticraftplanets:item_basic_asteroids_2_alt",
    "galacticraftcore:basic_item_20",
    "galacticraftplanets:item_basic_asteroids_8",
    "galacticraftcore:buggymat_1",
    "galaxyspace:oxygen_tank_4",
    "galaxyspace:oxygen_tank_5",
    "galaxyspace:oxygen_tank_6",
    "galaxyspace:gs_basic_3",
    "galaxyspace:upgrades_3",
    "galaxyspace:upgrades_2",
    "galaxyspace:upgrades",
    "galacticraftcore:buggymat_0",
    "galacticraftcore:buggymat_2",
    "galaxyspace:gs_basic_5",
    "galaxyspace:thermal_padding_t4",
    "galaxyspace:thermal_padding_t4_1",
    "galaxyspace:thermal_padding_t4_2",
    "galaxyspace:thermal_padding_t4_3"
] as string[];

for item in removals {
    recipes.removeByRecipeName(item);
}

val furnace_removals = [
    <galacticraftplanets:carbon_fragments>
] as IItemStack[];

for item in furnace_removals {
    furnace.remove(item);
}

val disables = [
    <galaxyspace:compressed_plates>,
    <galaxyspace:compressed_plates:2>,
    <galaxyspace:compressed_plates:3>,
    <galacticraftcore:standard_wrench>,
    <galacticraftcore:basic_item:13>,
    <galacticraftcore:basic_item:14>,
    <galacticraftcore:sensor_lens>,
    <galacticraftcore:buggy>,
    <galacticraftcore:buggy:1>,
    <galacticraftcore:buggy:2>,
    <galacticraftcore:basic_item>,
    <galacticraftcore:basic_item:1>,
    <galacticraftcore:basic_item:12>,
    <galacticraftcore:battery:100>,
    <galacticraftplanets:carbon_fragments>,
    <galacticraftplanets:item_basic_mars:1>,
    <galacticraftplanets:item_basic_mars:4>,
    <galacticraftplanets:item_basic_mars:6>,
    <galacticraftplanets:desh_pick>,
    <galacticraftplanets:desh_pick_slime>,
    <galacticraftplanets:desh_axe>,
    <galacticraftplanets:desh_hoe>,
    <galacticraftplanets:desh_spade>,
    <galacticraftplanets:desh_sword>,
    <galacticraftplanets:desh_helmet>,
    <galacticraftplanets:desh_chestplate>,
    <galacticraftplanets:desh_leggings>,
    <galacticraftplanets:desh_boots>,
    <galacticraftplanets:atmospheric_valve>,
    <galacticraftplanets:basic_item_venus:5>,
    <galacticraftplanets:atomic_battery>,
    <galaxyspace:gs_basic:1>,
    <galaxyspace:gs_basic:2>,
    <galaxyspace:rocket_modules:8>,
    <galaxyspace:rocket_modules:9>,
    <galaxyspace:rocket_modules:10>,
    <galaxyspace:advanced_battery:100>,
    <galaxyspace:modern_battery:100>,
    <galaxyspace:extra_battery:100>,
    <galaxyspace:ultimate_battery:100>,
    <galacticraftcore:canister:1>,
    <galacticraftcore:air_fan>,
    <galacticraftcore:oil_canister_partial:1001>,
    <galacticraftplanets:item_basic_asteroids:7>,
    <galacticraftplanets:thermal_padding>,
    <galacticraftplanets:thermal_padding:1>,
    <galacticraftplanets:thermal_padding:2>,
    <galacticraftplanets:thermal_padding:3>,
    <galacticraftplanets:thermal_padding_t2>,
    <galacticraftplanets:thermal_padding_t2:1>,
    <galacticraftplanets:thermal_padding_t2:2>,
    <galacticraftplanets:thermal_padding_t2:3>,
    <galacticraftplanets:basic_item_venus:3>,
    <galaxyspace:gs_basic:21>,
    <galaxyspace:thermal_padding_t3>,
    <galaxyspace:thermal_padding_t3:1>,
    <galaxyspace:thermal_padding_t3:2>,
    <galaxyspace:thermal_padding_t3:3>,
    <galaxyspace:gs_basic:31>,
    <galaxyspace:upgrades:1>
] as IItemStack[];

for item in disables {
    mods.jei.JEI.removeAndHide(item);
}

val heavy_duty_ingots = [
    <contenttweaker:heavy_duty_ingot_1>, 
    <contenttweaker:heavy_duty_ingot_2>, 
    <contenttweaker:heavy_duty_ingot_3>, 
    <contenttweaker:heavy_duty_ingot_4>, 
    <contenttweaker:heavy_duty_ingot_5>, 
    <contenttweaker:heavy_duty_ingot_6>
] as IItemStack[];

val heavy_duty_plates = [
    <galacticraftcore:heavy_plating>,
    <galacticraftplanets:item_basic_mars:3>,
    <galacticraftplanets:item_basic_asteroids:5>,
    <galaxyspace:hdp>,
    <galaxyspace:hdp:1>,
    <galaxyspace:hdp:2>
] as IItemStack[];

val secondary_plates = [
    <ore:plateStainlessSteel>, 
    <ore:plateTitanium>, 
    <ore:plateTungstenSteel>,
    <ore:plateOsmiridium>, 
    <ore:plateTritanium>, 
    <ore:plateNaquadria>
] as IIngredient[];

val recoverMaterials = [
    <ore:dustTinyStainlessSteel>, 
    <ore:dustTinyTitanium>, 
    <ore:dustTinyTungstenSteel>,
    <ore:dustTinyOsmiridium>, 
    <ore:dustTinyTritanium>, 
    <ore:dustTinyNaquadria>
] as IOreDictEntry[];

val singlePlates = [
    <ore:compressedAluminium>, 
    <ore:plateMeteoricIron>,
    <ore:plateDesh>,
    <ore:plateQuantium>,
    <ore:plateLedox>,
    <ore:gemExquisiteMysteriousCrystal>
] as IIngredient[];

function generate_heavy_duty_recipe (inputItems as IIngredient[], ingot as IItemStack, plate as IItemStack, secondary as IIngredient, recover as IOreDictEntry, tier as int) {

    assembler.recipeBuilder().duration(300).EUt(480 * pow(4, tier))
        .inputs(secondary * pow(2, tier))
        .inputs(inputItems)
        .circuit(1)
        .outputs(ingot)
        .buildAndRegister();

    implosion_compressor.recipeBuilder().duration(20).EUt(30)
        .property("explosives", <gtadditions:ga_explosive:5> * 16)
        .inputs(ingot)
        .outputs(recover.firstItem * pow(2, tier))
        .outputs(plate)
        .buildAndRegister();

    implosion_compressor.recipeBuilder().duration(20).EUt(30)
        .property("explosives", 8)
        .inputs(ingot)
        .outputs(recover.firstItem * pow(2, tier))
        .outputs(plate)
        .buildAndRegister();

    implosion_compressor.recipeBuilder().duration(20).EUt(30)
        .property("explosives", <metaitem:dynamite> * 4)
        .inputs(ingot)
        .outputs(recover.firstItem * pow(2, tier))
        .outputs(plate)
        .buildAndRegister();

    implosion_compressor.recipeBuilder().duration(20).EUt(30)
        .property("explosives", <gtadditions:ga_explosive:4> * 2)
        .inputs(ingot)
        .outputs(recover.firstItem * pow(2, tier))
        .outputs(plate)
        .buildAndRegister();

}

// Heavy Duty Plates
generate_heavy_duty_recipe([singlePlates[0], <ore:compressedBronze>, <ore:compressedSteel>], heavy_duty_ingots[0], heavy_duty_plates[0], secondary_plates[0], recoverMaterials[0], 0);

for i in 1 to singlePlates.length {
    generate_heavy_duty_recipe([singlePlates[i] * pow(2, i), heavy_duty_plates[i - 1]], heavy_duty_ingots[i], heavy_duty_plates[i], secondary_plates[i], recoverMaterials[i], i);
}

function generate_compressed_recipe (input as IIngredient, output as IOreDictEntry) {
    implosion_compressor.recipeBuilder().duration(20).EUt(30)
        .property("explosives", <gtadditions:ga_explosive:5> * 4)
        .inputs(input)
        .outputs(output.firstItem)
        .buildAndRegister();

    implosion_compressor.recipeBuilder().duration(20).EUt(30)
        .property("explosives", 2)
        .inputs(input)
        .outputs(output.firstItem)
        .buildAndRegister();

    implosion_compressor.recipeBuilder().duration(20).EUt(30)
        .property("explosives", <metaitem:dynamite> * 2)
        .inputs(input)
        .outputs(output.firstItem)
        .buildAndRegister();

    implosion_compressor.recipeBuilder().duration(20).EUt(30)
        .property("explosives", <gtadditions:ga_explosive:4> * 2)
        .inputs(input)
        .outputs(output.firstItem)
        .buildAndRegister();
}

val double_plates = [
    <ore:plateDoubleMeteoricIron>, 
    <ore:plateDoubleDesh>, 
    <ore:plateDoubleCopper>, 
    <ore:plateDoubleTin>, 
    <ore:plateDoubleAluminium>, 
    <ore:plateDoubleSteel>, 
    <ore:plateDoubleBronze>, 
    <ore:plateDoubleIron>, 
    <ore:plateDoubleTitanium>,
    <ore:plateDoubleQuantium>,
    <ore:plateDoubleLedox>
] as IIngredient[];

val compressed_plates = [
    <ore:compressedMeteoricIron>, 
    <ore:compressedDesh>, 
    <ore:compressedCopper>, 
    <ore:compressedTin>, 
    <ore:compressedAluminium>, 
    <ore:compressedSteel>, 
    <ore:compressedBronze>, 
    <ore:compressedIron>, 
    <ore:compressedTitanium>, // item being registered late?
    <ore:compressedQuantium>,
    <ore:compressedLedox>
] as IOreDictEntry[];

// Compressed Plates
for i in 0 to double_plates.length{
    generate_compressed_recipe(double_plates[i] * 2, compressed_plates[i]);
}

// Raw SDHC-120 Alloy
forming_press.recipeBuilder().duration(200).EUt(256)
    .inputs(<ore:compressedAluminium> * 2)
    .inputs(<ore:compressedBronze> * 2)
    .inputs(<ore:compressedSteel>)
    .inputs(<ore:boltStainlessSteel> * 2)
    .outputs(<contenttweaker:raw_sdhc_alloy>)
    .buildAndRegister();

// SDHC-120 Alloy
implosion_compressor.recipeBuilder().duration(20).EUt(30)
    .property("explosives", <gtadditions:ga_explosive:5> * 20)
    .inputs(<contenttweaker:raw_sdhc_alloy>)
    .outputs(<galaxyspace:compressed_plates:4>)
    .buildAndRegister();

implosion_compressor.recipeBuilder().duration(20).EUt(30)
    .property("explosives", 10)
    .inputs(<contenttweaker:raw_sdhc_alloy>)
    .outputs(<galaxyspace:compressed_plates:4>)
    .buildAndRegister();

implosion_compressor.recipeBuilder().duration(20).EUt(30)
    .property("explosives", <metaitem:dynamite> * 5)
    .inputs(<contenttweaker:raw_sdhc_alloy>)
    .outputs(<galaxyspace:compressed_plates:4>)
    .buildAndRegister();

implosion_compressor.recipeBuilder().duration(20).EUt(30)
    .property("explosives", <gtadditions:ga_explosive:4> * 2)
    .inputs(<contenttweaker:raw_sdhc_alloy>)
    .outputs(<galaxyspace:compressed_plates:4>)
    .buildAndRegister();

// Oxygen Vent
recipes.addShaped("gc_oxygen_vent", <galacticraftcore:air_vent>, [
    [<enderio:block_dark_iron_bars>, <ore:compressedTin>, <enderio:block_dark_iron_bars>],
    [<ore:compressedTin>, <ore:compressedSteel>, <ore:compressedTin>],
    [<enderio:block_dark_iron_bars>, <ore:compressedTin>, <enderio:block_dark_iron_bars>]
]);

// Oxygen Concentrator
recipes.addShaped("gc_oxygen_concentrator", <galacticraftcore:oxygen_concentrator>, [
    [<ore:compressedSteel>, <ore:compressedTin>, <ore:compressedSteel>],
    [<ore:compressedTin>, <metaitem:fluid_cell>, <ore:compressedTin>],
    [<ore:compressedSteel>, <galacticraftcore:air_vent>, <ore:compressedSteel>]
]);

// Steel Pole
extruder.recipeBuilder().duration(600).EUt(30)
    .inputs(<ore:compressedSteel> * 2)
    .notConsumable(<metaitem:shape.extruder.rod>)
    .outputs(<galacticraftcore:steel_pole>)
    .buildAndRegister();

// Canvas
recipes.addShaped("gc_canvas", <galacticraftcore:canvas>, [
   [<ore:gregWireCutters>, <ore:wool>, <ore:stickPlastic>],
   [<ore:wool>, <ore:stickPlastic>, <ore:wool>],
   [<ore:stickPlastic>, <ore:wool>, <ore:gregBlades>]
]);

// Beam Core
recipes.addShaped("gc_beam_core", <galacticraftplanets:item_basic_asteroids:8>, [
   [null, <ore:gregSaws>, <ore:craftingLensLime>],
   [<ore:foilPlastic>, <ore:ringPlastic>, <ore:foilPlastic>],
   [<ore:craftingLensRed>, <ore:gregFiles>, null]
]);

// Buggy Seat
recipes.addShaped("gc_buggy_seat", <galacticraftcore:buggymat:1>, [
    [null, <ore:foilPolycaprolactam>, <ore:compressedSteel>],
    [<ore:foilPolycaprolactam>, <ore:platePolycaprolactam>, <ore:compressedSteel>],
    [<ore:compressedSteel>, <ore:compressedSteel>, <ore:compressedSteel>]
]);

// Ambient Thermal Controller
recipes.addShaped("gc_ambient_thermal_controller", <galacticraftcore:basic_item:20>, [
    [circuits[3], <galacticraftcore:air_vent>, circuits[3]],
    [<ore:compressedBronze>, <ore:compressedSteel>, <ore:compressedBronze>],
    [<ore:compressedAluminium>, circuits[3], <ore:compressedAluminium>]
]);

// Blank Module
recipes.addShaped("gs_blank_module", <galaxyspace:gs_basic:11>, [
    [<ore:stickLongSteel>, <ore:plateVanadiumSteel>, <ore:stickLongSteel>],
    [<ore:plateVanadiumSteel>, <ore:compressedBronze>, <ore:plateVanadiumSteel>],
    [<ore:plateVanadiumSteel>, <ore:plateVanadiumSteel>, <ore:plateVanadiumSteel>]
]);

// Energy Module
recipes.addShaped("gs_energy_module", <galaxyspace:upgrades:3>, [
    [null, <ore:wireGtSingleRedAlloy>, null],
    [<metaitem:plate.power_integrated_circuit>, <galaxyspace:gs_basic:11>, <metaitem:plate.power_integrated_circuit>],
    [null, circuits[1], null]
]);

// Speed Module
recipes.addShaped("gs_speed_module", <galaxyspace:upgrades:2>, [
    [null, <ore:wireGtSingleRedAlloy>, null],
    [motors[1], <galaxyspace:gs_basic:11>, motors[1]],
    [null, circuits[1], null]
]);

// Expander Module
recipes.addShaped("gs_expander_module", <galaxyspace:upgrades>, [
    [null, <ore:wireGtSingleRedAlloy>, null],
    [emitters[1], <galaxyspace:gs_basic:11>, emitters[1]],
    [null, circuits[1], null]
]);



// Space Gear

// Oxygen Mask
assembler.recipeBuilder().duration(1200).EUt(30)
    .inputs(<ore:plateGlass> * 16)
    .inputs(<ore:foilPolycaprolactam> * 4)
    .fluidInputs(<liquid:rubber> * 288)
    .outputs(<galacticraftcore:oxygen_mask>)
    .buildAndRegister();

// Oxygen Gear
recipes.addShaped("gc_oxygen_gear", <galacticraftcore:oxygen_gear>, [
   [<galacticraftcore:fluid_pipe>, <galacticraftcore:fluid_pipe>, <galacticraftcore:fluid_pipe>],
   [pumps[3], <galacticraftcore:oxygen_concentrator>, pumps[3]],
   [<galacticraftcore:fluid_pipe>, motors[3], <galacticraftcore:fluid_pipe>]
]);

// Parachute
assembler.recipeBuilder().duration(1200).EUt(30)
    .inputs(<galacticraftcore:canvas> * 5)
    .inputs(<ore:wireFineSteel> * 8)
    .outputs(<galacticraftcore:parachute>)
    .buildAndRegister();

// Frequency Module
recipes.addShaped("gc_frequency_module", <galacticraftcore:basic_item:19>, [
    [<ore:compressedAluminium>, sensors[3], <ore:compressedAluminium>],
    [circuits[0], <metaitem:display>, circuits[0]],
    [<ore:compressedTin>, <metaitem:battery.hull.lv>, <ore:compressedTin>]
]);

// Light Oxygen Tank
recipes.addShaped("gc_oxygen_tank_light", <galacticraftcore:oxygen_tank_light_full:900>, [
    [<ore:compressedAluminium>, <galacticraftcore:fluid_pipe>, <ore:compressedAluminium>],
    [<ore:compressedAluminium>, <metaitem:fluid_cell>, <ore:compressedAluminium>],
    [<ore:compressedAluminium>, <ore:compressedAluminium>, <ore:compressedAluminium>]
]);

// Medium Oxygen Tank
recipes.addShaped("gc_oxygen_tank_medium", <galacticraftcore:oxygen_tank_med_full:1800>, [
    [<ore:compressedMeteoricIron>, <galacticraftcore:fluid_pipe>, <ore:compressedMeteoricIron>],
    [<ore:compressedMeteoricIron>, <metaitem:large_fluid_cell.steel>, <ore:compressedMeteoricIron>],
    [<ore:compressedMeteoricIron>, <ore:compressedMeteoricIron>, <ore:compressedMeteoricIron>]
]);

// Heavy Oxygen Tank
recipes.addShaped("gc_oxygen_tank_heavy", <galacticraftcore:oxygen_tank_heavy_full:2700>, [
    [<ore:compressedDesh>, <galacticraftcore:fluid_pipe>, <ore:compressedDesh>],
    [<ore:compressedDesh>, <metaitem:large_fluid_cell.tungstensteel>, <ore:compressedDesh>],
    [<ore:compressedDesh>, <ore:compressedDesh>, <ore:compressedDesh>]
]);

// Super Oxygen Tank
recipes.addShaped("gs_oxygen_tank_super", <galaxyspace:oxygen_tank_4:3500>, [
    [<ore:compressedTitanium>, <galacticraftcore:fluid_pipe>, <ore:compressedTitanium>],
    [<ore:compressedTitanium>, <ore:plateIridium>, <ore:compressedTitanium>],
    [<ore:compressedTitanium>, <ore:compressedTitanium>, <ore:compressedTitanium>]
]);

// Supreme Oxygen Tank
recipes.addShaped("gs_oxygen_tank_supreme", <galaxyspace:oxygen_tank_5:4000>, [
    [<ore:compressedQuantium>, <galacticraftcore:fluid_pipe>, <ore:compressedQuantium>],
    [<ore:compressedQuantium>, <ore:plateRhodiumPlatedPalladium>, <ore:compressedQuantium>],
    [<ore:compressedQuantium>, <ore:compressedQuantium>, <ore:compressedQuantium>]
]);

// Omgea Oxygen Tank
recipes.addShaped("gs_oxygen_tank_omega", <galaxyspace:oxygen_tank_6:4500>, [
    [<ore:compressedLedox>, <galacticraftcore:fluid_pipe>, <ore:compressedLedox>],
    [<ore:compressedLedox>, <ore:plateNaquadah>, <ore:compressedLedox>],
    [<ore:compressedLedox>, <ore:compressedLedox>, <ore:compressedLedox>]
]);

// Thermal Cloth
assembler.recipeBuilder().duration(300).EUt(480)
    .inputs(<ore:blockWool>)
    .inputs(<ore:wireFineMeteoricIron> * 8)
    .inputs(<ore:foilAluminium> * 8)
    .fluidInputs([<liquid:polystyrene> * 144])
    .outputs(<galaxyspace:gs_basic:22>)
    .buildAndRegister();

// Thermal Padding Gear Tier 4
assembler.recipeBuilder().duration(600).EUt(1024)
    .inputs(<galacticraftplanets:item_basic_asteroids:7> * 4)
    .inputs(<ore:wireFineMeteoricIron> * 4)
    .fluidInputs([<liquid:polystyrene> * 576])
    .outputs(<galaxyspace:thermal_padding_t4:3>)
    .buildAndRegister();

assembler.recipeBuilder().duration(750).EUt(1024)
    .inputs(<galacticraftplanets:item_basic_asteroids:7> * 5)
    .inputs(<ore:wireFineMeteoricIron> * 5)
    .fluidInputs([<liquid:polystyrene> * 720])
    .outputs(<galaxyspace:thermal_padding_t4>)
    .buildAndRegister();

assembler.recipeBuilder().duration(300).EUt(1024)
    .inputs(<galacticraftplanets:item_basic_asteroids:7> * 7)
    .inputs(<ore:wireFineMeteoricIron> * 7)
    .fluidInputs([<liquid:polystyrene> * 1008])
    .outputs(<galaxyspace:thermal_padding_t4:2>)
    .buildAndRegister();

assembler.recipeBuilder().duration(300).EUt(1024)
    .inputs(<galacticraftplanets:item_basic_asteroids:7> * 8)
    .inputs(<ore:wireFineMeteoricIron> * 8)
    .fluidInputs([<liquid:polystyrene> * 1152])
    .outputs(<galaxyspace:thermal_padding_t4:1>)
    .buildAndRegister();

// Shield Controller
recipes.addShaped("gc_shield_controller", <galacticraftplanets:basic_item_venus>, [
    [<ore:compressedTitanium>, <ore:compressedTitanium>, <ore:compressedTitanium>],
    [<ore:compressedTitanium>, field_generators[2], <ore:compressedTitanium>],
    [<ore:compressedTitanium>, <ore:compressedTitanium>, <ore:compressedTitanium>]
]);

// Space Suit
recipes.addShaped("gs_space_helmet", <galaxyspace:space_suit_head:200>, [
    [null, <metaitem:battery.hull.mv>, null],
    [<metaitem:carbon.plate>, <metaitem:carbon.plate>, <metaitem:carbon.plate>],
    [<metaitem:carbon.plate>, circuits[1], <metaitem:carbon.plate>]
]);

recipes.addShaped("gs_space_chestplate", <galaxyspace:space_suit_chest:200>, [
    [<metaitem:carbon.plate>, <metaitem:battery.hull.mv>, <metaitem:carbon.plate>],
    [<metaitem:carbon.plate>, <metaitem:carbon.plate>, <metaitem:carbon.plate>],
    [<metaitem:carbon.plate>, circuits[1], <metaitem:carbon.plate>]
]);

recipes.addShaped("gs_space_leggings", <galaxyspace:space_suit_legs:200>, [
    [<metaitem:carbon.plate>, <metaitem:battery.hull.mv>, <metaitem:carbon.plate>],
    [<metaitem:carbon.plate>, null, <metaitem:carbon.plate>],
    [<metaitem:carbon.plate>, circuits[1], <metaitem:carbon.plate>]
]);

recipes.addShaped("gs_space_boots", <galaxyspace:space_suit_feet:200>, [
    [<metaitem:carbon.plate>, <metaitem:battery.hull.mv>, <metaitem:carbon.plate>],
    [<metaitem:carbon.plate>, circuits[1], <metaitem:carbon.plate>]
]);



// Rockets

// Tier 1 Rocket
rocket_assembler.recipeBuilder().duration(1200).EUt(480)
    .inputs(<galacticraftcore:nose_cone>)           // t1 nose cone
    .inputs(<galaxyspace:compressed_plates:4> * 4)  // sdhc
    .inputs(heavy_duty_plates[0] * 8)               // t1 plates
    .inputs(<galacticraftcore:rocket_fins> * 4)     // t1 fins
    .inputs(<galacticraftcore:engine>)              // t1 engine
    .inputs(<galaxyspace:rocket_modules:3>)         // t1 fuel canister
    .inputs(<galaxyspace:rocket_modules>)           // t1 lander
    .notConsumable(<metaitem:schematic>)            // schematic
    .outputs(<galacticraftcore:rocket_t1:3>)
    .buildAndRegister();

// Tier 1 Lander
recipes.addShaped("gs_lander_t1", <galaxyspace:rocket_modules>, [
    [<galacticraftcore:basic_item:19>, <ore:compressedSteel>, <ore:compressedSteel>],
    [<ore:compressedSteel>, <galacticraftcore:buggymat:1>, <ore:compressedBronze>],
    [<galacticraftcore:steel_pole>, <galacticraftcore:engine>, <galacticraftcore:steel_pole>]
]);

// Tier 1 Rocket Engine
recipes.addShaped("gc_rocket_engine_t1", <galacticraftcore:engine>, [
    [<galaxyspace:compressed_plates:4>, pistons[3], <galaxyspace:compressed_plates:4>],
    [heavy_duty_plates[0], <gregtech:boiler_firebox_casing:1>, heavy_duty_plates[0]],
    [heavy_duty_plates[0], <ore:ringStainlessSteel>, heavy_duty_plates[0]]
]);

// Tier 1 Nose Cone
recipes.addShaped("gc_nose_cone_t1", <galacticraftcore:nose_cone>, [
    [<ore:gregScrewDrivers>, heavy_duty_plates[0], <ore:gregHardHammers>],
    [<ore:screwStainlessSteel>, sensors[3], <ore:screwStainlessSteel>],
    [heavy_duty_plates[0], circuits[3], heavy_duty_plates[0]]
]);

// Tier 1 Rocket Fins
recipes.addShaped("gc_rocket_fins_t1", <galacticraftcore:rocket_fins>, [
    [<ore:gregHardHammers>, <ore:compressedSteel>, <ore:gregFiles>],
    [heavy_duty_plates[0], <ore:compressedSteel>, heavy_duty_plates[0]],
    [heavy_duty_plates[0], <galaxyspace:compressed_plates:4>, heavy_duty_plates[0]]
]);

// Blank Fuel Canister
recipes.addShaped("gs_blank_fuel_canister", <galaxyspace:gs_basic>, [
    [<ore:compressedSteel>, <ore:ringSteel>, <ore:compressedSteel>],
    [<ore:compressedSteel>, <metaitem:fluid_cell>, <ore:compressedSteel>],
    [<ore:compressedSteel>, <ore:ringSteel>, <ore:compressedSteel>]
]);

// Tier 1 Fuel Canister
recipes.addShaped("gs_fuel_canister_t1", <galaxyspace:rocket_modules:3>, [
    [<ore:screwStainlessSteel>, <ore:gregScrewDrivers>, <ore:screwStainlessSteel>],
    [<ore:compressedBronze>, <galaxyspace:gs_basic>, <ore:compressedAluminium>],
    [<ore:screwStainlessSteel>, <ore:gregHardHammers>, <ore:screwStainlessSteel>]
]);




// Tier 2 Rocket
rocket_assembler.recipeBuilder().duration(1200).EUt(1920)
    .inputs(<galacticraftcore:nose_cone>)           // t1 nose cone
    .inputs(heavy_duty_plates[0] * 2)               // t1 plates
    .inputs(heavy_duty_plates[1] * 10)              // t2 plates
    .inputs(<galacticraftcore:rocket_fins> * 4)     // t1 fins
    .inputs(<galacticraftcore:engine:1> * 2)        // t2 booster
    .inputs(<galacticraftcore:engine> * 2)          // t1 engine
    .inputs(<galaxyspace:rocket_modules:3> * 2)     // t1 fuel canister
    .inputs(<galaxyspace:rocket_modules:1>)         // t2 lander
    .notConsumable(<metaitem:schematic>)            // schamtic
    .outputs(<galacticraftplanets:rocket_t2:3>)
    .buildAndRegister();

// Tier 2 Lander 
recipes.addShaped("gs_lander_t2", <galaxyspace:rocket_modules:1>, [
    [<ore:foilRoseGold>, <galacticraftcore:canvas>, <ore:foilRoseGold>],
    [<galacticraftcore:canvas>, <galaxyspace:rocket_modules>, <galacticraftcore:canvas>],
    [<ore:foilRoseGold>, <galacticraftcore:canvas>, <ore:foilRoseGold>]
]);

// Tier 2 Rocket Booster
recipes.addShaped("gc_rocket_booster_t2", <galacticraftcore:engine:1>, [
    [<ore:compressedMeteoricIron>, <ore:compressedMeteoricIron>, <ore:compressedMeteoricIron>],
    [heavy_duty_plates[0], <metaitem:large_fluid_cell.steel>, heavy_duty_plates[0]],
    [heavy_duty_plates[0], <galacticraftcore:air_vent>, heavy_duty_plates[0]]
]);



// Tier 3 Rocket
rocket_assembler.recipeBuilder().duration(1200).EUt(7680)
    .inputs(<galacticraftplanets:heavy_nose_cone>)              // t3 nose cone
    .inputs(heavy_duty_plates[1] * 2)                           // t1 plates
    .inputs(heavy_duty_plates[2] * 12)                          // t2 plates
    .inputs(<galacticraftplanets:item_basic_asteroids:2> * 4)   // t3 fins
    .inputs(<galacticraftcore:engine:1> * 2)                    // t2 booster
    .inputs(<galacticraftplanets:item_basic_asteroids:1>)       // t3 engine
    .inputs(<contenttweaker:fuel_canister_t3> * 2)              // t3 fuel canister
    .inputs(<galaxyspace:rocket_modules:2>)                     // t3 lander
    .notConsumable(<metaitem:schematic>)                        // schematic
    .outputs(<galacticraftplanets:rocket_t3:3>)
    .buildAndRegister();

// Tier 3 Lander
recipes.addShaped("gs_lander_t3", <galaxyspace:rocket_modules:2>, [
    [<ore:compressedDesh>, <ore:compressedDesh>, <ore:compressedDesh>],
    [<galacticraftcore:steel_pole>, <galaxyspace:rocket_modules:1>, <galacticraftcore:steel_pole>],
    [<ore:compressedDesh>, <ore:compressedDesh>, <ore:compressedDesh>]
]);

// Tier 3 Rocket Engine
recipes.addShaped("gc_rocket_engine_t3", <galacticraftplanets:item_basic_asteroids:1>, [
    [heavy_duty_plates[2], pistons[5], heavy_duty_plates[2]],
    [heavy_duty_plates[2], <galacticraftcore:engine>, heavy_duty_plates[2]],
    [<galacticraftcore:engine:1>, <ore:ringTungstenSteel>, <galacticraftcore:engine:1>]
]);

// Tier 3 Nose Cone
recipes.addShaped("gc_nose_cone_t3", <galacticraftplanets:heavy_nose_cone>, [
    [<ore:gregScrewDrivers>, <galacticraftcore:nose_cone>, <ore:gregHardHammers>],
    [<ore:screwTitanium>, heavy_duty_plates[2], <ore:screwTitanium>],
    [heavy_duty_plates[2], heavy_duty_plates[2], heavy_duty_plates[2]]
]);

// Tier 3 Rocket Fins
recipes.addShaped("gc_rocket_fins_t3", <galacticraftplanets:item_basic_asteroids:2>, [
    [<ore:gregHardHammers>, heavy_duty_plates[1], <ore:gregFiles>],
    [heavy_duty_plates[2], heavy_duty_plates[1], heavy_duty_plates[2]],
    [heavy_duty_plates[2], <ore:plateDoubleTungstenCarbide>, heavy_duty_plates[2]]
]);

// Tier 3 Fuel Canister
recipes.addShaped("gs_fuel_canister_t3", <contenttweaker:fuel_canister_t3>, [
    [<ore:screwTitanium>, <ore:gregScrewDrivers>, <ore:screwTitanium>],
    [<ore:compressedTitanium>, <galaxyspace:rocket_modules:3>, <ore:compressedDesh>],
    [<ore:screwTitanium>, <ore:gregHardHammers>, <ore:screwTitanium>]
]);



// Tier 4 Rocket
rocket_assembler.recipeBuilder().duration(1200).EUt(30720)
    .inputs(<galaxyspace:rocket_parts:5>)                   // t4 nose cone
    .inputs(heavy_duty_plates[2] * 4)                       // t3 plates
    .inputs(heavy_duty_plates[3] * 12)                      // t4 plates
    .inputs(<galaxyspace:rocket_parts:9> * 2)               // t4 fins
    .inputs(<galaxyspace:rocket_parts:8> * 2)               // t4 booster
    .inputs(<galaxyspace:rocket_parts:7>)                   // t4 engine
    .inputs(<contenttweaker:fuel_canister_t3> * 4)          // t3 fuel canister
    .inputs(<galaxyspace:rocket_modules:2>)                 // t3 lander
    .notConsumable(<metaitem:schematic>)                    // schematic
    .outputs(<galaxyspace:rocket_tier_4:3>)
    .buildAndRegister();

// Tier 4 Rocket Engine
recipes.addShaped("gc_rocket_engine_t4", <galaxyspace:rocket_parts:7>, [
    [heavy_duty_plates[3], pistons[6], heavy_duty_plates[3]],
    [heavy_duty_plates[3], <galacticraftplanets:item_basic_asteroids:1>, heavy_duty_plates[3]],
    [<galaxyspace:rocket_parts:8>, <ore:ringHsse>, <galaxyspace:rocket_parts:8>]
]);

// Tier 4 Nose Cone
recipes.addShaped("gc_nose_cone_t4", <galaxyspace:rocket_parts:5>, [
    [<ore:gregScrewDrivers>, <galacticraftplanets:heavy_nose_cone>, <ore:gregHardHammers>],
    [<ore:screwIncoloyMa>, heavy_duty_plates[3], <ore:screwIncoloyMa>],
    [heavy_duty_plates[3], heavy_duty_plates[3], heavy_duty_plates[3]]
]);

// Tier 4 Rocket Fins
recipes.addShaped("gc_rocket_fins_t4", <galaxyspace:rocket_parts:9>, [
    [<ore:gregHardHammers>, heavy_duty_plates[2], <ore:gregFiles>],
    [heavy_duty_plates[3], heavy_duty_plates[2], heavy_duty_plates[3]],
    [heavy_duty_plates[3], <metaitem:plate.iridium_alloy>, heavy_duty_plates[3]]
]);

// Tier 4 Rocket Booster
recipes.addShaped("gc_rocket_booster_t4", <galaxyspace:rocket_parts:8>, [
    [<ore:plateDoubleIncoloyMa>, <ore:plateDoubleIncoloyMa>, <ore:plateDoubleIncoloyMa>],
    [heavy_duty_plates[3], <galacticraftcore:engine:1>, heavy_duty_plates[3]],
    [heavy_duty_plates[3], <ore:plateOriharukon>, heavy_duty_plates[3]]
]);



// Tier 5 Rocket
rocket_assembler.recipeBuilder().duration(1200).EUt(122880)
    .inputs(<galaxyspace:rocket_parts:10>)                  // t5 nose cone
    .inputs(heavy_duty_plates[3] * 4)                       // t4 plates
    .inputs(heavy_duty_plates[4] * 12)                      // t5 plates
    .inputs(<galaxyspace:rocket_parts:14> * 6)              // t5 fins
    .inputs(<galaxyspace:rocket_parts:13> * 8)              // t5 booster
    .inputs(<galaxyspace:rocket_parts:12>)                  // t5 engine
    .inputs(<contenttweaker:fuel_canister_t5> * 4)          // t5 fuel canister
    .inputs(<galaxyspace:rocket_modules:2>)                 // t3 lander
    .notConsumable(<metaitem:schematic>)                    // schematic
    .outputs(<galaxyspace:rocket_tier_5:3>)
    .buildAndRegister();

// Tier 5 Rocket Engine
recipes.addShaped("gc_rocket_engine_t5", <galaxyspace:rocket_parts:12>, [
    [heavy_duty_plates[4], pistons[7], heavy_duty_plates[4]],
    [heavy_duty_plates[4], <galaxyspace:rocket_parts:7>, heavy_duty_plates[4]],
    [<galaxyspace:rocket_parts:13>, <ore:ringDuranium>, <galaxyspace:rocket_parts:13>]
]);

// Tier 5 Nose Cone
recipes.addShaped("gc_nose_cone_t5", <galaxyspace:rocket_parts:10>, [
    [<ore:gregScrewDrivers>, <galaxyspace:rocket_parts:5>, <ore:gregHardHammers>],
    [<ore:screwNaquadahEnriched>, heavy_duty_plates[4], <ore:screwNaquadahEnriched>],
    [heavy_duty_plates[4], heavy_duty_plates[4], heavy_duty_plates[4]]
]);

// Tier 5 Rocket Fins
recipes.addShaped("gc_rocket_fins_t5", <galaxyspace:rocket_parts:14>, [
    [<ore:gregHardHammers>, heavy_duty_plates[3], <ore:gregFiles>],
    [heavy_duty_plates[4], heavy_duty_plates[3], heavy_duty_plates[4]],
    [heavy_duty_plates[4], <ore:plateDenseInconelB>, heavy_duty_plates[4]]
]);

// Tier 5 Rocket Booster
recipes.addShaped("gc_rocket_booster_t5", <galaxyspace:rocket_parts:13>, [
    [<ore:plateDoubleNaquadahAlloy>, <ore:plateDoubleNaquadahAlloy>, <ore:plateDoubleNaquadahAlloy>],
    [heavy_duty_plates[4], <galaxyspace:rocket_parts:8>, heavy_duty_plates[4]],
    [heavy_duty_plates[4], <ore:plateDoubleZeron>, heavy_duty_plates[4]]
]);

// Tier 5 Fuel Canister
recipes.addShaped("gs_fuel_canister_t5", <contenttweaker:fuel_canister_t5>, [
    [<ore:screwTitanium>, <ore:gregScrewDrivers>, <ore:screwTitanium>],
    [<ore:compressedLedox>, <contenttweaker:fuel_canister_t3>, <ore:compressedQuantium>],
    [<ore:screwTitanium>, <ore:gregHardHammers>, <ore:screwTitanium>]
]);



// Tier 6 Rocket
rocket_assembler.recipeBuilder().duration(1200).EUt(491520)
    .inputs(<galaxyspace:rocket_parts:15>)                  // t6 nose cone
    .inputs(heavy_duty_plates[4] * 4)                       // t5 plates
    .inputs(heavy_duty_plates[5] * 12)                      // t6 plates
    .inputs(<galaxyspace:rocket_parts:19> * 8)              // t6 fins
    .inputs(<galaxyspace:rocket_parts:18> * 8)              // t6 booster
    .inputs(<galaxyspace:rocket_parts:17>)                  // t6 engine
    .inputs(<contenttweaker:fuel_canister_t5> * 4)          // t5 fuel canister
    .inputs(<galaxyspace:rocket_modules:2>)                 // t3 lander
    .notConsumable(<metaitem:schematic>)                    // schematic
    .outputs(<galaxyspace:rocket_tier_6:3>)
    .buildAndRegister();

// Tier 6 Rocket Engine
recipes.addShaped("gc_rocket_engine_t6", <galaxyspace:rocket_parts:17>, [
    [heavy_duty_plates[5], pistons[8], heavy_duty_plates[5]],
    [heavy_duty_plates[5], <galaxyspace:rocket_parts:12>, heavy_duty_plates[5]],
    [<galaxyspace:rocket_parts:18>, <ore:ringTritanium>, <galaxyspace:rocket_parts:18>]
]);

// Tier 6 Nose Cone
recipes.addShaped("gc_nose_cone_t6", <galaxyspace:rocket_parts:15>, [
    [<ore:gregScrewDrivers>, <galaxyspace:rocket_parts:10>, <ore:gregHardHammers>],
    [<ore:screwSeaborgium>, heavy_duty_plates[5], <ore:screwSeaborgium>],
    [heavy_duty_plates[5], heavy_duty_plates[5], heavy_duty_plates[5]]
]);

// Tier 6 Rocket Fins
recipes.addShaped("gc_rocket_fins_t6", <galaxyspace:rocket_parts:19>, [
    [<ore:gregHardHammers>, heavy_duty_plates[4], <ore:gregFiles>],
    [heavy_duty_plates[5], heavy_duty_plates[4], heavy_duty_plates[5]],
    [heavy_duty_plates[5], <ore:plateDenseTungstenTitaniumCarbide>, heavy_duty_plates[5]]
]);

// Tier 6 Rocket Booster
recipes.addShaped("gc_rocket_booster_t6", <galaxyspace:rocket_parts:18>, [
    [<ore:plateTantalumHafniumSeaborgiumCarbide>, <ore:plateTantalumHafniumSeaborgiumCarbide>, <ore:plateTantalumHafniumSeaborgiumCarbide>],
    [heavy_duty_plates[5], <galaxyspace:rocket_parts:13>, heavy_duty_plates[5]],
    [heavy_duty_plates[5], <ore:plateDoubleRhenium>, heavy_duty_plates[5]]
]);



// Buggy

// Buggy Wheel
recipes.addShaped("gc_buggy_wheel", <galacticraftcore:buggymat>, [
   [<ore:stickSteel>, <ore:plateStyreneButadieneRubber>, <ore:stickSteel>],
   [<ore:plateStyreneButadieneRubber>, <ore:compressedSteel>, <ore:plateStyreneButadieneRubber>],
   [<ore:stickSteel>, <ore:plateStyreneButadieneRubber>, <ore:stickSteel>]
]);

// Buggy Storage Box
recipes.addShaped("gc_buggy_storage_box", <galacticraftcore:buggymat:2>, [
    [<ore:plateRubber>, <ore:plateRubber>, <ore:plateRubber>],
    [<ore:plateSteel>, <meta_tile_entity:gregtech:steel_chest>, <ore:plateSteel>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]
]);



// Astro Miner
rocket_assembler.recipeBuilder().duration(1200).EUt(480)
    .inputs(<galacticraftcore:heavy_plating> * 16)           // t1 plates
    .inputs(<galacticraftplanets:item_basic_asteroids:8>)   // beam core
    .inputs(<galacticraftplanets:orion_drive>)              // orion drive
    .inputs(<meta_tile_entity:devtech:super.chest.ulv>)     // super chest I
    .inputs(<galacticraftcore:engine>)                      // t1 engine
    .notConsumable(<metaitem:schematic>)                    // schematic
    .outputs(<galacticraftplanets:astro_miner>)
    .buildAndRegister();

// Orion Drive
recipes.addShaped("gc_orion_drive", <galacticraftplanets:orion_drive>, [
    [<ore:compressedTitanium>, <galacticraftplanets:item_basic_asteroids:8>, <ore:compressedTitanium>],
    [circuits[6], <ore:frameGtRedSteel>, circuits[6]],
    [<ore:compressedSteel>, <galacticraftplanets:item_basic_asteroids:8>, <ore:compressedSteel>]
]);