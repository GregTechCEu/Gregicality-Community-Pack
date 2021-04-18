// Circuits
// Resistor
recipes.addShaped("gt_resistor", <metaitem:component.resistor>, [[<metaitem:rubber_drop>, <ore:wireFineCopper>, <metaitem:rubber_drop>], [<ore:paper>, <ore:dustRegularCharcoal> | <ore:dustRegularCoal> | <ore:dustRegularCarbon>, <ore:paper>], [null, <ore:wireFineCopper>, null]]);

mods.gtadditions.recipe.Utils.removeRecipeByOutput(assembler, [<metaitem:component.resistor>], [], false);

assembler.recipeBuilder().EUt(16).duration(100)
    .inputs(<metaitem:rubber_drop>)
    .inputs(<ore:dustRegularCharcoal> | <ore:dustRegularCoal> | <ore:dustRegularCarbon>)
    .inputs(<ore:wireFineCopper> * 2)
    .outputs(<metaitem:component.resistor>)
    .buildAndRegister();

assembler.recipeBuilder().EUt(16).duration(100)
    .inputs(<ore:dustRegularCharcoal> | <ore:dustRegularCoal> | <ore:dustRegularCarbon>)
    .inputs(<ore:wireFineCopper> * 4)
    .fluidInputs([<fluid:glue> * 250])
    .outputs(<metaitem:component.resistor> * 4)
    .buildAndRegister();

assembler.recipeBuilder().EUt(16).duration(100)
    .inputs(<ore:dustRegularCharcoal> | <ore:dustRegularCoal> | <ore:dustRegularCarbon>)
    .inputs(<ore:wireFineAnnealedCopper> * 4)
    .fluidInputs([<fluid:glue> * 250])
    .outputs(<metaitem:component.resistor> * 8)
    .buildAndRegister();

// Diode
mods.gtadditions.recipe.Utils.removeRecipeByOutput(assembler, [<metaitem:component.diode>], [], false);

assembler.recipeBuilder().EUt(30).duration(80)
    .inputs(<ore:wireFineCopper> * 4, <metaitem:wafer.silicon>)
    .fluidInputs([<fluid:glass> * 288])
    .outputs(<metaitem:component.diode> * 2)
    .buildAndRegister();

assembler.recipeBuilder().EUt(30).duration(80)
    .inputs(<ore:wireFineCopper> * 4, <metaitem:wafer.silicon>)
    .fluidInputs([<fluid:plastic> * 144])
    .outputs(<metaitem:component.diode> * 4)
    .buildAndRegister();

assembler.recipeBuilder().EUt(30).duration(80)
    .inputs(<ore:wireFineCopper> * 4, <ore:dustSmallGalliumArsenide>)
    .fluidInputs([<fluid:glass> * 288])
    .outputs(<metaitem:component.diode> * 4)
    .buildAndRegister();

assembler.recipeBuilder().EUt(30).duration(80)
    .inputs(<ore:wireFineCopper> * 4, <ore:dustSmallGalliumArsenide>)
    .fluidInputs([<fluid:plastic> * 144])
    .outputs(<metaitem:component.diode> * 8)
    .buildAndRegister();

assembler.recipeBuilder().EUt(120).duration(80)
    .inputs(<ore:wireFineAnnealedCopper> * 4, <ore:dustSmallGalliumArsenide>)
    .fluidInputs([<fluid:plastic> * 144])
    .outputs(<metaitem:component.diode> * 16)
    .buildAndRegister();

// Vacuum Tube
mods.gtadditions.recipe.Utils.removeRecipeByOutput(assembler, [circuits[0].itemArray[0]], [], false);

recipes.addShaped("gt_vacuum_tube", circuits[0].itemArray[0], [[null, <metaitem:component.glass.tube>, null], [null, <ore:springSmallCopper>, null], [<ore:stickSteel>, null, <ore:stickSteel>]]);

assembler.recipeBuilder().EUt(16).duration(160)
    .inputs(<metaitem:component.glass.tube>, <ore:springSmallCopper>, <ore:boltSteel> * 2)
    .outputs(circuits[0].itemArray[0] * 2)
    .buildAndRegister();

assembler.recipeBuilder().EUt(30).duration(40)
    .inputs(<metaitem:component.glass.tube>, <ore:wireFineCopper>, <ore:boltSteel> * 1)
    .fluidInputs([<fluid:red_alloy> * 18])
    .outputs(circuits[0].itemArray[0] * 3)
    .buildAndRegister();

assembler.recipeBuilder().EUt(30).duration(40)
    .inputs(<metaitem:component.glass.tube>, <ore:wireFineAnnealedCopper>, <ore:boltSteel> * 1)
    .fluidInputs([<fluid:red_alloy> * 18])
    .outputs(circuits[0].itemArray[0] * 4)
    .buildAndRegister();


// Primitive Processor
recipes.addShaped("gt_primitive_processor", circuits[1].itemArray[0] * 2, [[<metaitem:component.resistor>, tieredPlates[0], <metaitem:component.resistor>], [circuits[0].itemArray[0], <metaitem:board.basic>, circuits[0].itemArray[0]], [<ore:cableGtSingleRedAlloy>, <ore:cableGtSingleRedAlloy>, <ore:cableGtSingleRedAlloy>]]);

circuit_assembler.recipeBuilder().EUt(16).duration(200)
    .inputs(<metaitem:board.basic>, <metaitem:component.resistor> * 2, <ore:wireGtSingleRedAlloy> * 2, circuits[0].itemArray[0] * 2)
    .fluidInputs([soldering_alloys[0] * 144])
    .outputs(circuits[1].itemArray[0] * 2)
    .buildAndRegister();

circuit_assembler.recipeBuilder().EUt(16).duration(200)
    .inputs(<metaitem:board.basic>, <metaitem:component.resistor> * 2, <ore:wireGtSingleRedAlloy> * 2, circuits[0].itemArray[0] * 2)
    .fluidInputs([soldering_alloys[1] * 72])
    .outputs(circuits[1].itemArray[0] * 2)
    .buildAndRegister();

// Primitive Assembly
recipes.addShaped("gt_primitive_assembly", <metaitem:circuit.assembly.primitive>, [[<metaitem:component.diode>, tieredPlates[0], <metaitem:component.diode>], [circuits[1].itemArray[0], <metaitem:board.basic>, circuits[1].itemArray[0]], [<ore:cableGtSingleCopper>, <ore:cableGtSingleCopper>, <ore:cableGtSingleCopper>]]);

circuit_assembler.recipeBuilder().EUt(30).duration(300)
    .inputs(<metaitem:board.basic>, circuits[1].itemArray[0] * 2, <metaitem:component.diode> * 2, <ore:cableGtSingleCopper> * 2)
    .fluidInputs([soldering_alloys[0] * 144])
    .outputs(<metaitem:circuit.assembly.primitive>)
    .buildAndRegister();

circuit_assembler.recipeBuilder().EUt(30).duration(300)
    .inputs(<metaitem:board.basic>, circuits[1].itemArray[0] * 2, <metaitem:component.diode> * 2, <ore:cableGtSingleCopper> * 2)
    .fluidInputs([soldering_alloys[1] * 72])
    .outputs(<metaitem:circuit.assembly.primitive>)
    .buildAndRegister();