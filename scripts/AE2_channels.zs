#norun
// If you want to play with AE2 Channels, remove or comment out the "#norun" from the first line of the file

// Controller
recipes.removeByRecipeName("appliedenergistics2:network/blocks/controller");
assembler.recipeBuilder()
	.inputs(<ore:frameGtAluminium>)
	.inputs(circuits[2])
	.inputs(<ore:wireFineCopper> * 16)
	.inputs(tieredPlates[2] * 4)
	.inputs(<ore:platePlastic> * 4)
	.inputs(sensors[2])
	.inputs(emitters[2])
	.inputs(engineering_processor * 8)
	.outputs(<appliedenergistics2:controller> * 4)
	.EUt(120)
	.duration(100)
	.buildAndRegister();