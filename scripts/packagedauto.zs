var cableFluix = <appliedenergistics2:part:16>;

val package_component = <packagedauto:package_component>;
recipes.removeByRecipeName("packagedauto:package_component");
assembler.recipeBuilder()
	.inputs(<ore:plateTitanium> * 4)
	.inputs(circuits[3] * 2)
	.inputs(robotArms[3] * 2)
	.inputs(<meta_tile_entity:stainless_steel_chest>)
	.inputs(tieredCables[3] * 4)
	.outputs(package_component)
	.EUt(1920)
	.duration(120)
	.buildAndRegister();
	
val me_package_component = <packagedauto:me_package_component>;
val formation_core = <appliedenergistics2:material:43>;
val annihilation_core = <appliedenergistics2:material:44>;
recipes.removeByRecipeName("packagedauto:me_package_component");
recipes.addShaped("gregified_me_package_component", me_package_component,
[[annihilation_core,package_component,formation_core],
[cableFluix,<metaitem:engraved.lapotron_chip>,cableFluix],
[<ore:wireFineEpoxid>,<ore:plateDenseTitanium>,<ore:wireFineEpoxid>]]);

val encoder = <packagedauto:encoder>;
recipes.removeByRecipeName("packagedauto:encoder");
recipes.addShaped("gregified_encoder", encoder,
[[tieredCables[5],package_component,tieredCables[5]],
[<ore:plateHssg>,<meta_tile_entity:laser_engraver.iv>,<ore:plateHssg>],
[<ore:plateHssg>,<meta_tile_entity:tungstensteel_chest>,<ore:plateHssg>]]);

val packager = <packagedauto:packager>;
recipes.removeByRecipeName("packagedauto:packager");
recipes.addShaped("gregified_packager", packager,
[[cableFluix,me_package_component,cableFluix],
[<ore:plateVanadiumSteel>,<meta_tile_entity:packer.ev>,<ore:plateVanadiumSteel>],
[<ore:plateVanadiumSteel>,<metaitem:insulating_tape>,<ore:plateVanadiumSteel>]]);

val recipe_holder = <packagedauto:recipe_holder>;
val blank_pattern = <appliedenergistics2:material:52>;
recipes.removeByRecipeName("packagedauto:recipe_holder");
laser_engraver.recipeBuilder()
	.inputs(blank_pattern * 9)
	.inputs(circuits[3])
	.outputs(recipe_holder * 2)
	.EUt(960)
	.duration(350)
	.buildAndRegister();
	
val unpackager = <packagedauto:unpackager>;
recipes.removeByRecipeName("packagedauto:unpackager");
recipes.addShaped("gregified_unpackager", unpackager,
[[cableFluix,me_package_component,cableFluix],
[<ore:plateVanadiumSteel>,<meta_tile_entity:unpacker.ev>,<ore:plateVanadiumSteel>],
[<ore:plateVanadiumSteel>,<meta_tile_entity:titanium_chest>,<ore:plateVanadiumSteel>]]);


val packager_extension = <packagedauto:packager_extension>;
recipes.removeByRecipeName("packagedauto:packager_extension");
recipes.addShaped("gregified_packager_extension", packager_extension,
[[<metaitem:insulating_tape>,me_package_component,<metaitem:insulating_tape>],
[cableFluix,<meta_tile_entity:packer.iv>,cableFluix],
[<ore:plateHssg>,<ore:plateHssg>,<ore:plateHssg>]]);