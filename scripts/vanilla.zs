import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;

val name_removals = [
    "minecraft:cake",
    "minecraft:tripwire_hook",
    "minecraft:bread",
    "minecraft:compass",
    "minecraft:clock",
    "minecraft:cookie",
    "minecraft:mushroom_stew",
    "minecraft:golden_apple",
    "minecraft:trapdoor",
    "minecraft:daylight_detector",
    "minecraft:comparator",
    "minecraft:blaze_powder",
    "minecraft:ender_eye",
    "minecraft:speckled_melon",
    "minecraft:golden_carrot",
    "minecraft:shears",
    "gregtech:oak_planks_saw",
    "gregtech:spruce_planks_saw",
    "gregtech:birch_planks_saw",
    "gregtech:jungle_planks_saw",
    "gregtech:acacia_planks_saw",
    "gregtech:dark_oak_planks_saw",
    "minecraft:enchanting_table",
    "minecraft:anvil",
    "minecraft:piston",
    "gregtech:piston_bronze",
    "gregtech:piston_aluminium",
    "gregtech:piston_steel",
    "gregtech:piston_titanium",
    "vanillatools:tool.hammer_iron",
    "vanillatools:tool.hammer_diamond",
    "galacticraftcore:furnace"
] as string[];

for item in name_removals {
    recipes.removeByRecipeName(item);
}
recipes.remove(<minecraft:hopper>);

// Fix Wheat Conflict
compressor.findRecipe(2, [<minecraft:wheat> * 9], null).remove();

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
recipes.addShaped("gt_hopper", <minecraft:hopper>, [[<ore:plateIron>, <ore:gregWrenches>, <ore:plateIron>], [<ore:plateIron>, <ore:chestWood>, <ore:plateIron>], [null, <ore:plateIron>, null]]);

// Nether Wart
createGreenHouseRecipes(<ore:cropNetherWart>, <ore:cropNetherWart>.firstItem);

// Flint
sifter.recipeBuilder().duration(400).EUt(16)
    .inputs(<ore:gravel>)
    .chancedOutput(<minecraft:flint>, 300, 60)
    .chancedOutput(<minecraft:flint>, 1200, 180)
    .chancedOutput(<minecraft:flint>, 1400, 240)
    .chancedOutput(<minecraft:flint>, 2800, 320)
    .chancedOutput(<minecraft:flint>, 3500, 500)
    .chancedOutput(<minecraft:flint>, 4500, 540)
    .buildAndRegister();

// Snow Block
compressor.findRecipe(2, [<minecraft:snowball> * 4], null).remove();
macerator.findRecipe(8, [<minecraft:snow>], null).remove();

// Book
forming_press.recipeBuilder().duration(200).EUt(20)
    .inputs(<ore:plateWood> * 2)
    .inputs(<minecraft:paper> * 3)
    .outputs(<minecraft:book>)
    .buildAndRegister();

// Compass
recipes.addShaped("minecraft_compass", <minecraft:compass>, [[<ore:gregHardHammers>, <ore:plateIron>, null], [<ore:plateIron>, <ore:dustRedstone>, <ore:plateIron>], [null, <ore:plateIron>, <ore:gregScrewDrivers>]]);

// Clock
recipes.addShaped("minecraft_clock", <minecraft:clock>, [[<ore:gregHardHammers>, <ore:plateGold>, null], [<ore:plateGold>, <ore:dustRedstone>, <ore:plateGold>], [null, <ore:plateGold>, <ore:gregScrewDrivers>]]);

// Wood
// TODO Figure out how to remove GTCE saw recipes
val plank = <minecraft:planks>.definition as IItemDefinition;
val log = <minecraft:log>.definition as IItemDefinition;
val log2 = <minecraft:log2>.definition as IItemDefinition;

for i in 0 to 4 {
    recipes.addShaped("minecraft_planks_saw_"~i, plank.makeStack(i)*6, [[<ore:gregSaws>], [log.makeStack(i)]]);
}

for i in 0 to 2 {
    recipes.addShaped("minecraft_planks_saw_"~(i+4), plank.makeStack(i)*6, [[<ore:gregSaws>], [log2.makeStack(i)]]);
}

// Concrete
val concrete_powder = <minecraft:concrete_powder>.definition as IItemDefinition;
val concrete = <minecraft:concrete>.definition as IItemDefinition;

for i in 0 to 16 {
    chemical_bath.recipeBuilder().duration(50).EUt(8)
        .fluidInputs([<fluid:water> * 50])
        .inputs(concrete_powder.makeStack(i))
        .outputs(concrete.makeStack(i))
        .buildAndRegister();
}

// Dead Bush
decay_chamber.recipeBuilder().duration(200).EUt(16)
    .inputs(<minecraft:tallgrass:1>)
    .outputs(<minecraft:deadbush>)
    .buildAndRegister();

// Enchantment Table
recipes.addShaped("minecraft_enchantment_table", <minecraft:enchanting_table>, [[<ore:gregHardHammers>, <minecraft:book>, <ore:gregWrenches>], [<ore:gemDiamond>, <ore:blockObsidian>, <ore:gemDiamond>], [<ore:blockObsidian>, <ore:blockObsidian>, <ore:blockObsidian>]]);

// Anvil
recipes.addShaped("minecraft_anvil", <minecraft:anvil>, [[<ore:blockIron>, <ore:blockIron>, <ore:blockIron>], [<ore:gregHardHammers>, <ore:ingotIron>, <ore:gregWrenches>], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);

// Pistons
val small_gears = [<ore:gearSmallSteel>, <ore:gearSmallAluminium>, <ore:gearSmallStainlessSteel>, <ore:gearSmallTitanium>, <ore:gearSmallHssg>] as IIngredient[];

recipes.addShaped("minecraft_piston", <minecraft:piston>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:cobblestone>, <ore:gearSmallIron>, <ore:cobblestone>], [<ore:cobblestone>, <ore:dustRedstone>, <ore:cobblestone>]]);

for i in 0 to small_gears.length {
    recipes.addShaped("minecraft_piston_"~i, <minecraft:piston> * pow(2, i + 2), [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:cobblestone>, small_gears[i], <ore:cobblestone>], [<ore:cobblestone>, <ore:dustRedstone>, <ore:cobblestone>]]);
}

// Door
val bestDoor = <minecraft:wooden_door>.withTag({display: {Name: "Better Door"}}) as IItemStack;
bestDoor.addTooltip(format.darkPurple("Congratulations, you played yourself."));
recipes.addShaped("minecraft_door", bestDoor, [[<ore:plankWood>, <minecraft:trapdoor>, <ore:gregScrewDrivers>], [<ore:plankWood>, <ore:ringIron>, <ore:screwIron>], [<ore:plankWood>, <ore:plankWood>, <ore:gregSaws>]]);


// Hammers
recipes.addShaped("vanillatools_hammer_iron", <vanillatools:tool.hammer_iron>, [[<ore:plateIron>, <ore:ingotIron>, <ore:plateIron>], [<ore:gregHardHammers>, <ore:stickWood>, <ore:gregFiles>], [null, <ore:stickWood>, null]]);
recipes.addShaped("vanillatools_hammer_diamond", <vanillatools:tool.hammer_diamond>, [[<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>], [<ore:gemFlawedDiamond>, <ore:stickWood>, <ore:gemFlawedDiamond>], [<ore:gregHardHammers>, <ore:stickWood>, <ore:gregFiles>]]);



// Slime Balls
extractor.recipeBuilder().duration(50).EUt(4)
	.inputs(<metaitem:rubber_drop>)
	.outputs(<minecraft:slime_ball> * 2)
	.buildAndRegister();

extractor.findRecipe(5, [<metaitem:rubber_drop>], null).remove();

extractor.recipeBuilder().duration(200).EUt(5)
	.inputs(<minecraft:slime_ball>)
	.outputs(<ore:dustRawRubber>.firstItem * 2)
	.buildAndRegister();

furnace.remove(<metaitem:rubber_drop>);


// Shears
recipes.addShaped("minecraft_shears", <minecraft:shears>, [[<ore:gregHardHammers>, <ore:plateIron>], [<ore:plateIron>, <ore:gregFiles>]]);
