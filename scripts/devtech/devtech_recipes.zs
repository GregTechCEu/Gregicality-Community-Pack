import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.FuelRecipe;
import mods.gtadditions.recipe.Utils;
import mods.gtadditions.recipe.LargeRecipeMap;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

val removals = [
    <meta_tile_entity:quantum_tank.mv>,
    <meta_tile_entity:quantum_tank.hv>,
    <meta_tile_entity:quantum_tank.ev>,
    <meta_tile_entity:quantum_tank.iv>,
    <meta_tile_entity:quantum_chest.mv>,
    <meta_tile_entity:quantum_chest.hv>,
    <meta_tile_entity:quantum_chest.ev>,
    <meta_tile_entity:quantum_chest.iv>
] as IItemStack[];

for item in removals {
    mods.jei.JEI.removeAndHide(item);
}

var id = 5000;

val tankComponents as IIngredient[] = [null, <ore:pipeLargeSteel>, <ore:pipeLargePlastic>, <ore:pipeLargeStainlessSteel>, 
    field_generators[1], field_generators[2], 
    field_generators[3], field_generators[4], 
    field_generators[5], field_generators[6]];

val chestComponents as IIngredient[] = [null, <storagedrawers:upgrade_storage:1>, <storagedrawers:upgrade_storage:2>, <storagedrawers:upgrade_storage:3>, 
    field_generators[1], field_generators[2], 
    field_generators[3], field_generators[4], 
    field_generators[5], field_generators[6]];


val machine = <gregtech:machine>.definition;

var tier = 0;
// Super Chests
recipes.addShaped("gt_super_chest_0", machine.makeStack(id), [
    [tieredPlates[tier], <ore:screwWroughtIron>, tieredPlates[tier]],
    [circuits[tier], hulls[tier], circuits[tier]],
    [tieredPlates[tier], <ore:drawerBasic>, tieredPlates[tier]]
]);
tier += 1;

for i in (id + 1) to id + 9 {
    recipes.addShaped("gt_super_chest_" + (i - id), machine.makeStack(i), [
        [circuits[tier], conveyors[tier], circuits[tier]],
        [tieredPlates[tier], hulls[tier], tieredPlates[tier]],
        [circuits[tier], chestComponents[tier], circuits[tier]]
    ]);
    tier += 1;
}

id += 9;

// Super Tanks
tier = 0;
recipes.addShaped("gt_super_tank_0", machine.makeStack(id), [
    [tieredPlates[tier], <ore:pipeLargeBronze>, tieredPlates[tier]],
    [circuits[tier], hulls[tier], circuits[tier]],
    [tieredPlates[tier], <ore:screwWroughtIron>, tieredPlates[tier]]
]);
tier += 1;


for i in (id + 1) to id + 9 {
    recipes.addShaped("gt_super_tank_" + (i - id), machine.makeStack(i), [
        [circuits[tier], tankComponents[tier], circuits[tier]],
        [tieredPlates[tier], hulls[tier], tieredPlates[tier]],
        [circuits[tier], pumps[tier], circuits[tier]]
    ]);
    tier += 1;
}

id += 9;

// Stock manipulators
tier = 1;
for i in (id + 1) to id + 9 {
    recipes.addShaped("gt_stock_manipulator" + (i - id), machine.makeStack(i), [
        [tieredGlass[tier], sensors[tier], tieredGlass[tier]],
        [circuits[tier], hulls[tier], circuits[tier]],
        [tieredCables[tier], emitters[tier], tieredCables[tier]]
    ]);
    tier += 1;
}

