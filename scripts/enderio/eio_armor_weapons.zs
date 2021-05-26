import crafttweaker.item.IIngredient;

// Probe Upgrade
mods.jei.JEI.hide(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:top"}));


val base = <enderio:item_dark_steel_upgrade> as IIngredient;

// Base
recipes.addShaped("eio_base_upgrade", <enderio:item_dark_steel_upgrade>, [[<ore:screwDarkSteel>, <ore:plateDarkSteel>, <ore:screwDarkSteel>], [<ore:plateDarkSteel>, circuits[1], <ore:plateDarkSteel>], [<ore:screwDarkSteel>, <ore:plateDarkSteel>, <ore:screwDarkSteel>]]);

// Anvil Upgrades
// Micro Anvil
recipes.addShaped("eio_anvil_upgrade_1", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:anvil", "enderio:enabled": 1 as byte}), [[null, <ore:gregHardHammers>], [base, <ore:nuggetDarkSteel>]]);

// Mini Anvil
recipes.addShaped("eio_anvil_upgrade_2", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:anvil1", "enderio:enabled": 1 as byte}), [[null, <ore:gregHardHammers>], [base, <ore:plateDarkSteel>]]);

// Pocket Anvil
recipes.addShaped("eio_anvil_upgrade_3", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:anvil2", "enderio:enabled": 1 as byte}), [[null, <ore:gregHardHammers>], [base, <ore:blockDarkSteel>]]);


// Carpeting
recipes.addShaped("eio_carpeting_upgrade", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:carpet", "enderio:enabled": 1 as byte}), [[null, <ore:gregHardHammers>], [base, <ore:plateDenseSteel>]]);


// Depth
recipes.addShaped("eio_depth_upgrade", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:depth", "enderio:enabled": 1 as byte}), [[<ore:plateDenseSteel>, <ore:gregHardHammers>], [base, null]]);


// Direct
recipes.addShaped("eio_direct_upgrade", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:direct", "enderio:enabled": 1 as byte}), [[<ore:itemEnderCrystal>, <ore:gregHardHammers>], [base, <enderio:item_magnet>]]);


// Elytra
recipes.addShaped("eio_elytra_upgrade", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:elytra", "enderio:enabled": 1 as byte}), [[<enderio:block_industrial_insulation>, <ore:gregHardHammers>], [base, <minecraft:elytra>]]);


// Empowered Upgrades
// Empowered 1
recipes.addShaped("eio_empowered_upgrade_1", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade", "enderio:enabled": 1 as byte}), [[<ore:wireFineCopper>, <ore:gregHardHammers>], [base, <ore:itemVibrantCrystal>]]);

// Empowered 2
recipes.addShaped("eio_empowered_upgrade_2", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade1", "enderio:enabled": 1 as byte}), [[<metaitem:component.small_coil>, <ore:gregHardHammers>], [base, <enderio:item_basic_capacitor>]]);

// Empowered 3
recipes.addShaped("eio_empowered_upgrade_3", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade2", "enderio:enabled": 1 as byte}), [[<metaitem:plate.power_integrated_circuit>, <ore:gregHardHammers>], [base, <enderio:item_capacitor_energetic_silver>]]);

// Empowered 4
recipes.addShaped("eio_empowered_upgrade_4", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade3", "enderio:enabled": 1 as byte}), [[<metaitem:plate.high_power_integrated_circuit>, <ore:gregHardHammers>], [base, <enderio:item_capacitor_vivid>]]);

// Empowered 5
recipes.addShaped("eio_empowered_upgrade_5", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade4", "enderio:enabled": 1 as byte}), [[<metaitem:uhpic>, <ore:gregHardHammers>], [base, <enderio:item_capacitor_melodic>]]);


// Glider
recipes.addShaped("eio_glider_upgrade", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:glide", "enderio:enabled": 1 as byte}), [[null, <ore:gregHardHammers>], [base, <openglider:hang_glider_advanced>]]);


// Fork
recipes.addShaped("eio_fork_upgrade", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:hoe", "enderio:enabled": 1 as byte}), [[null, <ore:gregHardHammers>], [base, <enderio:item_dark_steel_hand>]]);

// Inventory Upgrades
// Inventory 1
recipes.addShaped("eio_inventory_upgrade_1", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:inv", "enderio:enabled": 1 as byte}), [[<ore:gearWood>, <ore:gregHardHammers>], [base, <ore:chestWood>]]);

// Inventory 2
recipes.addShaped("eio_inventory_upgrade_2", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:inv1", "enderio:enabled": 1 as byte}), [[<ore:gearBlackBronze>, <ore:gregHardHammers>], [base, <meta_tile_entity:stainless_steel_chest>]]);

// Inventory 3
recipes.addShaped("eio_inventory_upgrade_3", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:inv2", "enderio:enabled": 1 as byte}), [[<ore:gearHsss>, <ore:gregHardHammers>], [base, <meta_tile_entity:tungstensteel_chest>]]);


// Jump Upgrades
// Inventory 1
recipes.addShaped("eio_jump_upgrade_1", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:jumpboost1", "enderio:enabled": 1 as byte}), [[<ore:gearSmallSteel>, <ore:gregHardHammers>], [base, pistons[1]]]);

// Inventory 2
recipes.addShaped("eio_jump_upgrade_2", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:jumpboost2", "enderio:enabled": 1 as byte}), [[<ore:gearNitinolA>, <ore:gregHardHammers>], [base, pistons[3]]]);

// Inventory 3
recipes.addShaped("eio_jump_upgrade_3", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:jumpboost3", "enderio:enabled": 1 as byte}), [[<ore:gearHsse>, <ore:gregHardHammers>], [base, pistons[5]]]);


// Night Vision TODO Gregicality Nightvision Goggles
recipes.addShaped("eio_nightvision_upgrade", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:nightvision", "enderio:enabled": 1 as byte}), [[<metaitem:plate.power_integrated_circuit>, <ore:gregHardHammers>], [base, null]]);


// Padding
recipes.addShaped("eio_padding_upgrade", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:padding", "enderio:enabled": 1 as byte}), [[null, <ore:gregHardHammers>], [base, <ore:wool>]]);


// Solar Upgrades
// Simple Solar
recipes.addShaped("eio_solar_upgrade_1", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar", "enderio:enabled": 1 as byte}), [[<metaitem:cover.solar.panel>, <ore:gregHardHammers>], [base, circuits[1]]]);

// Inventory 2
recipes.addShaped("eio_solar_upgrade_2", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar1", "enderio:enabled": 1 as byte}), [[<metaitem:cover.solar.panel.ulv>, <ore:gregHardHammers>], [base, circuits[3]]]);

// Inventory 3
recipes.addShaped("eio_solar_upgrade_3", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar2", "enderio:enabled": 1 as byte}), [[<metaitem:cover.solar.panel.lv>, <ore:gregHardHammers>], [base, circuits[5]]]);

// Inventory 4
recipes.addShaped("eio_solar_upgrade_4", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar3", "enderio:enabled": 1 as byte}), [[field_generators[3], <ore:gregHardHammers>], [base, circuits[6]]]);


// Sound Locator
recipes.addShaped("eio_sound_locator_upgrade", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:sounddetector", "enderio:enabled": 1 as byte}), [[null, <ore:gregHardHammers>], [base, sensors[1]]]);


// Speed Upgrades
// Speed 1
recipes.addShaped("eio_speed_upgrade_1", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:speedboost1", "enderio:enabled": 1 as byte}), [[<ore:gearSmallSteel>, <ore:gregHardHammers>], [base, motors[1]]]);

// Speed 2
recipes.addShaped("eio_speed_upgrade_2", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:speedboost2", "enderio:enabled": 1 as byte}), [[<ore:gearSmallStainlessSteel>, <ore:gregHardHammers>], [base, motors[3]]]);

// Speed 3
recipes.addShaped("eio_speed_upgrade_3", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:speedboost3", "enderio:enabled": 1 as byte}), [[<ore:gearSmallTungstenSteel>, <ore:gregHardHammers>], [base, motors[4]]]);


// Spoon
recipes.addShaped("eio_spoon_upgrade", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:spoon", "enderio:enabled": 1 as byte}), [[<ore:gearSmallSteel>, <ore:gregHardHammers>], [base, <ore:toolHeadShovelStainlessSteel>]]);


// Step Assist
recipes.addShaped("eio_step_assist_upgrade", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:step_assist", "enderio:enabled": 1 as byte}), [[null, <ore:gregHardHammers>], [base, motors[1]]]);


// Flippers
recipes.addShaped("eio_step_flippers_upgrade", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:swim", "enderio:enabled": 1 as byte}), [[<ore:plateRubber>, <ore:gregHardHammers>], [base, <ore:plateRubber>]]);


// Travel
recipes.addShaped("eio_step_travel_upgrade", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:travel", "enderio:enabled": 1 as byte}), [[<ore:itemEnderCrystal>, <ore:gregHardHammers>], [base, circuits[1]]]);


// Explosive Upgrades
// Explosive 1
recipes.addShaped("eio_step_explosive_upgrade_1", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt", "enderio:enabled": 1 as byte}), [[<ore:gearSteel>, <ore:gregHardHammers>], [base, <appliedenergistics2:tiny_tnt>]]);

// Explosive 2
recipes.addShaped("eio_step_explosive_upgrade_2", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt1", "enderio:enabled": 1 as byte}), [[<ore:gearBlackBronze>, <ore:gregHardHammers>], [base, <minecraft:tnt>]]);

// Explosive 3
recipes.addShaped("eio_step_explosive_upgrade_3", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt2", "enderio:enabled": 1 as byte}), [[<ore:gearTungstenSteel>, <ore:gregHardHammers>], [base, <minecraft:tnt>]]);

// Explosive 4
recipes.addShaped("eio_step_explosive_upgrade_4", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt3", "enderio:enabled": 1 as byte}), [[<ore:gearNaquadahAlloy>, <ore:gregHardHammers>], [base, <minecraft:tnt>]]);

// Explosive 5
recipes.addShaped("eio_step_explosive_upgrade_5", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt4", "enderio:enabled": 1 as byte}), [[<ore:gearAbyssalAlloy>, <ore:gregHardHammers>], [base, <minecraft:tnt>]]);


// Dark Steel Helmet
assembler.recipeBuilder()
	.inputs(<ore:plateDarkSteel> * 5)
	.inputs(circuits[2] * 2)
    .inputs(<ore:screwDarkSteel> * 4)
	.notConsumable(scripts.gregtech_globals.intCircuit(5))
	.outputs(<enderio:item_dark_steel_helmet>)
	.EUt(96)
	.duration(100)
	.buildAndRegister();

// Dark Steel Chestplate
assembler.recipeBuilder()
	.inputs(circuits[2] * 2)
	.inputs(<ore:plateDarkSteel> * 8)
    .inputs(<ore:screwDarkSteel> * 4)
	.notConsumable(scripts.gregtech_globals.intCircuit(8))
	.outputs(<enderio:item_dark_steel_chestplate>)
	.EUt(96)
	.duration(100)
	.buildAndRegister();

// Dark Steel Leggings
assembler.recipeBuilder()
	.inputs(circuits[2] * 2)
	.inputs(<ore:plateDarkSteel> * 7)
    .inputs(<ore:screwDarkSteel> * 4)
	.notConsumable(scripts.gregtech_globals.intCircuit(7))
	.outputs(<enderio:item_dark_steel_leggings>)
	.EUt(96)
	.duration(100)
	.buildAndRegister();

// Dark Steel Boots
assembler.recipeBuilder()
	.inputs(circuits[2] * 2)
	.inputs(<ore:plateDarkSteel> * 4)
    .inputs(<ore:screwDarkSteel> * 4)
	.notConsumable(scripts.gregtech_globals.intCircuit(4))
	.outputs(<enderio:item_dark_steel_boots>)
	.EUt(96)
	.duration(100)
	.buildAndRegister();

// The Ender
recipes.addShaped("eio_sword_dark", <enderio:item_dark_steel_sword>,
	[[null, <ore:plateDarkSteel>, null],
	[circuits[2], <ore:plateDarkSteel>, <ore:gregScrewDrivers>],
	[<ore:screwDarkSteel>, <ore:itemInfinityRod>, <ore:screwDarkSteel>]]);

// Dark Shield
recipes.addShaped("eio_shield_dark", <enderio:item_dark_steel_shield>,
	[[<ore:plateDarkSteel>, <ore:ingotDarkSteel>, <ore:plateDarkSteel>],
	[<ore:ingotDarkSteel>, circuits[2], <ore:ingotDarkSteel>],
	[<ore:screwDarkSteel>, <ore:gregScrewDrivers>, <ore:screwDarkSteel>]]);

// Dark Bow
recipes.addShaped("eio_bow_dark", <enderio:item_dark_steel_bow>,
	[[null, <ore:string>, <ore:plateDarkSteel>],
	[<ore:string>, circuits[2], <ore:itemInfinityRod>],
	[null, <ore:string>, <ore:plateDarkSteel>]]);

// Dark Pick
recipes.addShaped("eio_pickaxe_dark", <enderio:item_dark_steel_pickaxe>,
	[[<ore:plateDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>],
	[circuits[2], <ore:itemInfinityRod>, <ore:gregScrewDrivers>],
	[<ore:screwDarkSteel>, <ore:itemInfinityRod>, <ore:screwDarkSteel>]]);

// Dark Axe
recipes.addShaped("eio_axe_dark", <enderio:item_dark_steel_axe>,
	[[<ore:plateDarkSteel>, <ore:ingotDarkSteel>, circuits[2]],
	[<ore:plateDarkSteel>, <ore:itemInfinityRod>, <ore:gregScrewDrivers>],
	[<ore:screwDarkSteel>, <ore:itemInfinityRod>, <ore:screwDarkSteel>]]);

// Dark Crook
recipes.addShaped("eio_crook_dark", <enderio:item_dark_steel_crook>,
	[[null, circuits[2], <ore:plateDarkSteel>],
	[<ore:gregScrewDrivers>, <ore:itemInfinityRod>, <ore:plateDarkSteel>],
	[<ore:screwDarkSteel>, <ore:itemInfinityRod>, <ore:screwDarkSteel>]]);

// Dark Backhoe
recipes.addShaped("eio_hand_dark", <enderio:item_dark_steel_hand>,
	[[<ore:plateDarkSteel>, circuits[2], null],
	[<ore:plateDarkSteel>, <ore:itemInfinityRod>, <ore:gregScrewDrivers>],
	[<ore:screwDarkSteel>, <ore:itemInfinityRod>, <ore:screwDarkSteel>]]);

// Dark Shears
recipes.addShaped("eio_shears_dark", <enderio:item_dark_steel_shears>,
	[[<ore:screwDarkSteel>, <ore:plateDarkSteel>, null],
	[<ore:plateDarkSteel>, circuits[2], null],
	[null, null, null]]);

# End Steel Armor and Arms

// End Steel Helmet
assembler.recipeBuilder()
	.inputs(circuits[3] * 2)
	.inputs(<ore:plateEndSteel> * 5)
    .inputs(<ore:screwEndSteel> * 4)
	.notConsumable(scripts.gregtech_globals.intCircuit(5))
	.outputs(<enderio:item_end_steel_helmet>)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

// End Steel Chestplate
assembler.recipeBuilder()
	.inputs(circuits[3] * 2)
	.inputs(<ore:plateEndSteel> * 8)
    .inputs(<ore:screwEndSteel> * 4)
	.notConsumable(scripts.gregtech_globals.intCircuit(8))
	.outputs(<enderio:item_end_steel_chestplate>)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

// End Steel Leggings
assembler.recipeBuilder()
	.inputs(circuits[3] * 2)
	.inputs(<ore:plateEndSteel> * 7)
    .inputs(<ore:screwEndSteel> * 4)
	.notConsumable(scripts.gregtech_globals.intCircuit(7))
	.outputs(<enderio:item_end_steel_leggings>)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

// End Steel Boots
assembler.recipeBuilder()
	.inputs(circuits[3] * 2)
	.inputs(<ore:plateEndSteel> * 4)
    .inputs(<ore:screwEndSteel> * 4)
	.notConsumable(scripts.gregtech_globals.intCircuit(4))
	.outputs(<enderio:item_end_steel_boots>)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

// The Ender Mk2
recipes.addShaped("eio_sword_end", <enderio:item_end_steel_sword>,
	[[null, <ore:plateEndSteel>, null],
	[circuits[3], <ore:plateEndSteel>, <ore:gregScrewDrivers>],
	[<ore:screwEndSteel>, <ore:itemInfinityRod>, <ore:screwEndSteel>]]);

// End Steel Shield
recipes.addShaped("eio_shield_end", <enderio:item_end_steel_shield>,
	[[<ore:plateEndSteel>, <ore:ingotEndSteel>, <ore:plateEndSteel>],
	[<ore:ingotEndSteel>, circuits[3], <ore:ingotEndSteel>],
	[<ore:screwEndSteel>, <ore:gregScrewDrivers>, <ore:screwEndSteel>]]);

// Ender Bow
recipes.addShaped("eio_bow_end", <enderio:item_end_steel_bow>,
	[[null, <ore:string>, <ore:plateEndSteel>],
	[<ore:string>, circuits[3], <ore:itemInfinityRod>],
	[null, <ore:string>, <ore:plateEndSteel>]]);

// Ender Pickaxe
recipes.addShaped("eio_pickaxe_end", <enderio:item_end_steel_pickaxe>,
	[[<ore:plateEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>],
	[circuits[3], <ore:itemInfinityRod>, <ore:gregScrewDrivers>],
	[<ore:screwEndSteel>, <ore:itemInfinityRod>, <ore:screwEndSteel>]]);

// Ender Axe
recipes.addShaped("eio_axe_end", <enderio:item_end_steel_axe>,
	[[<ore:plateEndSteel>, <ore:ingotEndSteel>, circuits[3]],
	[<ore:plateEndSteel>, <ore:itemInfinityRod>, <ore:gregScrewDrivers>],
	[<ore:screwEndSteel>, <ore:itemInfinityRod>, <ore:screwEndSteel>]]);

# Stellar Alloy(Steel?) Armor and Arms

// Stellar Helmet
assembler.recipeBuilder()
	.inputs(circuits[5] * 2)
	.inputs(<ore:plateStellarAlloy> * 5)
    .inputs(<ore:screwStellarAlloy> * 4)
    .inputs(field_generators[4])
	.notConsumable(scripts.gregtech_globals.intCircuit(5))
	.outputs(<enderio:item_stellar_alloy_helmet>)
	.EUt(1920)
	.duration(100)
	.buildAndRegister();

// Stellar Chestplate
assembler.recipeBuilder()
	.inputs(circuits[5] * 2)
	.inputs(<ore:plateStellarAlloy> * 8)
    .inputs(<ore:screwStellarAlloy> * 4)
    .inputs(field_generators[4])
	.notConsumable(scripts.gregtech_globals.intCircuit(8))
	.outputs(<enderio:item_stellar_alloy_chestplate>)
	.EUt(1920)
	.duration(100)
	.buildAndRegister();

// Stellar Leggings
assembler.recipeBuilder()
	.inputs(circuits[5] * 2)
	.inputs(<ore:plateStellarAlloy> * 7)
    .inputs(<ore:screwStellarAlloy> * 4)
    .inputs(field_generators[4])
	.notConsumable(scripts.gregtech_globals.intCircuit(7))
	.outputs(<enderio:item_stellar_alloy_leggings>)
	.EUt(1920)
	.duration(100)
	.buildAndRegister();

// Stellar Boots
assembler.recipeBuilder()
	.inputs(circuits[5] * 2)
	.inputs(<ore:plateStellarAlloy> * 4)
    .inputs(<ore:screwStellarAlloy> * 4)
    .inputs(<gtadditions:ga_meta_item:32454> * 2)
    .inputs(field_generators[4])
	.notConsumable(scripts.gregtech_globals.intCircuit(4))
	.outputs(<enderio:item_stellar_alloy_boots>)
	.EUt(1920)
	.duration(100)
	.buildAndRegister();

// The Ender Mark IV
recipes.addShaped("eio_sword_stellar", <enderio:item_stellar_alloy_sword>,
	[[null, <ore:plateStellarAlloy>, null],
	[field_generators[4], <ore:plateStellarAlloy>, <ore:gregScrewDrivers>],
	[<ore:screwStellarAlloy>, <ore:itemInfinityRod>, <ore:screwStellarAlloy>]]);

// Stellar Pickaxe
recipes.addShaped("eio_pickaxe_stellar", <enderio:item_stellar_alloy_pickaxe>,
	[[<ore:plateStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>],
	[field_generators[4], <ore:itemInfinityRod>, <ore:gregScrewDrivers>],
	[<ore:screwStellarAlloy>, <ore:itemInfinityRod>, <ore:screwStellarAlloy>]]);

// Stellar Axe
recipes.addShaped("eio_axe_stellar", <enderio:item_stellar_alloy_axe>,
	[[<ore:plateStellarAlloy>, <ore:ingotStellarAlloy>, field_generators[4]],
	[<ore:plateStellarAlloy>, <ore:itemInfinityRod>, <ore:gregScrewDrivers>],
	[<ore:screwStellarAlloy>, <ore:itemInfinityRod>, <ore:screwStellarAlloy>]]);