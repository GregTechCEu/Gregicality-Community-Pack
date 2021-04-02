import crafttweaker.item.IItemStack;

val name_removals = [
    "minecraft:cake"
] as string[];

for item in name_removals {
    recipes.removeByRecipeName(item);
}


// Shulker Shell
implosion_compressor.recipeBuilder().duration(20).EUt(30)
    .inputs(<minecraft:chorus_fruit_popped>)
    .property("explosives", 4)
    .outputs(<minecraft:shulker_shell>)
    .buildAndRegister();

// Lava
fluid_extractor.recipeBuilder().duration(300).EUt(480)
    .inputs(<ore:stone> * 8)
    .fluidOutputs(<fluid:lava> * 1000)
    .buildAndRegister();

// Blaze Rod
compressor.recipeBuilder().duration(200).EUt(30)
    .inputs(<ore:dustBlaze> * 4)
    .outputs(<ore:stickBlaze>.firstItem)
    .buildAndRegister();

// Clay
chemical_bath.recipeBuilder().duration(100).EUt(20)
    .inputs(<ore:dustRegularClay>)
    .fluidInputs([<fluid:water> * 100])
    .outputs(<minecraft:clay_ball>)
    .buildAndRegister();

// Hopper
recipes.remove(<minecraft:hopper>);
recipes.addShaped("gt_hopper", <minecraft:hopper>, [[<ore:plateIron>, <ore:gregWrenches>, <ore:plateIron>], [<ore:plateIron>, <ore:chestWood>, <ore:plateIron>], [null, <ore:plateIron>, null]]);
// Nether Wart

createGreenHouseRecipes(<ore:cropNetherWart>, <ore:cropNetherWart>.firstItem);
