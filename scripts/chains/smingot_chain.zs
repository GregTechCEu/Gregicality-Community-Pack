import crafttweaker.item.IIngredient;

val craft_removals as string[] = 
[
	"nuclearcraft:nuclearcraft:smore:0",
	"nuclearcraft:nuclearcraft:moresmore:0",
	"nuclearcraft:nuclearcraft:foursmore:0",
];
for craft_name in craft_removals {
	recipes.removeByRecipeName(craft_name);
}

assembler.recipeBuilder()
	.inputs(<ore:ingotMarshmallow>)
	.inputs(<nuclearcraft:graham_cracker> * 2)
	.inputs(<ore:ingotHotMilkChocolate>)
	.outputs(<nuclearcraft:smore>)
	.EUt(1920)
	.duration(100)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs(<ore:ingotMarshmallow>)
	.inputs(<nuclearcraft:smore> * 2)
	.inputs(<ore:ingotHotMilkChocolate>)
	.outputs(<nuclearcraft:moresmore>)
	.EUt(7680)
	.duration(200)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs(<ore:ingotMarshmallow>)
	.inputs(<nuclearcraft:moresmore> * 2)
	.inputs(<ore:ingotHotMilkChocolate>)
	.outputs(<nuclearcraft:foursmore>)
	.EUt(30720)
	.duration(400)
	.buildAndRegister();
	
blast_furnace.recipeBuilder()
	.inputs(<ore:ingotChocolate>)
	.outputs(<ore:ingotHotMilkChocolate>.firstItem)
	.property("temperature", 600)
	.EUt(120)
	.duration(200)
	.buildAndRegister();
	
extruder.recipeBuilder()
	.inputs(<ore:crushedCentrifugedMatterMarshmallow>)
	.notConsumable(<metaitem:shape.extruder.rod>)
	.outputs(<ore:ingotMarshmallow>.firstItem * 2)
	.EUt(90)
	.duration(40)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs(<ore:plateCrackerGrahamUngraded>)
	.notConsumable(sensors[3])
	.chancedOutput(<nuclearcraft:graham_cracker>, 7500, 100)
	.EUt(340)
	.duration(40)
	.buildAndRegister();

fluid_solidifier.recipeBuilder()
	.fluidInputs(<liquid:dark_chocolate> * 144)
	.notConsumable(<metaitem:shape.mold.ingot>)
	.outputs(<ore:ingotDarkChocolate>.firstItem)
	.EUt(32)
	.duration(200)
	.buildAndRegister();
	
fluid_solidifier.recipeBuilder()
	.fluidInputs(<liquid:milk_chocolate> * 144)
	.notConsumable(<metaitem:shape.mold.ingot>)
	.outputs(<ore:ingotChocolate>.firstItem)
	.EUt(32)
	.duration(200)
	.buildAndRegister();

fluid_solidifier.recipeBuilder()
	.fluidInputs(<liquid:marshmallow_foam> * 1000)
	.inputs(<metaitem:shape.mold.block>)
	.outputs(<ore:crushedCentrifugedMatterMarshmallow>.firstItem)
	.EUt(60)
	.duration(100)
	.buildAndRegister();

vacuum_freezer.recipeBuilder()
	.inputs(<ore:plateMatterGrahamHot>)
	.outputs(<ore:plateCrackerGrahamUngraded>.firstItem)
	.EUt(60)
	.duration(20)
	.buildAndRegister();
	
mixer.recipeBuilder()
	.fluidInputs(<liquid:dark_chocolate> * 864)
	.fluidInputs(<liquid:milk> * 288)
	.fluidOutputs(<liquid:milk_chocolate> * 1152)
	.EUt(500)
	.duration(280)
	.buildAndRegister();
	
mixer.recipeBuilder()
	.inputs(<ore:dustSugar>)
	.fluidInputs(<liquid:cocoa_butter> * 144)
	.fluidInputs(<liquid:unsweetened_chocolate> * 1008)
	.fluidOutputs(<liquid:dark_chocolate> * 1152)
	.EUt(120)
	.duration(160)
	.buildAndRegister();
	
fluid_heater.recipeBuilder()
	.fluidInputs(<liquid:marshmallow_syrup_mixture> * 1000)
	.property("circuit", 0)
	.fluidOutputs(<liquid:marshmallow_foam> * 5000)
	.EUt(240)
	.duration(300)
	.buildAndRegister();
	
cutting_saw.recipeBuilder()
	.inputs(<ore:plateDenseMatterGrahamHot>)
	.outputs(<ore:plateMatterGrahamHot>.firstItem * 9)
	.EUt(60)
	.duration(200)
	.buildAndRegister();
	
fluid_extractor.recipeBuilder()
	.inputs(<ore:dustCocoa>)
	.fluidOutputs(<liquid:unsweetened_chocolate> * 144)
	.EUt(180)
	.duration(20)
	.buildAndRegister();

macerator.findRecipe(2, [<minecraft:dye:3>], []).remove();
macerator.recipeBuilder()
	.inputs(<ore:plateDensePressCakeGraded>)
	.outputs(<ore:dustCocoa>.firstItem)
	.EUt(120)
	.duration(120)
	.buildAndRegister();
	
mixer.recipeBuilder()
	.inputs(<nuclearcraft:gelatin> * 2)
	.fluidInputs(<liquid:albumen> * 500)
	.fluidInputs(<liquid:sweetened_diluted_cane_syrup_mixture> * 5000)
	.fluidOutputs(<liquid:marshmallow_syrup_mixture> * 5000)
	.EUt(120)
	.duration(300)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<ore:plateDensePressCake>)
	.inputs(sensors[3])
	.chancedOutput(<ore:plateDensePressCakeGraded>.firstItem, 5000, 100)
	.EUt(480)
	.duration(40)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs(<ore:plateDensePressCakeDutched>)
	.inputs(sensors[3])
	.chancedOutput(<ore:plateDensePressCakeGraded>.firstItem, 7500, 300)
	.EUt(480)
	.duration(40)
	.buildAndRegister();
	
metal_bender.recipeBuilder()
	.inputs(<ore:crushedCentrifugedMatterGrahamHot>)
	.property("circuit", 0)
	.outputs(<ore:plateDenseMatterGrahamHot>.firstItem)
	.EUt(45)
	.duration(80)
	.buildAndRegister();
	
centrifuge.recipeBuilder()
	.inputs(<ore:egg>)
	.fluidOutputs(<liquid:albumen> * 100)
	.fluidOutputs(<liquid:yolk> * 100)
	.EUt(45)
	.duration(60)
	.buildAndRegister();
	
fluid_extractor.recipeBuilder()
	.inputs(<ore:crushedCentrifugedChocolateLiquorPressed> * 2)
	.outputs(<ore:plateDensePressCake>.firstItem)
	.fluidOutputs(<liquid:cocoa_butter> * 144)
	.EUt(120)
	.duration(100)
	.buildAndRegister();
	
fluid_extractor.recipeBuilder()
	.inputs(<ore:crushedCentrifugedChocolateLiquorDutchedPressed> * 2)
	.outputs(<ore:plateDensePressCakeDutched>.firstItem)
	.fluidOutputs(<liquid:cocoa_butter> * 144)
	.EUt(120)
	.duration(100)
	.buildAndRegister();
	
furnace.addRecipe(<ore:crushedCentrifugedMatterGrahamHot>.firstItem, <ore:crushedCentrifugedMatterGraham>);

var gelatins as IIngredient[] = [<ore:stickBone>, <ore:leather>, <minecraft:porkchop>, <minecraft:beef>, <minecraft:chicken>, <minecraft:rabbit>, <minecraft:mutton>];

for gelatin_producer in gelatins {
	extractor.recipeBuilder()
		.inputs(gelatin_producer)
		.outputs(<nuclearcraft:gelatin>)
		.EUt(120)
		.duration(100)
		.buildAndRegister();
}

fluid_solidifier.recipeBuilder()
	.fluidInputs(<liquid:fish_oil> * 400)
	.inputs(<metaitem:shape.mold.plate>)
	.outputs(<nuclearcraft:gelatin>)
	.EUt(60)
	.duration(100)
	.buildAndRegister();
	
mixer.recipeBuilder()
	.inputs(<ore:dustSugar>)
	.inputs(<ore:dustWheat> * 3)
	.inputs(<ore:dustSodiumBicarbonate>)
	.fluidInputs(<liquid:butter> * 2000)
	.fluidInputs(<liquid:milk> * 500)
	.outputs(<ore:crushedCentrifugedMatterGraham>.firstItem * 8)
	.EUt(80)
	.duration(200)
	.buildAndRegister();

compressor.recipeBuilder()
	.inputs(<ore:crushedCentrifugedChocolateLiquorRefined>)
	.outputs(<ore:crushedCentrifugedChocolateLiquorPressed>.firstItem)
	.EUt(360)
	.duration(80)
	.buildAndRegister();

compressor.recipeBuilder()
	.inputs(<ore:crushedCentrifugedChocolateLiquorDutched>)
	.outputs(<ore:crushedCentrifugedChocolateLiquorDutchedPressed>.firstItem)
	.EUt(360)
	.duration(80)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<ore:dustSugar>)
	.fluidInputs(<liquid:water> * 5000)
	.fluidInputs(<liquid:cane_syrup> * 5000)
	.fluidOutputs(<liquid:sweetened_diluted_cane_syrup_mixture> * 10000)
	.EUt(120)
	.duration(260)
	.buildAndRegister();

fermenter.recipeBuilder()
	.fluidInputs(<liquid:milk> * 10000)
	.fluidOutputs(<liquid:butter> * 9000)
	.EUt(15)
	.duration(1200)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<ore:dustPotassiumCarbonate>)
	.inputs(<ore:crushedCentrifugedChocolateLiquorRefined>)
	.outputs(<ore:crushedCentrifugedChocolateLiquorDutched>.firstItem)
	.EUt(540)
	.duration(160)
	.buildAndRegister();

fluid_heater.recipeBuilder()
	.fluidInputs(<liquid:unheated_cane_syrup> * 1000)
	.property("circuit", 0)
	.fluidOutputs(<liquid:cane_syrup> * 2000)
	.EUt(120)
	.duration(80)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<ore:dustGlucose> * 9)
	.fluidInputs(<liquid:water> * 2000)
	.fluidOutputs(<liquid:unheated_cane_syrup> * 2400)
	.EUt(80)
	.duration(260)
	.buildAndRegister();
	
cluster_mill.recipeBuilder()
	.inputs(<ore:crushedCentrifugedChocolateLiquor>)
	.outputs(<ore:crushedCentrifugedChocolateLiquorRefined>.firstItem)
	.EUt(200)
	.duration(60)
	.buildAndRegister();

extractor.recipeBuilder()
	.inputs(<nuclearcraft:ground_cocoa_nibs>)
	.outputs(<ore:crushedCentrifugedChocolateLiquor>.firstItem)
	.EUt(270)
	.duration(40)
	.buildAndRegister();

macerator.recipeBuilder()
	.inputs(<ore:gemChippedCocoaNib>)
	.outputs(<nuclearcraft:ground_cocoa_nibs>)
	.EUt(120)
	.duration(40)
	.buildAndRegister();

macerator.recipeBuilder()
	.inputs(<ore:gemChippedCocoaHull>)
	.outputs(<ore:dustSmallWood>.firstItem * 2)
	.EUt(8)
	.duration(15)
	.buildAndRegister();
	
large_centrifuge.recipeBuilder()
	.inputs(<nuclearcraft:roasted_cocoa_beans> * 6)
	.fluidInputs(<liquid:steam> * 10000)
	.outputs(<ore:gemChippedCocoaNib>.firstItem * 6)
	.outputs(<ore:gemChippedCocoaHull>.firstItem * 6)
	.EUt(360)
	.duration(90)
	.buildAndRegister();

pyro.recipeBuilder()
	.inputs(<minecraft:dye:3> * 8)
	.property("circuit", 0)
	.outputs(<nuclearcraft:roasted_cocoa_beans> * 8)
	.EUt(120)
	.duration(30)
	.buildAndRegister();