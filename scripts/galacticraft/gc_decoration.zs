import mods.chisel.Carving;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;

val removals = [
    "galacticraftcore:space_glass_clear_0",
    "galacticraftcore:space_glass_clear_1",
    "galacticraftcore:space_glass_clear_0",
    "galacticraftcore:space_glass_vanilla_0",
    "galacticraftcore:space_glass_vanilla_1",
    "galacticraftcore:space_glass_vanilla_0",
    "galacticraftcore:space_glass_strong_1",
    "galacticraftcore:enclosed_14",
    "galacticraftcore:enclosed_15",
    "galacticraftcore:enclosed_1",
    "galacticraftcore:enclosed", // registered at the wrong time?
    "galacticraftcore:cheese",
    "galacticraftcore:view_screen",
    "galacticraftcore:arclamp",
    "galacticraftcore:concealed_redstone",
    "galacticraftcore:concealed_repeater",
    "galacticraftcore:platform",
    "galacticraftcore:fluid_pipe",
    "galaxyspace:dungeon_blocks",
    "galacticraftplanets:walkway_0",
    "galacticraftplanets:walkway_2",
    "galacticraftplanets:walkway_2_alt",
    "galacticraftcore:cobblestone",
    "galacticraftcore:cobblestone_alt",
    "galaxyspace:decoblocks",
    "galaxyspace:decoblocks_1",
    "galaxyspace:decoblocks_2",
    "galaxyspace:decoblocks_3",
    "galacticraftcore:meteor_chunk_0",
    "galacticraftcore:food_4",
    "galaxyspace:gs_basic_7",
    "galacticraftcore:canister_0",
    "galacticraftcore:food_9",
    "galacticraftcore:food_3",
    "galacticraftcore:food_2",
    "galacticraftcore:food_1",
    "galacticraftcore:food_0",
    "galacticraftcore:basic_item_18",
    "galacticraftcore:basic_item_17",
    "galacticraftcore:basic_item_16",
    "galacticraftcore:basic_item_15",
    "galacticraftcore:food_6",
    "galacticraftcore:food_5",
    "galacticraftcore:food_8",
    "galacticraftcore:flag",
    "galacticraftcore:prelaunch_checklist",
    "galacticraftplanets:grapple"
] as string[];

for item in removals {
    recipes.removeByRecipeName(item);
}

val disables = [
    <galacticraftcore:aluminum_wire>,
    <galacticraftcore:aluminum_wire:1>,
    <galacticraftcore:aluminum_wire:2>,
    <galacticraftcore:aluminum_wire:3>,
    <galacticraftcore:grating>,
    <galacticraftplanets:walkway:1>,
    <galacticraftcore:emergency_kit>,
    <galaxyspace:gs_basic:20>,
    <galaxyspace:gs_basic:28>,
    <galacticraftcore:sensor_glasses>,
    <galacticraftcore:steel_pickaxe>,
    <galacticraftcore:steel_axe>,
    <galacticraftcore:steel_hoe>,
    <galacticraftcore:steel_shovel>,
    <galacticraftcore:steel_sword>,
    <galacticraftcore:steel_helmet>,
    <galacticraftcore:steel_chestplate>,
    <galacticraftcore:steel_leggings>,
    <galacticraftcore:steel_boots>,
    <galacticraftplanets:titanium_helmet>,
    <galacticraftplanets:titanium_chestplate>,
    <galacticraftplanets:titanium_leggings>,
    <galacticraftplanets:titanium_boots>,
    <galacticraftplanets:titanium_axe>,
    <galacticraftplanets:titanium_pickaxe>,
    <galacticraftplanets:titanium_shovel>,
    <galacticraftplanets:titanium_hoe>,
    <galacticraftplanets:titanium_sword>,
    <galaxyspace:cobalt_helmet>,
    <galaxyspace:cobalt_chest>,
    <galaxyspace:cobalt_legs>,
    <galaxyspace:cobalt_boots>,
    <galaxyspace:cobalt_sword>,
    <galaxyspace:cobalt_axe>,
    <galaxyspace:cobalt_pickaxe>,
    <galaxyspace:cobalt_spade>,
    <galaxyspace:cobalt_hoe>,
    <galaxyspace:jetpack:200>,
    <galaxyspace:gs_basic:9>,
    <galacticraftcore:canister:1>
] as IItemStack[];

for item in disables {
    mods.jei.JEI.removeAndHide(item);
}

furnace.remove(<galacticraftcore:meteor_chunk:1>, <galacticraftcore:meteor_chunk>);

// Fluid Pipe
extruder.recipeBuilder().duration(120).EUt(120)
    .inputs(<gtadditions:ga_transparent_casing>)
    .notConsumable(<metaitem:shape.extruder.pipe.small>)
    .outputs(<galacticraftcore:fluid_pipe> * 2)
    .buildAndRegister();

// Glass Panes
recipes.addShaped("gc_vacuum_glass_clear", <galacticraftcore:space_glass_clear> * 5, [
    [<ore:plateAluminium>, <ore:paneGlass>, <ore:plateAluminium>],
    [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
    [<ore:plateAluminium>, <ore:paneGlass>, <ore:plateAluminium>]
]);

recipes.addShaped("gc_vacuum_glass", <galacticraftcore:space_glass_vanilla> * 5, [
    [<ore:plateTin>, <ore:paneGlass>, <ore:plateTin>],
    [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
    [<ore:plateTin>, <ore:paneGlass>, <ore:plateTin>]
]);

recipes.addShaped("gc_vacuum_glass_strong", <galacticraftcore:space_glass_strong> * 5, [
    [<metaitem:plate.advanced_alloy>, <ore:paneGlass>, <metaitem:plate.advanced_alloy>],
    [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
    [<metaitem:plate.advanced_alloy>, <ore:paneGlass>, <metaitem:plate.advanced_alloy>]
]);

// Tin Wall Block
recipes.addShaped("gc_tin_wall_block", <galacticraftcore:basic_block_core:4> * 8, [
    [<ore:stoneSmooth>, <ore:stoneSmooth>, <ore:stoneSmooth>],
    [<ore:stoneSmooth>, <ore:plateTin>, <ore:stoneSmooth>],
    [<ore:stoneSmooth>, <ore:stoneSmooth>, <ore:stoneSmooth>]
]);

// Tin Decoration Blocks
val decoration_blocks as IItemStack[] = [
    <galacticraftcore:basic_block_core:3>,
    <galacticraftcore:basic_block_core:4>
];

Carving.addGroup("gc_tin_decoration_blocks");

for i in decoration_blocks {
    Carving.addVariation("gc_tin_decoration_blocks", i);
    recipes.remove(i);
}

// Sealable Aluminium Wire
canner.recipeBuilder().duration(100).EUt(4)
    .inputs(<galacticraftcore:basic_block_core:4>)
    .inputs(<ore:cableGtSingleAluminium>)
    .outputs(<galacticraftcore:enclosed:14>)
    .buildAndRegister();

canner.recipeBuilder().duration(100).EUt(4)
    .inputs(<galacticraftcore:enclosed:14>)
    .outputs(<galacticraftcore:basic_block_core:4>)
    .outputs(<ore:cableGtSingleAluminium>.firstItem)
    .buildAndRegister();

// Sealable Heavy Aluminium Wire
canner.recipeBuilder().duration(100).EUt(4)
    .inputs(<galacticraftcore:basic_block_core:4>)
    .inputs(<ore:cableGtQuadrupleAluminium>)
    .outputs(<galacticraftcore:enclosed:15>)
    .buildAndRegister();

canner.recipeBuilder().duration(100).EUt(4)
    .inputs(<galacticraftcore:enclosed:15>)
    .outputs(<galacticraftcore:basic_block_core:4>)
    .outputs(<ore:cableGtQuadrupleAluminium>.firstItem)
    .buildAndRegister();

// Sealable Fluid Pipe
canner.recipeBuilder().duration(100).EUt(4)
    .inputs(<galacticraftcore:basic_block_core:4>)
    .inputs(<galacticraftcore:fluid_pipe>)
    .outputs(<galacticraftcore:enclosed:1>)
    .buildAndRegister();

canner.recipeBuilder().duration(100).EUt(4)
    .inputs(<galacticraftcore:enclosed:1>)
    .outputs(<galacticraftcore:basic_block_core:4>)
    .outputs(<galacticraftcore:fluid_pipe>)
    .buildAndRegister();

// Sealable ME Cable
canner.recipeBuilder().duration(100).EUt(4)
    .inputs(<galacticraftcore:basic_block_core:4>)
    .inputs(<appliedenergistics2:part:16>)
    .outputs(<galacticraftcore:enclosed:13>)
    .buildAndRegister();

canner.recipeBuilder().duration(100).EUt(4)
    .inputs(<galacticraftcore:enclosed:13>)
    .outputs(<galacticraftcore:basic_block_core:4>)
    .outputs(<appliedenergistics2:part:16>)
    .buildAndRegister();

// Square Lighting Panel
recipes.addShaped("gc_lighting_panel_square", <galacticraftcore:panel_lighting>, [
    [<ore:paneGlass>, <ore:plateIron>, <ore:paneGlass>],
    [<ore:paneGlass>, <ore:plateGlowstone>, <ore:paneGlass>],
    [<ore:paneGlass>, <ore:plateIron>, <ore:paneGlass>]
]);

// Lighting Panels
val lighting_panels as IItemStack[] = [
   <galacticraftcore:panel_lighting>,
    <galacticraftcore:panel_lighting:1>,
    <galacticraftcore:panel_lighting:2>,
    <galacticraftcore:panel_lighting:3>,
    <galacticraftcore:panel_lighting:4>
];

Carving.addGroup("gc_lighting_panels");

for i in lighting_panels {
    Carving.addVariation("gc_lighting_panels", i);
    recipes.remove(i);
}

// Moon Dungeon Bricks
recipes.addShaped("gc_dungeon_bricks", <galacticraftcore:basic_block_moon:14> * 4, [
    [<galacticraftcore:basic_block_moon:4>, <galacticraftcore:basic_block_moon:4>],
    [<galacticraftcore:basic_block_moon:4>, <galacticraftcore:basic_block_moon:4>]
]);

// Cheese Block
mixer.recipeBuilder().EUt(16).duration(100)
    .inputs(<ore:foodCheese> * 8)
    .fluidInputs([<fluid:milk> * 1000])
    .outputs(<galacticraftcore:cheese>)
    .buildAndRegister();

// Arc Lamp
recipes.addShaped("gc_arc_lamp", <galacticraftcore:arclamp>, [
    [<ore:compressedMeteoricIron>, <ore:plateWroughtIron>, <ore:compressedMeteoricIron>],
    [<ore:plateWroughtIron>, <metaitem:battery.hull.lv>, <ore:paneGlass>],
    [<ore:compressedMeteoricIron>, <ore:plateWroughtIron>, <ore:compressedMeteoricIron>]
]);

// Hidden Redstone Wire
canner.recipeBuilder().duration(100).EUt(4)
    .inputs(<galacticraftcore:basic_block_core:4>)
    .inputs(<ore:dustRegularRedstone>)
    .outputs(<galacticraftcore:concealed_redstone>)
    .buildAndRegister();

canner.recipeBuilder().duration(100).EUt(4)
    .inputs(<galacticraftcore:concealed_redstone>)
    .outputs(<galacticraftcore:basic_block_core:4>)
    .outputs(<ore:dustRegularRedstone>.firstItem)
    .buildAndRegister();

// Hidden Redstone Repeater
canner.recipeBuilder().duration(100).EUt(4)
    .inputs(<galacticraftcore:basic_block_core:4>)
    .inputs(<minecraft:repeater>)
    .outputs(<galacticraftcore:concealed_repeater>)
    .buildAndRegister();

canner.recipeBuilder().duration(100).EUt(4)
    .inputs(<galacticraftcore:concealed_repeater>)
    .outputs(<galacticraftcore:basic_block_core:4>)
    .outputs(<minecraft:repeater>)
    .buildAndRegister();

// Hydraulic Platform
recipes.addShaped("gc_hydraulic_platform", <galacticraftcore:platform> * 4, [
    [<ore:compressedSteel>, <ore:compressedSteel>, <ore:compressedSteel>],
    [<ore:craftingPiston>, pistons[1], <ore:craftingPiston>]
]);

// Mars Dungeon Bricks
recipes.addShaped("gc_mars_dungeon_bricks", <galacticraftplanets:mars:7> * 4, [
    [<galacticraftplanets:mars:9>, <galacticraftplanets:mars:9>],
    [<galacticraftplanets:mars:9>, <galacticraftplanets:mars:9>]
]);

// Ceres Dungeon Bricks
recipes.addShaped("gc_ceres_dungeon_bricks", <galaxyspace:dungeon_blocks> * 4, [
    [<galaxyspace:ceresblocks>, <galaxyspace:ceresblocks>],
    [<galaxyspace:ceresblocks>, <galaxyspace:ceresblocks>]
]);

// Ceres Dungeon Top
recipes.addShaped("gc_ceres_dungeon_top", <galaxyspace:ceresblocks:4> * 4, [
    [<galaxyspace:ceresblocks:5>, <galaxyspace:ceresblocks:5>],
    [<galaxyspace:ceresblocks:5>, <galaxyspace:ceresblocks:5>]
]);

// Ceres Dungeon Floor
furnace.addRecipe(<galaxyspace:ceresblocks:5>, <galaxyspace:ceresblocks:1>);

// Venus Dungeon Bricks I
recipes.addShaped("gc_venus_dungeon_bricks", <galacticraftplanets:venus:4> * 4, [
    [<galacticraftplanets:venus_rock_scorched>, <galacticraftplanets:venus_rock_scorched>],
    [<galacticraftplanets:venus_rock_scorched>, <galacticraftplanets:venus_rock_scorched>]
]);

// Venus Dungeon Bricks II
recipes.addShaped("gc_venus_dungeon_bricks_2", <galacticraftplanets:venus:5> * 4, [
    [<galacticraftplanets:venus>, <galacticraftplanets:venus>],
    [<galacticraftplanets:venus>, <galacticraftplanets:venus>]
]);

// IO Dungeon Bricks
recipes.addShaped("gc_io_dungeon_bricks", <galaxyspace:ioblocks:10> * 4, [
    [<galaxyspace:ioblocks:1>, <galaxyspace:ioblocks:1>],
    [<galaxyspace:ioblocks:1>, <galaxyspace:ioblocks:1>]
]);

// IO Dungeon Bricks
chemical_bath.recipeBuilder().duration(100).EUt(4)
    .inputs(<galaxyspace:ioblocks:10>)
    .fluidInputs([<fluid:lava> * 50])
    .outputs(<galaxyspace:dungeon_blocks:1>)
    .buildAndRegister();

// IO Dungeon Top
recipes.addShaped("gc_io_dungeon_top", <galaxyspace:ioblocks:8> * 4, [
    [<galaxyspace:ioblocks:9>, <galaxyspace:ioblocks:9>],
    [<galaxyspace:ioblocks:9>, <galaxyspace:ioblocks:9>]
]);

// IO Dungeon Floor
furnace.addRecipe(<galaxyspace:ioblocks:9>, <galaxyspace:ioblocks:1>);

// Walkway
recipes.addShaped("gc_walkway", <galacticraftplanets:walkway> * 4, [
    [<ore:plateSteel>, <ore:frameGtSteel>, <ore:plateSteel>],
    [<ore:stickSteel>, <ore:plateSteel>, <ore:stickSteel>]
]);

// Fluid Pipe Walkway
canner.recipeBuilder().duration(100).EUt(4)
    .inputs(<galacticraftplanets:walkway>)
    .inputs(<galacticraftcore:fluid_pipe>)
    .outputs(<galacticraftplanets:walkway:2>)
    .buildAndRegister();

canner.recipeBuilder().duration(100).EUt(4)
    .inputs(<galacticraftplanets:walkway:2>)
    .outputs(<galacticraftplanets:walkway>)
    .outputs(<galacticraftcore:fluid_pipe>)
    .buildAndRegister();

// Cobalt Decoration Block
recipes.addShaped("gc_cobalt_decoration_block", <galaxyspace:decoblocks> * 8, [
    [<ore:stoneSmooth>, <ore:stoneSmooth>, <ore:stoneSmooth>],
    [<ore:stoneSmooth>, <ore:plateCobalt>, <ore:stoneSmooth>],
    [<ore:stoneSmooth>, <ore:stoneSmooth>, <ore:stoneSmooth>]
]);

// Magnesium Decoration Block
recipes.addShaped("gc_magnesium_decoration_block", <galaxyspace:decoblocks:1> * 8, [
    [<ore:stoneSmooth>, <ore:stoneSmooth>, <ore:stoneSmooth>],
    [<ore:stoneSmooth>, <ore:plateMagnesium>, <ore:stoneSmooth>],
    [<ore:stoneSmooth>, <ore:stoneSmooth>, <ore:stoneSmooth>]
]);

// Nickel Decoration Block
recipes.addShaped("gc_nickel_decoration_block", <galaxyspace:decoblocks:2> * 8, [
    [<ore:stoneSmooth>, <ore:stoneSmooth>, <ore:stoneSmooth>],
    [<ore:stoneSmooth>, <ore:plateNickel>, <ore:stoneSmooth>],
    [<ore:stoneSmooth>, <ore:stoneSmooth>, <ore:stoneSmooth>]
]);

// Copper Decoration Block
recipes.addShaped("gc_copper_decoration_block", <galaxyspace:decoblocks:3> * 8, [
    [<ore:stoneSmooth>, <ore:stoneSmooth>, <ore:stoneSmooth>],
    [<ore:stoneSmooth>, <ore:plateCopper>, <ore:stoneSmooth>],
    [<ore:stoneSmooth>, <ore:stoneSmooth>, <ore:stoneSmooth>]
]);

// Cheese Slice
cutting_saw.recipeBuilder().duration(80).EUt(4)
    .inputs(<galacticraftcore:cheese>)
    .outputs(<galacticraftcore:food:4> * 6)
    .buildAndRegister();

// Animal Cage
recipes.addShaped("gs_animal_cage", <galaxyspace:gs_basic:32>, [
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<enderio:block_dark_iron_bars>, null, <ore:plateSteel>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]
]);

// Tin Canister
extruder.recipeBuilder().duration(200).EUt(30)
    .inputs(<ore:plateTin> * 2)
    .notConsumable(<metaitem:shape.extruder.cell>)
    .outputs(<galacticraftcore:canister>)
    .buildAndRegister();

// Canned Food
val food = [
    <minecraft:apple>,
    <galacticraftcore:food:6>,
    <minecraft:potato>,
    <minecraft:melon>,
    <minecraft:carrot>
] as IItemStack[];

val canned = [
    <galacticraftcore:food>,
    <galacticraftcore:food:9>,
    <galacticraftcore:food:3>,
    <galacticraftcore:food:2>,
    <galacticraftcore:food:1>
] as IItemStack[];

for i, item in food {
    canner.recipeBuilder().duration(200).EUt(4)
        .inputs(item)
        .inputs(<galacticraftcore:canister>)
        .outputs(canned[i])
        .buildAndRegister();
}

// Ground Beef
lathe.recipeBuilder().duration(100).EUt(16)
    .inputs(<minecraft:beef>)
    .outputs(<galacticraftcore:food:6> * 2)
    .chancedOutput(<galacticraftcore:food:6>, 5000, 2500)
    .buildAndRegister();

// Bun
furnace.addRecipe(<galacticraftcore:food:5>, <metaitem:component.dough>);

// Cheeseburger
forming_press.recipeBuilder().duration(100).EUt(16)
    .inputs(<galacticraftcore:food:5> * 5)
    .inputs(<galacticraftcore:food:4>)
    .inputs(<galacticraftcore:food:7>)
    .outputs(<galacticraftcore:food:8>)
    .buildAndRegister();

// Flag
recipes.addShaped("gc_flag", <galacticraftcore:flag>, [
    [<galacticraftcore:steel_pole>, <galacticraftcore:canvas>, <galacticraftcore:canvas>],
    [<galacticraftcore:steel_pole>, <galacticraftcore:canvas>, <galacticraftcore:canvas>],
    [<galacticraftcore:steel_pole>, <ore:gregWireCutters>, <ore:gregBlades>]
]);

// Pre-Flight Checklist
laser_engraver.recipeBuilder().duration(100).EUt(30)
    .inputs(<ore:craftingBook>)
    .notConsumable(<ore:craftingLensWhite>)
    .outputs(<galacticraftcore:prelaunch_checklist>)
    .buildAndRegister();

// Dark Decoration Block
recipes.addShaped("gc_dark_decoration_block", <galacticraftplanets:asteroids_block:6>, [
    [<ore:stone>, <ore:stone>, <ore:stone>],
    [<ore:stone>, <ore:plateSteel>, <ore:stone>],
    [<ore:stone>, <ore:stone>, <ore:stone>]
]);

recipes.addShaped("gc_dark_decoration_block_slab", <galacticraftcore:slab_gc_half:6> * 6, [
    [<galacticraftplanets:asteroids_block:6>, <galacticraftplanets:asteroids_block:6>, <galacticraftplanets:asteroids_block:6>]
]);

recipes.addShaped("gc_dark_decoration_block_slab_reverse", <galacticraftplanets:asteroids_block:6>, [
    [<galacticraftcore:slab_gc_half:6>],
    [<galacticraftcore:slab_gc_half:6>]
]);

// Grapple
recipes.addShaped("gc_grapple", <galacticraftplanets:grapple>.withTag({Unbreakable: 1 as byte}), [
    [<ore:gregHardHammers>, <ore:boltSteel>, <ore:boltSteel>],
    [<ore:gregWireCutters>, <ore:wireFineSteel>, <ore:boltSteel>],
    [<ore:ringSteel>, <ore:wireFineSteel>, <ore:gregFiles>]
]);
