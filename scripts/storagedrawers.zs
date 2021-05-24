import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;



mods.jei.JEI.removeAndHide(<storagedrawers:compdrawers>);
mods.jei.JEI.removeAndHide(<framedcompactdrawers:framed_compact_drawer>);

// Master Array

var drawerWoodTypeMap as IItemStack[][] =
[
[<minecraft:planks:0>, <storagedrawers:trim:0>, <quark:custom_chest:0>],
[<minecraft:planks:1>, <storagedrawers:trim:1>, <quark:custom_chest:1>],
[<minecraft:planks:2>, <storagedrawers:trim:2>, <quark:custom_chest:2>],
[<minecraft:planks:3>, <storagedrawers:trim:3>, <quark:custom_chest:3>],
[<minecraft:planks:4>, <storagedrawers:trim:4>, <quark:custom_chest:4>],
[<minecraft:planks:5>, <storagedrawers:trim:5>, <quark:custom_chest:5>]
];

var woodStrings as IData[] = 
[
	{material:"oak"} as IData,
	{material:"spruce"} as IData,
	{material:"birch"} as IData,
	{material:"jungle"} as IData,
	{material:"acacia"} as IData,
	{material:"dark_oak"} as IData
];
var woods as string[] = 
[
	"oak",
	"spruce",
	"birch",
	"jungle",
	"acacia",
	"dark_oak"
];
// Other Useful Oredicts
val stick = <ore:stickWood> as IIngredient;
val doubleStick = <ore:stickLongWood> as IIngredient;
val quarterStick = <ore:boltWood> as IIngredient;
val woodPlate = <ore:plateWood> as IIngredient;
val ironScrew = <ore:screwIron> as IIngredient;

// Trims
for i in 0 to 6 {
	recipes.removeByRecipeName("storagedrawers:trim_" + woods[i]);
	recipes.addShaped("gregified_trim_" + woods[i], drawerWoodTypeMap[i][1],
	[
	[doubleStick,doubleStick,doubleStick],
	[<ore:gregFiles>,drawerWoodTypeMap[i][0],<ore:gregSaws>],
	[doubleStick,doubleStick,doubleStick]
	]);
	assembler.recipeBuilder()
		.inputs(stick * 12)
		.inputs(drawerWoodTypeMap[i][0])
		.outputs(drawerWoodTypeMap[i][1])
		.EUt(30)
		.duration(20)
		.buildAndRegister();
}
// Drawers 1x1
for i in 0 to 6 {
	recipes.removeByRecipeName("storagedrawers:basicdrawers_fulldrawers1_" + woods[i]);
	recipes.addShaped("gregified_fulldrawer1_" + woods[i], <storagedrawers:basicdrawers:0>.withTag(woodStrings[i]),
	[
	[stick,stick,null],
	[drawerWoodTypeMap[i][1],drawerWoodTypeMap[i][2],<ore:gregSaws>],
	[stick,stick,null]
	]);
	assembler.recipeBuilder()
		.inputs(drawerWoodTypeMap[i][1])
		.inputs(drawerWoodTypeMap[i][2])
		.outputs(<storagedrawers:basicdrawers:0>.withTag(woodStrings[i]))
		.EUt(30)
		.duration(20)
		.buildAndRegister();
}
// Drawers 1x2
for i in 0 to 6 {
	recipes.removeByRecipeName("storagedrawers:basicdrawers_fulldrawers2_" + woods[i]);
	recipes.addShaped("gregified_fulldrawer2_" + woods[i], <storagedrawers:basicdrawers:1>.withTag(woodStrings[i]),
	[
	[null,ironScrew,<ore:gregScrewDrivers>],
	[<storagedrawers:basicdrawers:0>.withTag(woodStrings[i]),woodPlate,<ore:gregSaws>],
	[null,<ore:gregFiles>,null]
	]);
	assembler.recipeBuilder()
		.inputs(<storagedrawers:basicdrawers:0>.withTag(woodStrings[i]))
		.inputs(woodPlate)
		.property("circuit", 0)
		.outputs(<storagedrawers:basicdrawers:1>.withTag(woodStrings[i]))
		.EUt(30)
		.duration(40)
		.buildAndRegister();
}
// Drawers 2x2
for i in 0 to 6 {
	recipes.removeByRecipeName("storagedrawers:basicdrawers_fulldrawers4_" + woods[i]);
	recipes.addShaped("gregified_fulldrawer4_" + woods[i], <storagedrawers:basicdrawers:2>.withTag(woodStrings[i]),
	[
	[null,ironScrew,<ore:gregScrewDrivers>],
	[<storagedrawers:basicdrawers:1>.withTag(woodStrings[i]),woodPlate,<ore:gregSaws>],
	[null,<ore:gregFiles>,null]
	]);
	assembler.recipeBuilder()
		.inputs(<storagedrawers:basicdrawers:0>.withTag(woodStrings[i]))
		.inputs(woodPlate * 2)
		.outputs(<storagedrawers:basicdrawers:2>.withTag(woodStrings[i]))
		.EUt(30)
		.property("circuit", 2)
		.duration(80)
		.buildAndRegister();
}
// Half-Drawers
for i in 0 to 6 {
	recipes.removeByRecipeName("storagedrawers:basicdrawers_halfdrawers2_" + woods[i]);
	recipes.removeByRecipeName("storagedrawers:basicdrawers_halfdrawers4_" + woods[i]);
	recipes.addShaped("gregified_halfdrawer2_" + woods[i], <storagedrawers:basicdrawers:3>.withTag(woodStrings[i]) * 2,
	[
	[doubleStick,woodPlate,doubleStick],
	[doubleStick,<storagedrawers:basicdrawers:1>.withTag(woodStrings[i]),<ore:gregSaws>],
	[doubleStick,woodPlate,<ore:gregFiles>]
	]);
	assembler.recipeBuilder()
		.inputs(<storagedrawers:basicdrawers:1>.withTag(woodStrings[i]))
		.inputs(woodPlate * 2)
		.inputs(stick * 8)
		.outputs(<storagedrawers:basicdrawers:3>.withTag(woodStrings[i]) * 2)
		.EUt(30)
		.duration(80)
		.buildAndRegister();
		
	recipes.addShaped("gregified_halfdrawer4_" + woods[i], <storagedrawers:basicdrawers:4>.withTag(woodStrings[i]) * 2,
	[
	[doubleStick,woodPlate,doubleStick],
	[doubleStick,<storagedrawers:basicdrawers:2>.withTag(woodStrings[i]),<ore:gregSaws>],
	[doubleStick,woodPlate,<ore:gregFiles>]
	]);
		assembler.recipeBuilder()
		.inputs(<storagedrawers:basicdrawers:2>.withTag(woodStrings[i]))
		.inputs(woodPlate * 2)
		.inputs(stick * 8)
		.outputs(<storagedrawers:basicdrawers:4>.withTag(woodStrings[i]) * 2)
		.EUt(30)
		.duration(80)
		.buildAndRegister();
}

// Frames
recipes.removeByRecipeName("storagedrawers:framed_trim");
recipes.addShaped("gregified_framed_trim", <storagedrawers:customtrim>,
	[
	[doubleStick,doubleStick,doubleStick],
	[doubleStick,doubleStick,doubleStick],
	[doubleStick,doubleStick,<ore:gregFiles>]
	]);
assembler.recipeBuilder()
	.inputs(stick * 16)
	.property("circuit", 2)
	.outputs(<storagedrawers:customtrim>)
	.EUt(30)
	.duration(40)
	.buildAndRegister();
	
recipes.removeByRecipeName("storagedrawers:framed_drawer_full1");
recipes.addShaped("gregified_framed_1x1", <storagedrawers:customdrawers:0>,
	[
	[doubleStick,doubleStick,doubleStick],
	[<ore:logWood>,doubleStick,<ore:gregFiles>],
	[doubleStick,doubleStick,doubleStick]
	]);

assembler.recipeBuilder()
	.inputs(stick * 20)
	.property("circuit", 3)
	.outputs(<storagedrawers:customdrawers:0>)
	.EUt(30)
	.duration(40)
	.buildAndRegister();
	
recipes.removeByRecipeName("storagedrawers:framed_drawer_full2");
recipes.addShaped("gregified_framed_1x2", <storagedrawers:customdrawers:1>,
	[
	[<storagedrawers:customdrawers:0>,stick,<ore:gregFiles>],
	]);

assembler.recipeBuilder()
	.inputs(stick * 21)
	.property("circuit", 4)
	.outputs(<storagedrawers:customdrawers:1>)
	.EUt(30)
	.duration(40)
	.buildAndRegister();

recipes.removeByRecipeName("storagedrawers:framed_drawer_full4");
recipes.addShaped("gregified_framed_2x2", <storagedrawers:customdrawers:2>,
	[
	[<storagedrawers:customdrawers:1>,stick,<ore:gregFiles>],
	]);

assembler.recipeBuilder()
	.inputs(stick * 22)
	.property("circuit", 5)
	.outputs(<storagedrawers:customdrawers:2>)
	.EUt(30)
	.duration(40)
	.buildAndRegister();

recipes.removeByRecipeName("storagedrawers:framed_drawer_half2");
recipes.addShaped("gregified_framed_halfdrawer2", <storagedrawers:customdrawers:3> * 2,
	[
	[stick,doubleStick,stick],
	[stick,<ore:gregFiles>,stick],
	[stick,doubleStick,stick]
	]);

assembler.recipeBuilder()
	.inputs(stick * 10)
	.property("circuit", 6)
	.outputs(<storagedrawers:customdrawers:3> * 2)
	.EUt(30)
	.duration(40)
	.buildAndRegister();

recipes.removeByRecipeName("storagedrawers:framed_drawer_half4");
recipes.addShaped("gregified_framed_halfdrawer4", <storagedrawers:customdrawers:4> * 2,
	[
	[stick,doubleStick,stick],
	[stick,<ore:gregFiles>,doubleStick],
	[stick,doubleStick,stick]
	]);
	
assembler.recipeBuilder()
	.inputs(stick * 11)
	.property("circuit", 7)
	.outputs(<storagedrawers:customdrawers:4> * 2)
	.EUt(30)
	.duration(40)
	.buildAndRegister();
	
recipes.removeByRecipeName("storagedrawers:framing_table");
recipes.addShaped("gregified_framing_table", <storagedrawers:framingtable>,
	[
	[<ore:drawerTrim>,<ore:drawerTrim>,null],
	[stick,stick,<ore:gregSaws>],
	[doubleStick,doubleStick,null]
	]);
	
recipes.removeByRecipeName("storagedrawers:controller");
recipes.addShaped("gregified_controller", <storagedrawers:controller>,
	[
	[<ore:plateIron>,<ore:plateSteel>,<ore:plateIron>],
	[<ore:itemConduitBinder>,hulls[0],<ore:itemConduitBinder>],
	[<ore:plateIron>,circuits[0],<ore:plateIron>]
	]);

recipes.removeByRecipeName("storagedrawers:controller_slave");
recipes.addShaped("gregified_controller_slave", <storagedrawers:controllerslave>,
	[
	[<ore:plateSteel>,conveyors[1],<ore:plateSteel>],
	[<ore:itemConduitBinder>,hulls[1],<ore:itemConduitBinder>],
	[<ore:plateLead>,circuits[1],<ore:plateLead>]
	]);
	
recipes.removeByRecipeName("framedcompactdrawers:framed_drawer_controller");
recipes.addShaped("gregified_framed_controller", <framedcompactdrawers:framed_drawer_controller>,
	[
	[<ore:stickLongCupronickel>,<ore:stickLongCupronickel>,<ore:stickLongCupronickel>],
	[<ore:itemConduitBinder>,<ore:frameGtSteel>,<ore:itemConduitBinder>],
	[<ore:stickLongCupronickel>,circuits[0],<ore:stickLongCupronickel>]
	]);

recipes.removeByRecipeName("framedcompactdrawers:framed_slave");
recipes.addShaped("gregified_framed_slave", <framedcompactdrawers:framed_slave>,
	[
	[<ore:plateSteel>,conveyors[1],<ore:plateSteel>],
	[<ore:itemConduitBinder>,<ore:frameGtTumbaga>,<ore:itemConduitBinder>],
	[<ore:plateLead>,circuits[1],<ore:plateLead>]
	]);
	
recipes.removeByRecipeName("storagedrawers:key_drawer");
recipes.addShaped("gregified_drawer_key", <storagedrawers:drawer_key>,
	[
	[<ore:boltGold>,<ore:boltGold>,null],
	[<ore:boltGold>,<ore:boltGold>,null],
	[<ore:gregFiles>,<ore:ringGold>,null]
	]);

recipes.removeByRecipeName("storagedrawers:key_concealment");
assembler.recipeBuilder()
	.inputs(<storagedrawers:drawer_key>)
	.property("circuit", 0)
	.fluidInputs(<liquid:soldering_alloy> * 48)
	.outputs(<storagedrawers:shroud_key>)
	.EUt(24)
	.duration(120)
	.buildAndRegister();
recipes.removeByRecipeName("storagedrawers:key_personal");
assembler.recipeBuilder()
	.inputs(<storagedrawers:drawer_key>)
	.property("circuit", 1)
	.fluidInputs(<liquid:soldering_alloy> * 48)
	.outputs(<storagedrawers:personal_key>)
	.EUt(24)
	.duration(120)
	.buildAndRegister();
recipes.removeByRecipeName("storagedrawers:key_quantify");
assembler.recipeBuilder()
	.inputs(<storagedrawers:drawer_key>)
	.property("circuit", 2)
	.fluidInputs(<liquid:soldering_alloy> * 48)
	.outputs(<storagedrawers:quantify_key>)
	.EUt(24)
	.duration(120)
	.buildAndRegister();
	
recipes.removeByRecipeName("storagedrawers:upgrade_template");
chemical_bath.recipeBuilder()
	.inputs(woodPlate)
	.fluidInputs(<liquid:sulfuric_acid> * 0)
	.outputs(<storagedrawers:upgrade_template>)
	.EUt(24)
	.duration(40)
	.buildAndRegister();

recipes.removeByRecipeName("storagedrawers:upgrade_one_stack");
assembler.recipeBuilder()
	.inputs(<ore:blockFlint>)
	.inputs(<storagedrawers:upgrade_template>)
	.outputs(<storagedrawers:upgrade_one_stack>)
	.EUt(8)
	.duration(20)
	.buildAndRegister();
	
recipes.removeByRecipeName("storagedrawers:upgrade_storage_obsidian");
assembler.recipeBuilder()
	.inputs(<ore:blockObsidian> * 8)
	.inputs(<storagedrawers:upgrade_template>)
	.outputs(<storagedrawers:upgrade_storage:0>)
	.EUt(8)
	.duration(100)
	.buildAndRegister();

recipes.removeByRecipeName("storagedrawers:upgrade_storage_iron");
assembler.recipeBuilder()
	.inputs(<ore:plateSteel> * 8)
	.inputs(<storagedrawers:upgrade_template>)
	.outputs(<storagedrawers:upgrade_storage:1>)
	.EUt(32)
	.duration(100)
	.buildAndRegister();
	
recipes.removeByRecipeName("storagedrawers:upgrade_storage_gold");
assembler.recipeBuilder()
	.inputs(<ore:plateChrome> * 8)
	.inputs(<storagedrawers:upgrade_template>)
	.outputs(<storagedrawers:upgrade_storage:2>)
	.EUt(128)
	.duration(100)
	.buildAndRegister();
	
recipes.removeByRecipeName("storagedrawers:upgrade_storage_diamond");
assembler.recipeBuilder()
	.inputs(<ore:plateStainlessSteel> * 8)
	.inputs(<storagedrawers:upgrade_template>)
	.outputs(<storagedrawers:upgrade_storage:3>)
	.EUt(512)
	.duration(100)
	.buildAndRegister();
	
recipes.removeByRecipeName("storagedrawers:upgrade_storage_emerald");
assembler.recipeBuilder()
	.inputs(<ore:plateStaballoy> * 8)
	.inputs(<storagedrawers:upgrade_template>)
	.outputs(<storagedrawers:upgrade_storage:4>)
	.EUt(2048)
	.duration(100)
	.buildAndRegister();

recipes.removeByRecipeName("storagedrawers:upgrade_void");
assembler.recipeBuilder()
	.inputs(<minecraft:dropper>)
	.inputs(<storagedrawers:upgrade_template>)
	.outputs(<storagedrawers:upgrade_void>)
	.EUt(16)
	.duration(100)
	.buildAndRegister();
	
assembly_line.recipeBuilder()
	.inputs(<threng:material:14> * 64)
	.inputs(<threng:material:14> * 64)
	.inputs(<threng:material:14> * 64)
	.inputs(<threng:material:14> * 64)
	.inputs(<threng:material:14> * 64)
	.inputs(<threng:material:14> * 64)
	.inputs(<threng:material:14> * 64)
	.inputs(<ore:circuitUxv>)
	.inputs(<extracells:storage.component:3> * 64)
	.inputs(<extracells:storage.component:3> * 64)
	.inputs(<extracells:storage.component:3> * 64)
	.inputs(<extracells:storage.component:3> * 64)
	.inputs(<extracells:storage.component:3> * 64)
	.inputs(<extracells:storage.component:3> * 64)
	.inputs(<storagedrawers:upgrade_storage:4> * 64)
	.inputs(<contenttweaker:heartofasmogus>)
	.fluidInputs(<liquid:fluoronaquadriatic_acid> * 64000)
	.outputs(<storagedrawers:upgrade_creative:0>)
	.EUt(2013265920)
	.duration(40000)
	.buildAndRegister();
	
assembly_line.recipeBuilder()
	.inputs(<storagedrawers:upgrade_storage:4> * 64)
	.inputs(<contenttweaker:heartofasmogus> * 64)
	.inputs(<meta_tile_entity:gtadditions:brewery.uxv> * 4)
	.inputs(<meta_tile_entity:gtadditions:polarizer.uxv> * 4)
	.inputs(<meta_tile_entity:gtadditions:canner.uxv> * 4)
	.inputs(<meta_tile_entity:gtadditions:fluid_canner.uxv> * 4)
	.inputs(<meta_tile_entity:gtadditions:microwave.uxv> * 4)
	.inputs(<meta_tile_entity:gtadditions:decay_chamber.uxv> * 4)
	.inputs(<meta_tile_entity:gtadditions:electromagnetic_separator.uxv> * 4)
	.inputs(<meta_tile_entity:gtadditions:electric_furnace.uxv> * 4)
	.inputs(<meta_tile_entity:gtadditions:distillery.uxv> * 4)
	.inputs(<meta_tile_entity:gtadditions:fermenter.uxv> * 4)
	.inputs(<meta_tile_entity:gtadditions:extractor.uxv> * 4)
	.inputs(<meta_tile_entity:gtadditions:fluid_heater.uxv> * 4)
	.inputs(<meta_tile_entity:gtadditions:cosmic_ray_detector> * 4)
	.inputs(<minecraft:dirt>)
	.fluidInputs(<liquid:periodicium> * 64000)
	.fluidInputs(<liquid:phenylpentanoicacid> * 64000)
	.outputs(<storagedrawers:upgrade_creative:1>)
	.EUt(2013265920)
	.duration(80000)
	.buildAndRegister();