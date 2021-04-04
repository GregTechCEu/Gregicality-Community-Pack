

# Open Glider something something bad oredict

//Holdy thing
recipes.removeByRecipeName("openglider:glider_scaffolding");
recipes.addShaped(<openglider:hang_glider_part:2>, [
    [<ore:craftingToolFile>, <gregtech:meta_item_1:14033>, <ore:craftingToolWrench>],
    [<gregtech:meta_item_1:14033>, <ore:craftingToolHardHammer>, <gregtech:meta_item_1:14033>], 
    [<gregtech:meta_item_1:14033>, <gregtech:meta_item_1:14033>, <gregtech:meta_item_1:14033>]]);

//Wing Right
recipes.removeByRecipeName("openglider:glider_wing_right");
recipes.addShaped(<openglider:hang_glider_part:1>, [
    [<minecraft:leather>, <gregtech:meta_item_1:14033>, <ore:craftingToolFile>],
    [<minecraft:leather>, <minecraft:leather>, <gregtech:meta_item_1:14033>], 
    [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>]]);

//Wing Left
recipes.removeByRecipeName("openglider:glider_wing_left");
recipes.addShaped(<openglider:hang_glider_part>, [
    [<ore:craftingToolFile>, <gregtech:meta_item_1:14033>, <minecraft:leather>],
    [<gregtech:meta_item_1:14033>, <minecraft:leather>, <minecraft:leather>], 
    [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>]]);

//Advaned Hang Glider
recipes.removeByRecipeName("openglider:glider_adv");
assembler.recipeBuilder()
	.inputs(<openglider:hang_glider_basic>)
	.inputs(<ore:platePlastic> * 6)
    .inputs(<ore:stickAluminium> * 2)
    .inputs(<ore:stickLongAluminium>)
	.outputs(<openglider:hang_glider_advanced>)
	.EUt(96)
	.duration(100)
	.buildAndRegister();