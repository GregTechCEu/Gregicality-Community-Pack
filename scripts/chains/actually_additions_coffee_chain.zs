import crafttweaker.data.IData;

val basicCoffeeData as IData = {"1": {Duration: 90, ID: 1, Amplifier: 1}, 
                                "2": {Duration: 3, ID: 10, Amplifier: 0}, Counter: 2} as IData;
val enhancedCoffeeData as IData = {'1': {Duration: 50, ID: 1, Amplifier: 3}, 
                                   '2': {Duration: 10, ID: 10, Amplifier: 2}, 
                                   '3': {Duration: 10, ID: 5, Amplifier: 1}, 
                                   '4': {Duration: 10, ID: 11, Amplifier: 1}, Counter: 4} as IData;

val basicCoffee = <actuallyadditions:item_coffee>.withTag(basicCoffeeData);
val enhancedCoffee = <actuallyadditions:item_coffee>.withTag(enhancedCoffeeData);


fluid_canner.recipeBuilder()
	.fluidInputs(<liquid:coffee> * 100)
	.inputs(<actuallyadditions:item_misc:14>)
	.outputs(basicCoffee)
	.EUt(40)
	.duration(20)
	.buildAndRegister();
	
fluid_canner.recipeBuilder()
	.fluidInputs(<liquid:energized_coffee> * 100)
	.inputs(<actuallyadditions:item_misc:14>)
	.outputs(enhancedCoffee)
	.EUt(40)
	.duration(20)
	.buildAndRegister();
	
brewer.recipeBuilder()
	.fluidInputs(<liquid:coffee> * 10)
	.inputs(<minecraft:sugar>)
	.fluidOutputs(<liquid:energized_coffee> * 10) //please don't do this again
	.EUt(120)
	.duration(100)
	.buildAndRegister();
	
chemical_dehydrator.recipeBuilder()
	.inputs(<ore:dustCoffeeGrounds>)
	.inputs(<actuallyadditions:item_misc:0>) // This is a paper cone, or a coffee filter, if you like.
	.fluidInputs(<liquid:steam> * 1600)
	.outputs(<ore:dustPaper>.firstItem * 3)
	.fluidOutputs(<liquid:coffee> * 10)
	.EUt(120)
	.duration(30)
	.buildAndRegister();

macerator.recipeBuilder()
	.inputs(<ore:gemChippedRoastedCoffeeLarge>)
	.outputs(<ore:dustCoffeeGrounds>.firstItem * 2)
	.EUt(20)
	.duration(40)
	.buildAndRegister();
	
macerator.recipeBuilder()
	.inputs(<ore:gemChippedRoastedCoffeeSmall>)
	.outputs(<ore:dustCoffeeGrounds>.firstItem)
	.EUt(20)
	.duration(20)
	.buildAndRegister();

pyro.recipeBuilder()
	.inputs(<ore:gemChippedGradedCoffeeLarge>)
	.property("circuit", 0)
	.outputs(<ore:gemChippedRoastedCoffeeLarge>.firstItem)
	.fluidOutputs(<liquid:water> * 2000)
	.EUt(120)
	.duration(80)
	.buildAndRegister();

pyro.recipeBuilder()
	.inputs(<ore:gemChippedGradedCoffeeSmall>)
	.property("circuit", 0)
	.outputs(<ore:gemChippedRoastedCoffeeSmall>.firstItem)
	.fluidOutputs(<liquid:water> * 1000)
	.EUt(120)
	.duration(40)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs(<ore:gemChippedHulledCoffeeLarge>)
	.notConsumable(sensors[1])
	.chancedOutput(<ore:gemChippedGradedCoffeeLarge>.firstItem, 5000, 10)
	.EUt(60)
	.duration(20)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs(<ore:gemChippedHulledCoffeeSmall>)
	.notConsumable(sensors[1])
	.chancedOutput(<ore:gemChippedGradedCoffeeSmall>.firstItem, 5000, 10)
	.EUt(60)
	.duration(10)
	.buildAndRegister();
	
cluster_mill.recipeBuilder()
	.inputs(<ore:gemChippedDriedCoffeeLarge>)
	.outputs(<ore:gemChippedHulledCoffeeLarge>.firstItem)
	.EUt(30)
	.duration(10)
	.buildAndRegister();
	
cluster_mill.recipeBuilder()
	.inputs(<ore:gemChippedDriedCoffeeSmall>)
	.outputs(<ore:gemChippedHulledCoffeeSmall>.firstItem)
	.EUt(30)
	.duration(10)
	.buildAndRegister();
	
chemical_dehydrator.recipeBuilder()
	.inputs(<ore:gemChippedWetCoffeeLarge> * 32)
	.outputs(<ore:gemChippedDriedCoffeeLarge>.firstItem * 32)
	.fluidOutputs(<liquid:water> * 24000)
	.EUt(30)
	.duration(3600)
	.buildAndRegister();
	
chemical_dehydrator.recipeBuilder()
	.inputs(<ore:gemChippedWetCoffeeSmall> * 64)
	.outputs(<ore:gemChippedDriedCoffeeSmall>.firstItem * 64)	
	.fluidOutputs(<liquid:water> * 24000)
	.EUt(30)
	.duration(1800)
	.buildAndRegister();
	
chemical_bath.recipeBuilder()
	.inputs(<ore:gemChippedBasicCoffeeLarge> * 32)
	.outputs(<ore:gemChippedWetCoffeeLarge>.firstItem * 32)
	.fluidInputs(<liquid:water> * 32000)
	.EUt(60)
	.duration(3600)
	.buildAndRegister();
	
chemical_bath.recipeBuilder()
	.inputs(<ore:gemChippedBasicCoffeeSmall> * 64)
	.outputs(<ore:gemChippedWetCoffeeSmall>.firstItem * 64)	
	.fluidInputs(<liquid:water> * 32000)
	.EUt(60)
	.duration(3600)
	.buildAndRegister();
	
centrifuge.recipeBuilder()
	.inputs(<ore:gemChippedBasicCoffeeUnsorted> * 30)
	.outputs(<ore:gemChippedBasicCoffeeLarge>.firstItem * 9)
	.chancedOutput(<ore:gemChippedBasicCoffeeLarge>.firstItem, 5000, 200)
	.outputs(<ore:gemChippedBasicCoffeeSmall>.firstItem * 19)
	.chancedOutput(<ore:gemChippedBasicCoffeeSmall>.firstItem, 5000, 200)
	.EUt(20)
	.duration(600)
	.buildAndRegister();

cutting_saw.recipeBuilder()
	.inputs(<ore:cropCoffee> * 5)
	.outputs(<ore:gemChippedBasicCoffeeUnsorted>.firstItem * 9)
	.chancedOutput(<ore:gemChippedBasicCoffeeUnsorted>.firstItem, 5000, 500)
	.EUt(60)
	.duration(20)
	.buildAndRegister();