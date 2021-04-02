import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;


# Enori -> Aluminium Plate -> Titanium Plate
# Diamatine & Palis -> Chrome Plate -> Staballoy Plate
# Void & Restonia -> Nickel Zinc Ferrite Plate -> Vanadium Plate

val emp_enori = <ore:plateTitanium>;
val enori = <ore:plateAluminium>;
val emp_restonia = <ore:plateVanadium>;
val restonia = <ore:plateNickelZincFerrite>;
val emp_diamatine = <ore:plateStaballoy>;
val diamatine = <ore:plateChrome>;

//Start by removing this crap
mods.jei.JEI.removeAndHide(<actuallyadditions:block_crystal_cluster_lapis>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_crystal_cluster_redstone>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_crystal_cluster_diamond>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_crystal_cluster_coal>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_crystal_cluster_emerald>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_crystal_cluster_iron>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_battery_box>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_bio_reactor>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_empowerer>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_phantom_energyface>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_phantom_placer>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_phantom_breaker>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_fluid_placer>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_fluid_collector>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_tiny_torch>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_shock_suppressor>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_display_stand>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_firework_box>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_miner>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_atomic_reconstructor>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_crystal:0>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_crystal:1>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_crystal:2>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_crystal:3>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_crystal:4>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_crystal:5>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_crystal_empowered:0>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_crystal_empowered:1>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_crystal_empowered:2>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_crystal_empowered:3>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_crystal_empowered:4>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_crystal_empowered:5>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_black_lotus>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_laser_relay>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_laser_relay_advanced>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_laser_relay_extreme>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_ranged_collector>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_directional_breaker>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_leaf_generator>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_smiley_cloud>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_xp_solidifier>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_testifi_bucks_green_wall>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_testifi_bucks_green_stairs>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_testifi_bucks_green_fence>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_testifi_bucks_green_slab>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_testifi_bucks_white_wall>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_testifi_bucks_white_stairs>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_testifi_bucks_white_fence>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_testifi_bucks_white_slab>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_colored_lamp:0>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_colored_lamp:1>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_colored_lamp:2>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_colored_lamp:3>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_colored_lamp:4>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_colored_lamp:5>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_colored_lamp:6>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_colored_lamp:7>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_colored_lamp:8>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_colored_lamp:9>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_colored_lamp:10>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_colored_lamp:11>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_colored_lamp:12>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_colored_lamp:13>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_colored_lamp:14>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_colored_lamp:15>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_lamp_powerer>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_treasure_chest>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_energizer>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_enervator>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_item_repairer>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_lava_factory_controller>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_canola_press>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_coal_generator>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_oil_generator>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_fermenting_barrel>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_compost>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_misc:0>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_misc:1>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_misc:2>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_misc:3>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_misc:7>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_misc:8>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_misc:9>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_feeder>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_grinder>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_grinder_double>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_furnace_double>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_fishing_net>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_furnace_solar>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_heat_collector>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_greenhouse_glass>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_breaker>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_placer>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_coffee_machine>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_quartz_wall>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_chiseled_quartz_wall>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_pillar_quartz_wall>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_quartz_stair>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_chiseled_quartz_stair>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_pillar_quartz_stair>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_quartz_slab>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_chiseled_quartz_slab>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_pillar_quartz_slab>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_crystal_shard:0>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_crystal_shard:1>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_crystal_shard:2>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_crystal_shard:3>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_crystal_shard:4>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_crystal_shard:5>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_filling_wand>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_void_bag>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_worm>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_water_bowl>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_spawner_changer>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_misc:1>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_misc:6>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_misc:7>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_misc:8>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_misc:10>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_misc:11>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_misc:12>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_misc:15>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_misc:16>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_misc:17>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_misc:18>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_misc:19>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_misc:20>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_misc:21>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_misc:22>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_color_lens>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_explosion_lens>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_damage_lens>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_more_damage_lens>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_disenchanting_lens>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_mining_lens>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_crystal:0>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_crystal:1>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_crystal:2>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_crystal:3>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_crystal:4>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_crystal:5>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_crystal_empowered:0>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_crystal_empowered:1>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_crystal_empowered:2>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_crystal_empowered:3>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_crystal_empowered:4>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_crystal_empowered:5>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_chest_to_crate_upgrade>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_small_to_medium_crate_upgrade>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_medium_to_large_crate_upgrade>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_tele_staff>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_wings_of_the_bats>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill:0>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill:1>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill:2>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill:3>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill:4>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill:5>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill:6>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill:7>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill:8>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill:9>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill:10>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill:11>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill:12>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill:13>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill:14>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill:15>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_battery>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_battery_double>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_battery_triple>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_battery_quadruple>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_battery_quintuple>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill_upgrade_speed>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill_upgrade_speed_ii>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill_upgrade_speed_iii>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill_upgrade_silk_touch>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill_upgrade_fortune>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill_upgrade_fortune_ii>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill_upgrade_three_by_three>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill_upgrade_five_by_five>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_fertilizer>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_resonant_rice>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_jam:0>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_jam:1>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_jam:2>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_jam:3>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_jam:4>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_jam:5>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_jam:6>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_dust>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_solidified_experience>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_leaf_blower>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_leaf_blower_advanced>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_potion_ring:0>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_potion_ring:1>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_potion_ring:2>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_potion_ring:3>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_potion_ring:4>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_potion_ring:5>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_potion_ring:6>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_potion_ring:7>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_potion_ring:8>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_potion_ring:9>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_potion_ring_advanced:0>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_potion_ring_advanced:1>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_potion_ring_advanced:2>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_potion_ring_advanced:3>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_potion_ring_advanced:4>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_potion_ring_advanced:5>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_potion_ring_advanced:6>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_potion_ring_advanced:7>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_potion_ring_advanced:8>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_potion_ring_advanced:9>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_hairy_ball>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_growth_ring>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_suction_ring>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_water_removal_ring>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill_upgrade_block_placing>);

//Time to add recipes back!

val farmer = <actuallyadditions:block_farmer>;
recipes.removeByRecipeName("actuallyadditions:recipes82");
recipes.addShaped("gregified_farmer", farmer,
[[<ore:plateIron>,<ore:toolHeadHoeWroughtIron>,<ore:plateIron>],
[<minecraft:wheat_seeds>,hulls[0],<minecraft:wheat_seeds>],
[<ore:plateIron>,<minecraft:hopper>,<ore:plateIron>]]);

val player_interface = <actuallyadditions:block_player_interface>;
val wireless_reciever = <appliedenergistics2:material:41>;
recipes.removeByRecipeName("actuallyadditions:recipes131");
recipes.addShaped("gregified_player_interface", player_interface,
[[tieredPlates[6],<minecraft:ender_eye>,tieredPlates[6]],
[emp_diamatine,hulls[4],emp_diamatine],
[wireless_reciever,<appliedenergistics2:interface>,wireless_reciever]]);

val item_interface = <actuallyadditions:block_item_viewer>;
recipes.removeByRecipeName("actuallyadditions:recipes110");
recipes.addShaped("gregified_item_interface", item_interface,
[[pistons[2],<actuallyadditions:item_misc:5>,pistons[2]],
[restonia,hulls[2],restonia],
[tieredWires[2],<minecraft:chest>,tieredWires[2]]]);

// Add springs for relays


recipes.addShaped("gregtech_spring_small_annealed_copper", <ore:springSmallAnnealedCopper>.firstItem, [
    [null, <ore:gregSaws>, null],
    [<ore:gregFiles>, <ore:stickAnnealedCopper>, <ore:gregWireCutters>]
]);
recipes.addShaped("gregtech_spring_small_aluminium", <ore:springSmallAluminium>.firstItem, [
    [null, <ore:gregSaws>, null],
    [<ore:gregFiles>, <ore:stickAluminium>, <ore:gregWireCutters>]
]);

metal_bender.recipeBuilder()
    .inputs(<ore:stickAnnealedCopper>)
    .property("circuit", 1)
    .outputs(<ore:springSmallAnnealedCopper>.firstItem * 2)
    .duration(64)
    .EUt(8)
    .buildAndRegister();

metal_bender.recipeBuilder()
    .inputs(<ore:stickAluminium>)
    .property("circuit", 1)
    .outputs(<ore:springSmallAluminium>.firstItem * 2)
    .duration(26)
    .EUt(8)
    .buildAndRegister();

val beans = <actuallyadditions:item_coffee_beans>;
beans.displayName = "Coffee Cherry";

val fluid_relay = <actuallyadditions:block_laser_relay_fluids>;
recipes.addShaped("gregified_fluid_relay", fluid_relay * 6,
[[null,emitters[1],null],
[<ore:cableGtSingleCopper>,<ore:springSmallAluminium>,<ore:cableGtSingleCopper>],
[<ore:paneGlass>,pumps[1],<ore:paneGlass>]]);

val item_relay = <actuallyadditions:block_laser_relay_item>;
recipes.addShaped("gregified_item_relay", item_relay * 6,
[[null,emitters[1],null],
[<ore:cableGtSingleCopper>,<ore:springSmallAnnealedCopper>,<ore:cableGtSingleCopper>],
[<ore:paneGlass>,conveyors[1],<ore:paneGlass>]]);

val advanced_relay = <actuallyadditions:block_laser_relay_item_whitelist>;
recipes.removeByRecipeName("actuallyadditions:recipes109");
recipes.addShaped("gregified_advanced_relay", advanced_relay * 4,
[[emitters[2],item_relay,emitters[2]],
[<ore:cableGtDoubleTungstenSteel>,<ore:springMaragingSteelA>,<ore:cableGtDoubleTungstenSteel>],
[tieredGlass[4],conveyors[4],tieredGlass[4]]]);

val phantomface = <actuallyadditions:block_phantomface>;
val annihilation_plane = <appliedenergistics2:part:300>;
recipes.removeByRecipeName("actuallyadditions:recipes130");
recipes.addShaped("gregified_phantomface", phantomface,
[[<ore:cableGtSingleGold>,emitters[3],<ore:cableGtSingleGold>],
[<actuallyadditions:block_misc:6>,annihilation_plane,<actuallyadditions:block_misc:6>],
[tieredGlass[3],conveyors[3],tieredGlass[3]]]);

val phantom_redstoneface = <actuallyadditions:block_phantom_redstoneface>;
recipes.removeByRecipeName("actuallyadditions:recipes135");
recipes.addShaped("gregified_phantom_redstoneface", phantom_redstoneface,
[[<ore:cableGtSingleCopper>,emitters[1],<ore:cableGtSingleCopper>],
[<minecraft:redstone>,phantomface,<minecraft:redstone>],
[<ore:paneGlass>,<ore:paneGlass>,<ore:paneGlass>]]);

val wood_casing = <actuallyadditions:block_misc:4>;
recipes.removeByRecipeName("actuallyadditions:recipes119");
recipes.addShaped("gregified_wood_casing", wood_casing,
[[<ore:screwIron>,<ore:plankWood>,<ore:screwIron>],
[<ore:plankWood>,null,<ore:plankWood>],
[<ore:screwIron>,<ore:plankWood>,<ore:screwIron>]]);

val crate1 = <actuallyadditions:block_giant_chest>;
recipes.removeByRecipeName("actuallyadditions:recipes158");
assembler.recipeBuilder()
	.inputs(<ore:plankWood> * 4)
	.inputs(<ore:screwSteel> * 4)
	.inputs(<ore:plateWroughtIron>)
	.inputs(wood_casing)
	.outputs(crate1)
	.EUt(30)
	.duration(200)
	.buildAndRegister();
	
val crate2 = <actuallyadditions:block_giant_chest_medium>;
recipes.removeByRecipeName("actuallyadditions:giant_chest_media");
assembler.recipeBuilder()
	.inputs(<ore:plankWood> * 6)
	.inputs(<ore:screwAluminium> * 4)
	.inputs(restonia)
	.inputs(crate1)
	.fluidInputs(<liquid:glue> * 432)
	.outputs(crate2)
	.EUt(120)
	.duration(240)
	.buildAndRegister();
	
val crate3 = <actuallyadditions:block_giant_chest_large>;
recipes.removeByRecipeName("actuallyadditions:giant_chest_large");
assembler.recipeBuilder()
	.inputs(<ore:plankWood> * 8)
	.inputs(<ore:screwStaballoy> * 4)
	.inputs(emp_restonia)
	.inputs(crate2)
	.inputs(<ore:springVanadium> * 2)
	.fluidInputs(<liquid:plastic> * 576)
	.outputs(crate3)
	.EUt(120)
	.duration(240)
	.buildAndRegister();

val esd = <actuallyadditions:block_inputter>;
recipes.removeByRecipeName("actuallyadditions:recipes152");
recipes.addShaped("gregified_esd", esd,
[[<ore:plateSteel>,enori,<ore:plateSteel>],
[<ore:itemConduitBinder>,circuits[1],<ore:itemConduitBinder>],
[conveyors[2],<ore:plateSteel>,conveyors[2]]]);

val esd_advanced = <actuallyadditions:block_inputter_advanced>;
recipes.removeByRecipeName("actuallyadditions:recipes153");
recipes.addShaped("gregified_esd_advanced", esd_advanced,
[[<ore:plateStainlessSteel>,emp_enori,<ore:plateStainlessSteel>],
[<ore:itemConduitBinder>,esd,<ore:itemConduitBinder>],
[<ore:plateStainlessSteel>,circuits[2],<ore:plateStainlessSteel>]]);

val phantom_booster = <actuallyadditions:block_phantom_booster>;
recipes.removeByRecipeName("actuallyadditions:recipes122");
recipes.addShaped("gregified_phantom_booster", phantom_booster,
[[emp_diamatine,null,emp_diamatine],
[emp_restonia,emitters[4],emp_restonia],
[emp_diamatine,null,emp_diamatine]]);

val laser_range = <actuallyadditions:item_laser_upgrade_range>;
recipes.removeByRecipeName("actuallyadditions:recipes3");
recipes.addShaped("gregified_laser_range", laser_range * 4,
[[<ore:wireGtSingleMvSupercondutor>,diamatine,<ore:wireGtSingleMvSupercondutor>],
[emp_enori,sensors[3],emp_enori],
[null,<ore:plateSteel>,null]]);

val laser_invis = <actuallyadditions:item_laser_upgrade_invisibility>;
recipes.removeByRecipeName("actuallyadditions:recipes2");
recipes.addShaped("gregified_laser_invis", laser_invis * 2,
[[null,<ore:lensMagenta>,null],
[enori,sensors[1],enori],
[<ore:plateSteel>,<ore:chestWood>,<ore:plateSteel>]]);

val sack = <actuallyadditions:item_bag>;
recipes.removeByRecipeName("actuallyadditions:recipes5");
recipes.addShaped("gregified_sack", sack,
[[<ore:string>,<ore:leather>,null],
[<ore:leather>,<ore:chest>,<ore:leather>],
[null,<ore:leather>,<ore:stickLongWood>]]);

val player_probe = <actuallyadditions:item_player_probe>;
recipes.removeByRecipeName("actuallyadditions:recipes50");
recipes.addShaped("gregified_player_probe", player_probe,
[[null,emitters[2],null],
[emp_restonia,<minecraft:name_tag>,emp_restonia],
[<ore:cableGtSingleTungsten>,<ore:springVanadium>,<ore:cableGtSingleTungsten>]]);

val filter = <actuallyadditions:item_filter>;
val gt_smart_filter = <metaitem:smart_item_filter> as IIngredient; // This is a GTCE smart filter.

recipes.removeByRecipeName("actuallyadditions:recipes19");
assembler.recipeBuilder()
	.inputs(<minecraft:iron_bars> * 8)
	.inputs(gt_smart_filter)
	.outputs(filter)
	.EUt(480)
	.duration(200)
	.buildAndRegister();

val crate_keeper = <actuallyadditions:item_crate_keeper>;
recipes.removeByRecipeName("actuallyadditions:recipes20");
recipes.addShaped("gregified_crate_keeper", crate_keeper,
[[<ore:plateDenseElectrum>,<ore:plateDenseElectrum>,null],
[null,<ore:boltElectrum>,null],
[null,<storagedrawers:drawer_key>,null]]);


val handle = <actuallyadditions:item_misc:3>;
handle.displayName = "Handle";
recipes.removeByRecipeName("actuallyadditions:recipes219");
assembler.recipeBuilder()
	.inputs(<ore:stickSteel>)
	.fluidInputs(<liquid:polycaprolactam> * 1296)
	.outputs(handle)
	.EUt(25)
	.duration(100)
	.buildAndRegister();
assembler.recipeBuilder()
	.inputs(<ore:stickSteel>)
	.fluidInputs(<liquid:plastic> * 432)
	.outputs(handle)
	.EUt(25)
	.duration(100)
	.buildAndRegister();


val laser_wrench = <actuallyadditions:item_laser_wrench>;
recipes.removeByRecipeName("actuallyadditions:recipes10");
recipes.removeByRecipeName("actuallyadditions:recipes22");
recipes.addShaped("gregified_laser_wrench", laser_wrench,
[[<ore:screwAluminium>,null,<ore:screwAluminium>],
[<ore:plateAluminium>,circuits[2],<ore:plateAluminium>],
[null,handle,null]]);

val black_quartz = <actuallyadditions:item_misc:5>;
autoclave.recipeBuilder()
	.inputs(<ore:dustNetherQuartz>)
	.fluidInputs(<liquid:carbon> * 144)
	.outputs(black_quartz)
	.EUt(120)
	.duration(100)
	.buildAndRegister();

val phantom_connector = <actuallyadditions:item_phantom_connector>;
recipes.removeByRecipeName("actuallyadditions:recipes11");
recipes.removeByRecipeName("actuallyadditions:recipes49");
assembler.recipeBuilder()
	.inputs(diamatine * 2)
	.inputs(<ore:plateDenseVanadium>)
	.inputs(emitters[3])
	.inputs(handle)
	.inputs(black_quartz)
	.outputs(phantom_connector)
	.EUt(480)
	.duration(200)
	.buildAndRegister();
	
val crafting_stick = <actuallyadditions:item_crafter_on_a_stick>;
val tool_station = <meta_tile_entity:workbench>;
recipes.removeByRecipeName("actuallyadditions:recipes52");
recipes.addShaped("gregified_crafting_stick", crafting_stick,
[[tool_station,null,null],
[null,<ore:gregFiles>,null],
[null,<ore:gregSaws>,<minecraft:stick>]]);

val pre_dropper = <actuallyadditions:block_dropper>;
recipes.removeByRecipeName("actuallyadditions:recipes162");
recipes.addShaped("gregified_pre_dropper", pre_dropper,
[[<ore:gtMetalCasingIron>,<ore:gtMetalCasingIron>,<ore:gtMetalCasingIron>],
[diamatine,<minecraft:dropper>,diamatine],
[diamatine,<minecraft:hopper>,diamatine]]);

/*
recipes.addShaped("gregified_farmer", farmer,
[[,,],
[,,],
[,,]]);
*/


// Green House (why) recipes

function intCircuit(i as int) as IIngredient {
	return <metaitem:circuit.integrated>.withTag({Configuration: i});
}



val canola_seeds = <actuallyadditions:item_canola_seed>;
val coffee_seeds = <actuallyadditions:item_coffee_seed>;

createGreenHouseRecipes(canola_seeds, canola_seeds);
createGreenHouseRecipes(coffee_seeds, beans);