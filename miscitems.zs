

# Open Glider something something bad oredict

//Holdy thing
recipes.removeByRecipeName("openglider:glider_scaffolding");
recipes.addShaped(<openglider:hang_glider_part:2>, [
    [<ore:craftingToolFile>, <ore:stickIron>, <ore:craftingToolWrench>],
    [<ore:stickIron>, <ore:craftingToolHardHammer>, <ore:stickIron>], 
    [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>]]);

//Wing Right
recipes.removeByRecipeName("openglider:glider_wing_right");
recipes.addShaped(<openglider:hang_glider_part:1>, [
    [<minecraft:leather>, <ore:stickIron>, <ore:craftingToolFile>],
    [<minecraft:leather>, <minecraft:leather>, <ore:stickIron>], 
    [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>]]);

//Wing Left
recipes.removeByRecipeName("openglider:glider_wing_left");
recipes.addShaped(<openglider:hang_glider_part>, [
    [<ore:craftingToolFile>, <ore:stickIron>, <minecraft:leather>],
    [<ore:stickIron>, <minecraft:leather>, <minecraft:leather>], 
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