import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;

val name_removals = [
    "minecraft:iron_ingot_from_nuggets",
    "minecraft:gold_ingot_from_nuggets",
    "minecraft:gold_nugget",
    "minecraft:iron_nugget",
    "enderio:tweak_stick_from_wood",
    "enderio:ender_defragmentation",
    "minecraft:bookshelf",
    "buildinggadgets:templatemanager"
] as string[];

for item in name_removals {
	recipes.removeByRecipeName(item);
}


val hidden = [
    <minecraft:gold_ore>,
    <minecraft:iron_ore>,
    <minecraft:coal_ore>,
    <minecraft:lapis_ore>,
    <minecraft:diamond_ore>,
    <minecraft:redstone_ore>,
    <minecraft:emerald_ore>,
    <minecraft:quartz_ore>,
    <ore:itemGrindingBallSignalum>.firstItem,
    <ore:itemGrindingBallEnderium>.firstItem,
    <ore:itemGrindingBallLumium>.firstItem,
    <ore:dustSoularium>.firstItem,
    <ore:itemPlantgreen>.firstItem,
    <ore:itemPlantbrown>.firstItem,
    <enderio:item_material:48>,
    <enderio:item_material:49>,
    <enderio:item_material:50>,
    <ore:itemConfusingDust>.firstItem,
    <ore:itemEnderFragment>.firstItem,
    <ore:itemWitheringDust>.firstItem,
    <ore:itemRemoteAwarenessUpgrade>.firstItem,
    <ore:itemInfinityGoop>.firstItem,
    <enderio:block_infinity_fog>,
    <enderio:block_dark_steel_ladder>,
    <enderio:block_confusion_charge>,
    <enderio:block_concussion_charge>,
    <enderio:block_ender_charge>,
    <enderio:item_cold_fire_igniter>,
    <enderio:item_basic_item_filter>,
    <enderio:item_advanced_item_filter>,
    <enderio:item_soul_filter_normal>,
    <enderio:item_enchantment_filter_normal>,
    <ore:nuggetEnergeticSilver>.firstItem,
    <ore:ingotEnergeticSilver>.firstItem,
    <ore:blockEnergeticSilver>.firstItem,
    <ore:toolTreetap>.firstItem,
    <enderio:item_capacitor_grainy>,
    <enderio:item_capacitor_totemic>,
    <buildinggadgets:constructionblock>,
    <buildinggadgets:template>,
    <buildinggadgets:templatemanager>
] as IItemStack[];

for item in hidden {
    mods.jei.JEI.hide(item);
}

// Sugar Block Maceration
macerator.findRecipe(8, [<ore:blockSugar>.firstItem], null).remove();

// EIO Glass
val fusedQuartz = <enderio:block_fused_quartz>.definition as IItemDefinition;
val enlightenedFusedQuartz = <enderio:block_enlightened_fused_quartz>.definition as IItemDefinition;
val enlightenedFusedGlass = <enderio:block_enlightened_fused_glass>.definition as IItemDefinition;
val darkFusedQuartz = <enderio:block_dark_fused_quartz>.definition as IItemDefinition;
val darkFusedGlass = <enderio:block_dark_fused_glass>.definition as IItemDefinition;
val holyFusedQuarks = <enderio:block_holy_fused_quartz>.definition as IItemDefinition;
val holyFusedGlass = <enderio:block_holy_fused_glass>.definition as IItemDefinition;
val holyEnlightenedFusedQuartz = <enderio:block_holy_enlightened_fused_quartz>.definition as IItemDefinition;
val holyEnlightenedFusedGlass = <enderio:block_holy_enlightened_fused_glass>.definition as IItemDefinition;
val holyDarkFusedQuartz = <enderio:block_holy_dark_fused_quartz>.definition as IItemDefinition;
val holyDarkFusedGlass = <enderio:block_holy_dark_fused_glass>.definition as IItemDefinition;
val unholyFusedQuartz = <enderio:block_unholy_fused_quartz>.definition as IItemDefinition;
val unholyFusedGlass = <enderio:block_unholy_fused_glass>.definition as IItemDefinition;
val unholyEnlightenedFusedQuartz = <enderio:block_unholy_enlightened_fused_quartz>.definition as IItemDefinition;
val unholyEnlightenedFusedGlass = <enderio:block_unholy_enlightened_fused_glass>.definition as IItemDefinition;
val unholyDarkFusedQuartz = <enderio:block_unholy_dark_fused_quartz>.definition as IItemDefinition;
val unholyDarkFusedGlass = <enderio:block_unholy_dark_fused_glass>.definition as IItemDefinition;
val pastureFusedQuartz = <enderio:block_pasture_fused_quartz>.definition as IItemDefinition;
val pastureFusedGlass = <enderio:block_pasture_fused_glass>.definition as IItemDefinition;
val pastureEnlightenedFusedQuartz = <enderio:block_pasture_enlightened_fused_quartz>.definition as IItemDefinition;
val pastureEnlightenedFusedGlass = <enderio:block_pasture_enlightened_fused_glass>.definition as IItemDefinition;
val pastureDarkFusedQuartz = <enderio:block_pasture_dark_fused_quartz>.definition as IItemDefinition;
val pastureDarkFusedGlass = <enderio:block_pasture_dark_fused_glass>.definition as IItemDefinition;
val notHolyFusedQuartz = <enderio:block_not_holy_fused_quartz>.definition as IItemDefinition;
val notHolyFusedGlass = <enderio:block_not_holy_fused_glass>.definition as IItemDefinition;
val notHolyEnlightenedFusedQuartz = <enderio:block_not_holy_enlightened_fused_quartz>.definition as IItemDefinition;
val notHolyEnlightenedFusedGlass = <enderio:block_not_holy_enlightened_fused_glass>.definition as IItemDefinition;
val notHolyDarkFusedQuartz = <enderio:block_not_holy_dark_fused_quartz>.definition as IItemDefinition;
val notHolyDarkFusedGlass = <enderio:block_not_holy_dark_fused_glass>.definition as IItemDefinition;
val notUnholyFusedQuartz = <enderio:block_not_unholy_fused_quartz>.definition as IItemDefinition;
val notUnholyFusedGlass = <enderio:block_not_unholy_fused_glass>.definition as IItemDefinition;
val notUnholyEnlightenedFusedQuartz = <enderio:block_not_unholy_enlightened_fused_quartz>.definition as IItemDefinition;
val notUnholyEnlightenedFusedGlass = <enderio:block_not_unholy_enlightened_fused_glass>.definition as IItemDefinition;
val notUnholyDarkFusedQuartz = <enderio:block_not_unholy_dark_fused_quartz>.definition as IItemDefinition;
val notUnholyDarkFusedGlass = <enderio:block_not_unholy_dark_fused_glass>.definition as IItemDefinition;
val notPastureFusedQuartz = <enderio:block_not_pasture_fused_quartz>.definition as IItemDefinition;
val notPastureFusedGlass = <enderio:block_not_pasture_fused_glass>.definition as IItemDefinition;
val notPastureEnlightenedFusedQuartz = <enderio:block_not_pasture_enlightened_fused_quartz>.definition as IItemDefinition;
val notPastureEnlightenedFusedGlass = <enderio:block_not_pasture_enlightened_fused_glass>.definition as IItemDefinition;
val notPastureDarkFusedQuartz = <enderio:block_not_pasture_dark_fused_quartz>.definition as IItemDefinition;
val notPastureDarkFusedGlass = <enderio:block_not_pasture_dark_fused_glass>.definition as IItemDefinition;

val eio_glass = [
    fusedQuartz,
    enlightenedFusedQuartz,
    enlightenedFusedGlass,
    darkFusedQuartz,
    darkFusedGlass,
    holyFusedQuarks,
    holyFusedGlass,
    holyEnlightenedFusedQuartz,
    holyEnlightenedFusedGlass,
    holyDarkFusedQuartz,
    holyDarkFusedGlass,
    unholyFusedQuartz,
    unholyFusedGlass,
    unholyEnlightenedFusedQuartz,
    unholyEnlightenedFusedGlass,
    unholyDarkFusedQuartz,
    unholyDarkFusedGlass,
    pastureFusedQuartz,
    pastureFusedGlass,
    pastureEnlightenedFusedQuartz,
    pastureEnlightenedFusedGlass,
    pastureDarkFusedQuartz,
    pastureDarkFusedGlass,
    notHolyFusedQuartz,
    notHolyFusedGlass,
    notHolyEnlightenedFusedQuartz,
    notHolyEnlightenedFusedGlass,
    notHolyDarkFusedQuartz,
    notHolyDarkFusedGlass,
    notUnholyFusedQuartz,
    notUnholyFusedGlass,
    notUnholyEnlightenedFusedQuartz,
    notUnholyEnlightenedFusedGlass,
    notUnholyDarkFusedQuartz,
    notUnholyDarkFusedGlass,
    notPastureFusedQuartz,
    notPastureFusedGlass,
    notPastureEnlightenedFusedQuartz,
    notPastureEnlightenedFusedGlass,
    notPastureDarkFusedQuartz,
    notPastureDarkFusedGlass,
] as IItemDefinition[];

for item in eio_glass {
    for i in 1 to 16 {
        mods.jei.JEI.hide(item.makeStack(i));
    }
}