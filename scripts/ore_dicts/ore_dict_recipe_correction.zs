import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;

// Crafting Table ----------------------------------------------------

var name_removals = [
    // Clay
    "gregtech:block_decompress_clay",
    // Integrated Circuit
    "gtadditions:basic_to_configurable_circuit",
    // Nuggets
    "gregtech:nugget_disassembling_emerald",
    "gregtech:nugget_disassembling_diamond",
    // Block Unpacking
    "nuclearcraft:item.meta_item",
    "nuclearcraft:item.meta_item_1",
    "nuclearcraft:item.meta_item_2",
    "nuclearcraft:item.meta_item_3",
    "nuclearcraft:item.meta_item_4",
    "nuclearcraft:item.meta_item_5",
    "nuclearcraft:item.meta_item_6",
    "nuclearcraft:item.meta_item_7",
    "nuclearcraft:item.meta_item_8",
    "nuclearcraft:item.meta_item_9",
    "nuclearcraft:item.meta_item_10",
    "nuclearcraft:item.meta_item_11",
    "nuclearcraft:item.meta_item_12",
    "nuclearcraft:item.meta_item_13",
    "nuclearcraft:item.meta_item_14",
    "nuclearcraft:item.meta_item_15",
    "nuclearcraft:item.meta_item_16",
    "nuclearcraft:item.meta_item_17",
    "nuclearcraft:item.meta_item_18",
    "nuclearcraft:item.meta_item_19",
    "nuclearcraft:item.meta_item_20",
    "nuclearcraft:item.meta_item_21",
    // Dusts
    "enderio:ender_dust",
    // Glass Panes
    "enderio:compatibility_glass_pane",
    // Gears
    "enderio:gear_just_to_be_sure",
    "enderio:gear_better_save_than_sorry",
    "enderio:gear_wood",
    "enderio:gear_ae2_messes_things_up",
    "enderio:gear_stone",
    // Chests
    "enderio:tweak_chest_from_wood",
    // Nuggets to Ingots
    // Blocks
    "nuclearcraft:tile.compressed",
    "nuclearcraft:tile.compressed_1",
    "nuclearcraft:tile.compressed_2",
    "nuclearcraft:tile.compressed_3",
    "nuclearcraft:tile.compressed_4",
    "nuclearcraft:tile.compressed_5",
    "nuclearcraft:tile.compressed_6",
    "nuclearcraft:tile.compressed_7",
    "appliedenergistics2:decorative/quartz_block_pure",
    // Other
    "quark:hopper",
    "enderio:tweak_wood_hopper",
    "minecraft:hopper"
] as string[];

for item in name_removals {
    recipes.removeByRecipeName(item);
}


// Furnace ----------------------------------------------------

var furnace_removals = [
    <metaitem:ingotAluminium>,
    <metaitem:ingotBlackSteel>,
    <metaitem:ingotTungsten>,
    <metaitem:ingotTitanium>,
    <metaitem:ingotOsmium>,
    <minecraft:coal:1>
] as IIngredient[];

for item in furnace_removals {
    furnace.remove(item);
}

<ore:circuitBasic>.remove(<metaitem:circuit.advanced_parts>);
<ore:circuitGood>.remove(<metaitem:circuit.advanced>);
<ore:circuitGood>.remove(<metaitem:circuit.good>);
<ore:circuitElite>.remove(<metaitem:circuit.data_control>);
<ore:circuitElite>.remove(<metaitem:circuit.crystal_processor>);