import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.CokeOvenRecipeBuilder;
import mods.gregtech.recipe.PBFRecipeBuilder;

recipes.remove(<gregtech:machine:3>);
recipes.remove(<gregtech:machine:5>);
recipes.remove(<gregtech:machine_casing:10>);
recipes.removeByRecipeName("gtadditions:coke_brick");

recipes.addShaped(<gtadditions:ga_meta_item:32036> * 8, [[<ore:ingotClay>, <ore:ingotClay>, <ore:ingotClay>],[<ore:sand>, <ore:formWood>, <minecraft:sand>], [<ore:sand>, <ore:sand>, <ore:sand>]]);
recipes.addShaped(<gregtech:machine_casing:10>, [[null, <ore:plateBronze>, null],[<ore:plateBronze>, <ore:craftingToolHardHammer>, <ore:plateBronze>], [null, <ore:plateBronze>, null]]);
recipes.addShaped(<gregtech:machine:3>, [[null, <ore:blockGlassColorless>, null],[<ore:pipeSmallBronze>, <ore:plateSilver>, <ore:pipeSmallBronze>], [null, <gregtech:machine_casing:11>, null]]);
recipes.addShaped(<gregtech:machine:1>, [[null, <ore:plateBronze>, null],[<ore:plateBronze>, <ore:craftingFurnace>, <ore:plateBronze>], [null, <ore:blockBrick>, null]]);
recipes.addShaped(<gregtech:machine:5>, [[null, <ore:plateBronze>, null],[<ore:plateBronze>, <ore:blockGlassColorless>, <ore:plateBronze>], [null, <gregtech:machine_casing:11>, null]]);
recipes.addShaped(<gregtech:machine_casing:11>, [[null, <ore:plateBronze>, null],[null, <ore:blockBrick>, null], [null, <ore:plateBronze>, null]]);

for recipe in RecipeMaps.getCokeOvenRecipes() {
    recipe.remove();
}

CokeOvenRecipeBuilder.start()
	.input(<ore:logWood>)
	.output(<ore:gemCharcoal>.firstItem)
	.fluidOutput(<liquid:creosote> * 250)
	.duration(125)
	.buildAndRegister();
	
CokeOvenRecipeBuilder.start()
	.input(<ore:gemCoal>)
	.output(<ore:gemCoke>.firstItem)
	.fluidOutput(<liquid:creosote> * 500)
	.duration(125)
	.buildAndRegister();
	
CokeOvenRecipeBuilder.start()
	.input(<ore:blockCoal>)
	.output(<ore:blockCoke>.firstItem)
	.fluidOutput(<liquid:creosote> * 4500)
	.duration(125 * 9)
	.buildAndRegister();
	
for recipe in RecipeMaps.getPrimitiveBlastFurnaceRecipes() {
    recipe.remove();
}

PBFRecipeBuilder.start()
    .input(<ore:ingotIron> * 1)
    .output(<ore:ingotSteel>.firstItem * 1)
    .duration(250)
    .fuelAmount(2)
    .buildAndRegister();
	
PBFRecipeBuilder.start()
    .input(<ore:blockIron> * 1)
    .output(<ore:blockSteel>.firstItem * 1)
    .duration(2250)
    .fuelAmount(18)
    .buildAndRegister();

PBFRecipeBuilder.start()
    .input(<ore:ingotWroughtIron> * 1)
    .output(<ore:ingotSteel>.firstItem * 1)
    .duration(100)
    .fuelAmount(2)
    .buildAndRegister();
	
PBFRecipeBuilder.start()
    .input(<ore:blockWroughtIron> * 1)
    .output(<ore:blockSteel>.firstItem * 1)
    .duration(600)
    .fuelAmount(18)
    .buildAndRegister();