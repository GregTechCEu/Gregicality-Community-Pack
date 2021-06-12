#norun
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.addDescription;
import mods.gregtech.recipe.RecipeMap;

######################################################################
#   Original Script made by Regian#2027 on the Gregicality Discord   #
######################################################################
// Removals
val disables = [	
	<advancedrocketry:ic>,
	<advancedrocketry:precisionassemblingmachine>,
	<advancedrocketry:crystallizer>,
	<advancedrocketry:cuttingmachine>,
	<advancedrocketry:rollingmachine>,
	<advancedrocketry:electrolyser>,
	<advancedrocketry:chemicalreactor>,
	<advancedrocketry:sawbladeiron>,
	<advancedrocketry:platepress>,
	<advancedrocketry:lathe>,
	<advancedrocketry:concrete>,
	<advancedrocketry:blastbrick>,
	<advancedrocketry:arcfurnace>,
	<advancedrocketry:blackholegenerator>,
	<advancedrocketry:centrifuge>,
    <advancedrocketry:blockpump>,
	<advancedrocketry:railgun>,
	<advancedrocketry:orescanner>,
	<advancedrocketry:ic:1>,
	<advancedrocketry:satelliteprimaryfunction:4>,
	<advancedrocketry:misc>,
	<advancedrocketry:solararray>,
	<advancedrocketry:jetpack>,
	<advancedrocketry:basiclasergun>,
	<advancedrocketry:hovercraft>,
	<advancedrocketry:itemcircuitplate:1>,
	<advancedrocketry:ic:2>,
	<advancedrocketry:ic:3>,
	<advancedrocketry:ic:4>,
	<advancedrocketry:ic:5>,
	<advancedrocketry:solarpanel>,
	<advancedrocketry:solararraypanel>,
	<advancedrocketry:iquartzcrucible>,
	<advancedrocketry:sawblade>,
	<advancedrocketry:vacuumlaser>,
	<advancedrocketry:liquidtank>,
	<advancedrocketry:solargenerator>,
	<advancedrocketry:precisionlaseretcher>,
	<advancedrocketry:spacelaser>,
	<advancedrocketry:productdust:1>,
	<advancedrocketry:productdust>,
	<advancedrocketry:productingot>,
	<advancedrocketry:productingot:1>,
	<advancedrocketry:productnugget>,
	<advancedrocketry:productnugget:1>,
	<advancedrocketry:productplate>,
	<advancedrocketry:productplate:1>,
	<advancedrocketry:productrod>,
	<advancedrocketry:productrod:1>,
	<advancedrocketry:productsheet>,
	<advancedrocketry:productsheet:1>,
	<advancedrocketry:productgear>,
	<advancedrocketry:productgear:1>,
	<advancedrocketry:metal0>,
	<advancedrocketry:metal0:1>,
	<advancedrocketry:wafer>,
	<advancedrocketry:itemcircuitplate>,
	<advancedrocketry:jackhammer>,
	<advancedrocketry:lens>,
	<advancedrocketry:thermite>,
	<libvulpes:coalgenerator>,
	<libvulpes:productfan:6>,
	<libvulpes:gtplug>
	] as IItemStack[];

for item in disables { 
    mods.jei.JEI.removeAndHide(item);
}

val removals = [
    "advancedrocketry:launchpad",
    "advancedrocketry:landingpad",
    "advancedrocketry:rocketbuilder",
    "advancedrocketry:structuretower",
    "advancedrocketry:genericseat",
    "advancedrocketry:blockfueltank",
    "advancedrocketry:blockbipropellantfueltank",
    "advancedrocketry:blockoxidizerfueltank",
    "advancedrocketry:fuelingstation",
    "advancedrocketry:monitoringstation",
    "advancedrocketry:satellitebuilder",
    "advancedrocketry:databus",
    "advancedrocketry:satellitebay",
    "advancedrocketry:rocketunloader",
    "advancedrocketry:rocketloader",
    "advancedrocketry:rocketfluidunloader",
    "advancedrocketry:rocketfluidloader",
    "advancedrocketry:guidancecomputeraccess_hatch",
	"advancedrocketry:microwavereciever",
	"advancedrocketry:observatory",
	"advancedrocketry:satellitecontrolcenter",
	"advancedrocketry:planetanalyser",
	"advancedrocketry:guidancecomputer",
	"advancedrocketry:stationbuilder",
	"advancedrocketry:oxygenscrubber",
	"advancedrocketry:oxygenvent",
	"advancedrocketry:oxygencharger",
	"advancedrocketry:oxygendetection",
	"advancedrocketry:terraformer",
	"advancedrocketry:beacon",
	"advancedrocketry:biomescanner",
	"advancedrocketry:forcefieldprojector",
	"advancedrocketry:orientationcontroller",
	"advancedrocketry:gravitycontroller",
	"advancedrocketry:gravitymachine",
	"advancedrocketry:circlelight",
	"advancedrocketry:altitudecontroller",
	"advancedrocketry:drill",
	"advancedrocketry:suitworkstation",
	"advancedrocketry:warpcore",
	"advancedrocketry:warpmonitor",
	"advancedrocketry:holoprojector",
	"advancedrocketry:coilcopper",
	"advancedrocketry:coilgold",
	"advancedrocketry:coilaluminum",
	"advancedrocketry:coiltitanium",
	"advancedrocketry:coiliridium",
	"advancedrocketry:carbonscrubbercartidge",
	"advancedrocketry:spaceelevatorcontroller",
	"advancedrocketry:stationmarker",
	"advancedrocketry:deployablerocketbuilder",
	"advancedrocketry:wirelesstransciever",
	"advancedrocketry:engine",
	"advancedrocketry:advengine",
	"advancedrocketry:bipropellantengine",
	"advancedrocketry:advbipropellantengine",
	"libvulpes:structuremachine",
	"libvulpes:advstructuremachine",
	"libvulpes:linker",
	"advancedrocketry:satellite",
	"advancedrocketry:compositionsensor",
	"advancedrocketry:massdetector",
	"advancedrocketry:microwavetransmitter",
	"advancedrocketry:satelliteprimaryfunction",
	"advancedrocketry:satelliteidchip",
	"advancedrocketry:planetidchip",
	"advancedrocketry:spacestationidchip",
	"advancedrocketry:elevatorchip",
	"advancedrocketry:sealdetector",
	"advancedrocketry:spacehelmet",
	"advancedrocketry:spacechestplate",
	"advancedrocketry:spaceleggings",
	"advancedrocketry:spaceboots",
	"libvulpes:inputhatch",
	"libvulpes:outputhatch",
	"libvulpes:fluidinputhatch",
	"libvulpes:fluidoutputhatch",
	"advancedrocketry:intake",
	"advancedrocketry:guidancecomputeraccesshatch",
	"advancedrocketry:planetholoselector",
	"advancedrocketry:thermitetorch",
	"advancedrocketry:asteroidchip",
	"advancedrocketry:basicsolarpanel",
	"advancedrocketry:largesolarpanel",
	"advancedrocketry:opticalsensor",
	"libvulpes:forgepowerinput"
] as string[];

for item in removals {
    recipes.removeByRecipeName(item);
}

// Launch Pad
assembler.recipeBuilder()
	.inputs(<ore:frameGtStainlessSteel>)
    .inputs(<ore:dyeYellow>)
    .inputs(<ore:dyeBlack>)
	.fluidInputs([<liquid:concrete> * 144])
	.outputs(<advancedrocketry:launchpad>)
	.EUt(480)
	.duration(200)
	.buildAndRegister();

// Docking Pad
assembler.recipeBuilder()
	.inputs(<advancedrocketry:launchpad>)
    .inputs(<ore:plateBlueSteel>)
	.outputs(<advancedrocketry:landingpad>)
	.EUt(480)
	.duration(1200)
	.buildAndRegister();

// Rocket Assembling Machine
recipes.addShaped("ar_rocketbuilder", <advancedrocketry:rocketbuilder>, [
    [robotArms[3], sensors[3], robotArms[3]], 
    [robotArms[3], hulls[3], robotArms[3]], 
    [tieredCables[3], circuits[4], tieredCables[3]]
]);

// Structure Tower
assembler.recipeBuilder()
    .inputs(<ore:frameGtBlackSteel>)
    .inputs(<ore:stickLongBlueSteel> * 4)
    .outputs(<advancedrocketry:structuretower>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

// Seat
recipes.addShaped("ar_seat", <advancedrocketry:seat>, [
    [<ore:foilPolycaprolactam>, <ore:foilPolycaprolactam>, <ore:foilPolycaprolactam>], 
    [<ore:blockWool>, tieredPlates[1], <ore:blockWool>], 
    [<ore:foilPlastic>, <ore:foilPolycaprolactam>, <ore:foilPlastic>]
]);

// Monopropellant Fuel Tank
assembler.recipeBuilder()
	.inputs(<ore:frameGtAluminium>)
    .inputs(<meta_tile_entity:gregtech:stainless_steel_tank>)
    .inputs(<ore:stickLongBlackSteel> * 4)
    .inputs(<ore:plateBlueSteel> * 4)
    .inputs(<ore:plateGraphite> * 2)
    .fluidInputs([soldering_alloys[1] * 144])
	.outputs(<advancedrocketry:fueltank>)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

// Bipropellant Fuel Tank
assembler.recipeBuilder()
	.inputs(<ore:frameGtBabbittAlloy>)
    .inputs(<meta_tile_entity:gregtech:titanium_tank>)
    .inputs(<ore:stickLongInconelA> * 4)
    .inputs(<ore:plateTungsten> * 4)
    .inputs(<ore:plateGraphite> * 8)
    .fluidInputs([soldering_alloys[1] * 144])
	.outputs(<advancedrocketry:bipropellantfueltank>)
	.EUt(1920)
	.duration(300)
	.buildAndRegister();

// Oxidizer Fuel Tank
assembler.recipeBuilder()
	.inputs(<ore:frameGtBabbittAlloy>)
    .inputs(<meta_tile_entity:gregtech:titanium_tank>)
    .inputs(<ore:stickLongInconelA> * 4)
    .inputs(<ore:plateDenseAluminium> * 2)
    .fluidInputs([soldering_alloys[1] * 144])
	.outputs(<advancedrocketry:oxidizerfueltank>)
	.EUt(1920)
	.duration(300)
	.buildAndRegister();

// Fuel Station
recipes.addShaped("ar_fuelingstation", <advancedrocketry:fuelingstation>, [
    [pumps[3], <ore:pipeLargePlastic>, pumps[3]], 
    [<ore:gearSmallStainlessSteel>, hulls[3], <ore:gearStainlessSteel>], 
    [circuits[4], <meta_tile_entity:gregtech:stainless_steel_tank>, circuits[4]]
]);

// Rocket Monitoring Station
recipes.addShaped("ar_monitoringstation", <advancedrocketry:monitoringstation>, [
    [sensors[3], sensors[3], sensors[3]], 
    [emitters[3], hulls[3], <metaitem:display>],
    [circuits[4], tieredCables[3], circuits[4]]
]);

// Satellite Builder
recipes.addShaped("ar_satellitebuilder", <advancedrocketry:satellitebuilder>, [
    [robotArms[4], <ore:gearBlackBronze>, robotArms[4]],
    [robotArms[4], hulls[4], robotArms[4]], 
    [circuits[4], tieredCables[4], circuits[4]]
]);

// Data Bus
assembler.recipeBuilder()
	.inputs(hulls[3])
    .inputs(robotArms[1])
    .inputs(circuits[2])
    .inputs(<metaitem:tool.datastick>)
	.outputs(<advancedrocketry:loader>)
	.EUt(480)
	.duration(200)
	.buildAndRegister();

// Satellite Bay
assembler.recipeBuilder()
	.inputs(hulls[3])
    .inputs(robotArms[4])
    .inputs(sensors[3])
    .inputs(<ore:gearTitanium> * 2)
    .inputs(circuits[4])
	.outputs(<advancedrocketry:loader:1>)
	.EUt(1920)
	.duration(200)
	.buildAndRegister();

// Rocket Unloader
assembler.recipeBuilder()
	.inputs(hulls[3])
    .inputs(robotArms[3])
    .inputs(<meta_tile_entity:gregtech:steel_chest>)
    .inputs(<ore:gearSmallStainlessSteel> * 2)
    .inputs(<ore:gearStainlessSteel>)
    .inputs(circuits[3])
	.outputs(<advancedrocketry:loader:2>)
	.EUt(480)
	.duration(200)
	.buildAndRegister();

recipes.addShapeless("ar_rocket_unloader", <advancedrocketry:loader:2>, [<advancedrocketry:loader:3>]);

// Rocket Loader
recipes.addShapeless("ar_rocket_loader", <advancedrocketry:loader:3>, [<advancedrocketry:loader:2>]);

// Rocket Fluid Unloader
assembler.recipeBuilder()
	.inputs(hulls[3])
    .inputs(pumps[3])
    .inputs(<meta_tile_entity:gregtech:steel_chest>)
    .inputs(<ore:gearSmallStainlessSteel> * 2)
    .inputs(<ore:gearStainlessSteel>)
    .inputs(circuits[3])
	.outputs(<advancedrocketry:loader:4>)
	.EUt(480)
	.duration(200)
	.buildAndRegister();

recipes.addShapeless("ar_rocket_unloader_fluid", <advancedrocketry:loader:4>, [<advancedrocketry:loader:5>]);

// Rocket Fluid Loader
recipes.addShapeless("ar_rocket_loader_fluid", <advancedrocketry:loader:5>, [<advancedrocketry:loader:4>]);

// Guidance Computer Hatch
assembler.recipeBuilder()
	.inputs(hulls[3])
    .inputs(robotArms[3])
    .inputs(<metaitem:display>)
    .inputs(circuits[3])    
	.outputs(<advancedrocketry:loader:6>)
	.EUt(480)
	.duration(200)
	.buildAndRegister();

// Observatory
recipes.addShaped("ar_observatory", <advancedrocketry:observatory>, [
    [sensors[4], sensors[4], sensors[4]], 
    [circuits[4], hulls[3], circuits[4]], 
    [<ore:craftingLensBlue>, emitters[4], <ore:craftingLensRed>]
]);

// Satellite Terminal
recipes.addShaped("ar_satellitecontrolcenter", <advancedrocketry:satellitecontrolcenter>, [
    [circuits[3], circuits[4], sensors[3]], 
    [circuits[3], hulls[3], <metaitem:display>], 
    [tieredWires[3], emitters[3], tieredWires[3]]
]);

// Astrobody Data Processor
recipes.addShaped("ar_planetanalyser", <advancedrocketry:planetanalyser>, [
    [sensors[4], <metaitem:tool.datastick>, sensors[4]], 
    [circuits[4], hulls[4], circuits[4]], 
    [tieredWires[4], sensors[4], tieredWires[4]]
]);

// Guidance Computer
recipes.addShaped("ar_guidancecomputer", <advancedrocketry:guidancecomputer>, [
    [sensors[3], <metaitem:tool.datastick>, sensors[3]], 
    [circuits[4], hulls[3], circuits[4]], 
    [circuits[2], sensors[3], circuits[2]]
]);

// Space Station Builder
recipes.addShaped("ar_stationbuilder", <advancedrocketry:stationbuilder>, [
    [robotArms[5], sensors[5], robotArms[5]], 
    [robotArms[5], hulls[5], robotArms[5]], 
    [<ore:cableGtQuadrupleOsmium>, circuits[6], <ore:cableGtQuadrupleOsmium>]
]);

// CO2 Scrubber
recipes.addShaped("ar_oxygenscrubber", <advancedrocketry:oxygenscrubber>, [
    [<ore:plateBlueSteel>, <metaitem:item_filter>, <ore:plateBlueSteel>], 
    [<ore:rotorStainlessSteel>, hulls[3], pumps[3]], 
    [motors[3], <metaitem:fluid_filter>, motors[3]]
]);

// Oxygen Vent
recipes.addShaped("ar_oxygenvent", <advancedrocketry:oxygenvent>, [
    [<gregtech:multiblock_casing:1>, <gregtech:multiblock_casing:1>, <gregtech:multiblock_casing:1>], 
    [<ore:rotorStainlessSteel>, hulls[3], <ore:rotorStainlessSteel>], 
    [<ore:plateBlueSteel>, pumps[3], <ore:plateBlueSteel>]
]);

// Gas Charge Pad
recipes.addShaped("ar_oxygencharger", <advancedrocketry:oxygencharger>, [
    [<ore:pipeSmallPlastic>, pumps[3], <ore:pipeSmallPlastic>], 
    [<ore:pipeSmallPlastic>, hulls[3], <ore:pipeSmallPlastic>], 
    [<ore:plateBlueSteel>, <meta_tile_entity:gregtech:stainless_steel_tank>, <ore:plateBlueSteel>]
]);

// Atmosphere Detector
recipes.addShaped("ar_oxygendetection", <advancedrocketry:oxygendetection>, [
    [tieredPlates[4], sensors[4], tieredPlates[4]], 
    [circuits[4], hulls[4], circuits[4]], 
    [tieredWires[4], emitters[4], tieredWires[4]]
]);

// Atmosphere Terraformer
recipes.addShaped("ar_terraformer", <advancedrocketry:terraformer>, [
    [tieredPlates[5], field_generators[1], tieredPlates[5]], 
    [circuits[5], hulls[5], circuits[5]], 
    [tieredWires[5], emitters[3], tieredWires[5]]
]);

// Beacon
recipes.addShaped("ar_beacon", <advancedrocketry:beacon>, [
    [tieredPlates[3], sensors[3], tieredPlates[3]], 
    [tieredPlates[3], hulls[3], tieredPlates[3]], 
    [tieredWires[3], circuits[3], tieredWires[3]]
]);

// Biome Scanner
recipes.addShaped("ar_biomescanner", <advancedrocketry:biomescanner>, [
    [tieredPlates[4], circuits[2], tieredPlates[4]], 
    [tieredPlates[4], hulls[4], circuits[4]], 
    [tieredWires[4], sensors[4], emitters[4]]
]);

// Force Field Projector
recipes.addShaped("ar_forcefieldprojector", <advancedrocketry:forcefieldprojector>, [
    [tieredPlates[3], field_generators[1], tieredPlates[3]], 
    [tieredPlates[3], hulls[3], tieredPlates[3]], 
    [tieredWires[3], circuits[3], tieredWires[3]]
]);

// Orientation Controller
recipes.addShaped("ar_orientationcontroller", <advancedrocketry:orientationcontroller>, [
    [tieredWires[4], emitters[4], tieredWires[4]], 
    [circuits[4], hulls[4], circuits[4]], 
    [tieredWires[4], sensors[4], tieredWires[4]]
]);

// Gravity Controller
recipes.addShaped("ar_gravitycontroller", <advancedrocketry:gravitycontroller>, [
    [tieredWires[4], sensors[4], tieredWires[4]], 
    [circuits[4], hulls[4], circuits[4]], 
    [tieredWires[4], emitters[4], tieredWires[4]]
]);

// Area Gravity Controller
recipes.addShaped("ar_gravitymachine", <advancedrocketry:gravitymachine>, [
    [<ore:plateNaquadah>, field_generators[3], <ore:plateNaquadah>], 
    [circuits[5], hulls[5], circuits[5]], 
    [<ore:plateNaquadah>, field_generators[3], <ore:plateNaquadah>]
]);

// Station Light
recipes.addShapeless("ar_circlelight", <advancedrocketry:circlelight>, [
    <ore:glowstone>, tieredPlates[0]
]);

// Altitude Controller
recipes.addShaped("ar_altitudecontroller", <advancedrocketry:altitudecontroller>, [
    [tieredCables[4], emitters[4], tieredCables[4]], 
    [circuits[4], hulls[4], circuits[4]], 
    [tieredCables[4], sensors[4], tieredCables[4]]
]);

// Drill
val drill_tips = [<ore:toolHeadDrillAluminium>, <ore:toolHeadDrillStainlessSteel>, <ore:toolHeadDrillTitanium>, <ore:toolHeadDrillTungstenCarbide>, <ore:toolHeadDrillHsss>] as IIngredient[];

for i, item in drill_tips {
	recipes.addShaped("ar_drill_"~i, <advancedrocketry:drill> * pow(2, i), [
		[null, item, null], 
		[tieredPlates[2], hulls[1], tieredPlates[2]], 
		[tieredCables[2], motors[2], tieredCables[2]]
	]);
}

// Gas Intake
val gas_intakes = [<ore:rotorBronze>, <ore:rotorSteel>, <ore:rotorChrome>, <ore:rotorStainlessSteel>, <ore:rotorHssg>] as IIngredient[];

for i, item in gas_intakes {
	recipes.addShaped("ar_gas_intake_"~i, <advancedrocketry:intake> * pow(2, i), [
		[null, item, null], 
		[tieredPlates[2], hulls[1], tieredPlates[2]], 
		[tieredCables[2], motors[2], tieredCables[2]]
	]);
}

// Microwave Receiver
assembly_line.recipeBuilder().duration(300).EUt(30720)
	.inputs(sensors[6] * 2)
	.inputs(sensors[6] * 2)
	.inputs(<ore:wireGtSingleLuvSuperconductor> * 64)
	.inputs(<metaitem:plate.iridium_alloy> * 32)
	.inputs(circuits[6] * 6)
	.inputs(<gregtech:wire_coil:7>)
	.inputs(<gregtech:wire_coil:7>)
	.inputs(<gregtech:wire_coil:7>)
	.inputs(<gregtech:wire_coil:7>)
	.fluidInputs([<fluid:soldering_alloy> * 1296])
	.fluidInputs([<fluid:polybenzimidazole> * 2592])
	.outputs(<advancedrocketry:microwavereciever>)
	.buildAndRegister();

// Suit Workstation
recipes.addShaped("ar_suitworkstation", <advancedrocketry:suitworkstation>, [
    [tieredPlates[2], <minecraft:crafting_table>, tieredPlates[2]], 
    [circuits[2], hulls[2], circuits[2]],
    [tieredCables[2], robotArms[2], tieredCables[2]]
]);

// Warp Core
assembler.recipeBuilder().EUt(7680).duration(1200)
	.inputs(hulls[5])
	.inputs(field_generators[5])
	.inputs(emitters[5] * 2)
	.inputs(sensors[5] * 2)
	.inputs(circuits[5] * 4)
	.inputs(<ore:plateDenseTungstenTitaniumCarbide>)
	.fluidInputs([<fluid:soldering_alloy> * 288])
	.outputs(<advancedrocketry:warpcore>)
	.buildAndRegister();

// Warp Controller
assembly_line.recipeBuilder().EUt(30720).duration(1200)
	.inputs(hulls[6])
	.inputs(emitters[6] * 2)
	.inputs(sensors[6] * 2)
	.inputs(field_generators[6])
	.inputs(circuits[6] * 4)
	.inputs(<ore:stickLongNaquadah> * 16)
	.inputs(<ore:wireGtDoubleGraphene> * 8)
	.inputs(<ore:wireFineNaquadahAlloy> * 64)
	.inputs(<ore:plateRuthenium> * 8)
	.fluidInputs([<fluid:soldering_alloy> * 288])
	.outputs(<advancedrocketry:warpmonitor>)
	.buildAndRegister();

// Coils
assembler.recipeBuilder()
	.inputs(<ore:wireGtDoubleAnnealedCopper> * 8)
	.inputs(<ore:wireFineCupronickel> * 16)
	.fluidInputs([<fluid:soldering_alloy> * 72])
	.outputs(<ore:coilCopper>.firstItem)
	.duration(200)
	.EUt(480)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<ore:wireGtDoubleGold> * 8)
	.inputs(<ore:wireFineRoseGold> * 32)
	.fluidInputs([<fluid:soldering_alloy> * 72])
	.outputs(<ore:coilGold>.firstItem)
	.duration(200)
	.EUt(960)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<ore:wireGtDoubleAluminium> * 8)
	.inputs(<ore:wireFineMagnalium> * 48)
	.fluidInputs([<fluid:soldering_alloy> * 72])
	.outputs(<ore:coilAluminum>.firstItem)
	.duration(200)
	.EUt(1920)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<ore:wireGtDoubleNiobiumTitanium> * 8)
	.inputs(<ore:wireFineNitinolA> * 64)
	.fluidInputs([<fluid:soldering_alloy> * 72])
	.outputs(<ore:coilTitanium>.firstItem)
	.duration(200)
	.EUt(1920)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<ore:wireGtDoubleYttriumBariumCuprate> * 8)
	.inputs(<ore:wireFineIridium> * 128)
	.fluidInputs([<fluid:soldering_alloy> * 72])
	.outputs(<ore:coilIridium>.firstItem)
	.duration(200)
	.EUt(480)
	.buildAndRegister();

// Holo Projector
recipes.addShaped("ar_holo_projector", <libvulpes:holoprojector>, [
	[<ore:gregScrewDrivers>, emitters[3], <ore:gregWrenches>],
	[tieredPlates[3], circuits[4], tieredPlates[3]],
	[tieredCables[3], tieredPlates[3], tieredCables[3]]
]);
	
// Planet Selector
recipes.addShaped("ar_planetselector", <advancedrocketry:planetselector>, [
    [emitters[1], tieredPlates[1], sensors[1]], 
	[circuits[1], hulls[1], circuits[1]], 
	[tieredCables[1], tieredPlates[1], tieredCables[1]]
]);

// Space Elevator
assembly_line.recipeBuilder()
	.inputs(<ore:frameGtBlueSteel> * 6)
	.inputs(<ore:plateBismuthBronze> * 64)
	.inputs(<ore:plateGraphene> * 64)
	.inputs(circuits[6] * 4)
	.inputs(motors[5] * 4)
	.inputs(pistons[5] * 4)
	.inputs(sensors[5] * 2)
	.inputs(emitters[5] * 2)
	.inputs(hulls[5] * 2)
	.fluidInputs([<liquid:soldering_alloy> * 720])
	.outputs(<advancedrocketry:spaceelevatorcontroller> * 2)
	.EUt(7680)
	.duration(720)
	.buildAndRegister();

// Station Docking Port
recipes.addShaped("ar_docking_port", <advancedrocketry:stationmarker>, [
	[<ore:ringStainlessSteel>, hulls[3], <ore:ringStainlessSteel>]
]);

// Unmanned Vehicle Assembler
recipes.addShaped("ar_deployablerocketbuilder", <advancedrocketry:deployablerocketbuilder>, [
    [robotArms[4], sensors[4], robotArms[4]], 
    [robotArms[4], hulls[4], robotArms[4]], 
    [tieredCables[4], circuits[5], tieredCables[4]]
]);

// Wireless Transceiver
recipes.addShaped("ar_wirelesstransciever", <advancedrocketry:wirelesstransciever>, [
	[sensors[1], <ore:ringSteel>, emitters[1]], 
	[null, tieredCables[2], null]
]);

// Monopropellant Engine
recipes.addShaped("ar_monopropellant_engine", <advancedrocketry:rocketmotor>, [
    [<ore:plateBlackSteel>, <ore:frameGtAluminium>, <ore:plateBlackSteel>],
    [<ore:plateBlueSteel>, <meta_tile_entity:gregtech:stainless_steel_tank>, <ore:plateBlueSteel>],
    [tieredPlates[3], <ore:pipeSmallStainlessSteel>, tieredPlates[3]]
]);

// Advanced Monopropellant Engine
recipes.addShaped("ar_monopropellant_engine_advanced", <advancedrocketry:advrocketmotor>, [
    [<ore:plateBlackSteel>, <ore:frameGtPotin>, <ore:plateBlackSteel>],
    [<ore:plateBlueSteel>, <advancedrocketry:rocketmotor>, <ore:plateBlueSteel>],
    [tieredPlates[4], <ore:pipeSmallTitanium>, tieredPlates[4]]
]);

// Bipropellant Engine
recipes.addShaped("ar_bipropellant_engine", <advancedrocketry:bipropellantrocketmotor>, [
    [<ore:plateVanadiumSteel>, <ore:frameGtMaragingSteelA>, <ore:plateVanadiumSteel>],
    [<ore:plateTungsten>, <advancedrocketry:advrocketmotor>, <ore:plateTungsten>],
    [tieredPlates[5], <ore:pipeMediumTungstenSteel>, tieredPlates[5]]
]);

// Advanced Bipropellant Engine
recipes.addShaped("ar_bipropellant_engine_advanced", <advancedrocketry:advbipropellantrocketmotor>, [
    [<ore:plateZeron>, <ore:frameGtIncoloyMa>, <ore:plateZeron>],
    [<ore:plateTungstenTitaniumCarbide>, <advancedrocketry:bipropellantrocketmotor>, <ore:plateTungstenTitaniumCarbide>],
    [tieredPlates[6], <ore:pipeLargeZeron>, tieredPlates[6]]
]);
    
// Machine Structure
recipes.addShaped("ar_machine_structure", <libvulpes:structuremachine> * 3, [
	[<ore:plateCobaltBrass>, <ore:stickAluminium>, <ore:plateCobaltBrass>],
    [<ore:stickAluminium>, <ore:frameGtPotin>, <ore:stickAluminium>],
    [<ore:plateCobaltBrass>, <ore:stickAluminium>, <ore:plateCobaltBrass>]
]);

// Advanced Machine Structure
recipes.addShaped("ar_advanced_machine_structure", <libvulpes:advstructuremachine> * 3, [
	[<ore:plateNitinolA>, <ore:stickLongBlueSteel>, <ore:plateNitinolA>],
    [<ore:stickLongBlueSteel>, <ore:frameGtStainlessSteel>, <ore:stickLongBlueSteel>],
    [<ore:plateNitinolA>, <ore:stickLongBlueSteel>, <ore:plateNitinolA>]
]);

// Dilithium
autoclave.recipeBuilder()
	.inputs(<ore:dustDilithium>)
    .fluidInputs([<liquid:water> * 200])
	.chancedOutput(<ore:gemDilithium>.firstItem, 7000, 1000)
	.EUt(24)
	.duration(1600)
	.buildAndRegister();

autoclave.recipeBuilder()
	.inputs(<ore:dustDilithium>)
    .fluidInputs([<liquid:distilled_water> * 200])
	.chancedOutput(<ore:gemDilithium>.firstItem, 8000, 1000)
	.EUt(24)
	.duration(1200)
	.buildAndRegister();

// Linker
recipes.addShaped("ar_linker", <libvulpes:linker>, [
	[sensors[1], <ore:gregScrewDrivers>, emitters[1]],
	[tieredPlates[1], circuits[1], tieredPlates[1]],
	[null, tieredPlates[1], null]
]);

// Data Storage Unit
recipes.addShaped("ar_data_unit", <advancedrocketry:dataunit>, [[<metaitem:tool.datastick>]]);
recipes.addShaped("ar_data_unit_revert", <metaitem:tool.datastick>, [[<advancedrocketry:dataunit>]]);

// Satellite
assembler.recipeBuilder()
	.inputs(tieredPlates[2] * 6)
	.inputs(<ore:stickLongTitanium>)
	.inputs(circuits[2])
	.inputs(sensors[2])
	.inputs(emitters[2])
	.outputs(<advancedrocketry:satellite>)
	.EUt(120)
	.duration(100)
	.buildAndRegister();

// Biome Scanner
assembler.recipeBuilder()
	.inputs(<metaitem:power_unit.lv>)
	.inputs(field_generators[3])
	.inputs(emitters[3])
	.fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<advancedrocketry:biomechanger>)
	.EUt(480)
	.duration(400)
	.buildAndRegister();

// Microwave Transmitter
assembler.recipeBuilder()
	.inputs(<ore:plateDenseRhodiumPlatedPalladium>)
	.inputs(circuits[6])
	.inputs(sensors[5])
	.inputs(emitters[5])
	.fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<advancedrocketry:satelliteprimaryfunction:3>)
	.EUt(480)
	.duration(600)
	.buildAndRegister();

// Composition Sensor
assembler.recipeBuilder()
	.inputs(<ore:plateMagnalium>)
	.inputs(circuits[3])
	.inputs(sensors[3] * 2)
	.inputs(emitters[3])
 	.fluidInputs([<liquid:soldering_alloy> * 144])
    .property("circuit", 0)
	.outputs(<advancedrocketry:satelliteprimaryfunction:1>)
	.EUt(480)
	.duration(200)
	.buildAndRegister();

// Mass Detector
assembler.recipeBuilder()
	.inputs(<ore:plateMagnalium>)
	.inputs(circuits[3])
	.inputs(sensors[3] * 2)
	.inputs(emitters[3])
 	.fluidInputs([<liquid:soldering_alloy> * 144])
    .property("circuit", 1)
	.outputs(<advancedrocketry:satelliteprimaryfunction:2>)
	.EUt(480)
	.duration(200)
	.buildAndRegister();

// Biome Changer
assembler.recipeBuilder()
	.inputs(circuits[5])
	.inputs(sensors[4])
	.inputs(emitters[4])
	.inputs(field_generators[5])
	.fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<advancedrocketry:satelliteprimaryfunction:5>)
	.EUt(1920)
	.duration(800)
	.buildAndRegister();
	
// Satellite ID Chip
recipes.addShaped("ar_satellite_id_chip", <advancedrocketry:satelliteidchip>, [[circuits[3], <ore:gregScrewDrivers>]]);

// Planet ID Chip
recipes.addShaped("ar_planet_id_chip", <advancedrocketry:planetidchip>, [[circuits[2], <ore:gregScrewDrivers>]]);

// Space Station ID chip
recipes.addShaped("ar_space_station_id_chip", <advancedrocketry:spacestationchip>, [[circuits[5], <ore:gregScrewDrivers>]]);

// Space Elevator ID chip
recipes.addShaped("ar_space_elevator_id_chip", <advancedrocketry:elevatorchip>, [[circuits[6], <ore:gregScrewDrivers>]]);

// Space Elevator ID chip
recipes.addShaped("ar_asteroid_id_chip", <advancedrocketry:asteroidchip>, [[circuits[4], <ore:gregScrewDrivers>]]);

// Seal Detector
recipes.addShaped("ar_seal_detector", <advancedrocketry:sealdetector>, [
	[null, sensors[1], null],
	[tieredPlates[0], circuits[1], tieredPlates[0]],
	[null, tieredPlates[0], null]
]);

// Space Suit
// Space Helmet
assembler.recipeBuilder()
	.inputs(<metaitem:mica_insulator_foil> * 5)
	.inputs(<ore:foilPlastic> * 64)
	.inputs(circuits[3])
	.inputs(<ore:plateGlass> * 2)
	.inputs(<ore:foilPolyvinylChloride> * 5)
	.inputs(<ore:foilSteel> * 15)
	.outputs(<advancedrocketry:spacehelmet>)
	.EUt(480)
	.duration(200)
	.buildAndRegister();

// Space Chestplate
assembler.recipeBuilder()
	.inputs(<metaitem:mica_insulator_foil> * 8)
	.inputs(<ore:foilPlastic> * 64)
	.inputs(circuits[3])
	.inputs(<ore:foilPolyvinylChloride> * 8)
	.inputs(<ore:foilSteel> * 24)
	.outputs(<advancedrocketry:spacechestplate>)
	.EUt(480)
	.duration(320)
	.buildAndRegister();

// Space Leggings
assembler.recipeBuilder()
	.inputs(<metaitem:mica_insulator_foil> * 7)
	.inputs(<ore:foilPlastic> * 64)
	.inputs(circuits[3])
	.inputs(<ore:foilPolyvinylChloride> * 7)
	.inputs(<ore:foilSteel> * 21)
	.outputs(<advancedrocketry:spaceleggings>)
	.EUt(480)
	.duration(280)
	.buildAndRegister();

// Space Boots
assembler.recipeBuilder()
	.inputs(<metaitem:mica_insulator_foil> * 4)
	.inputs(<ore:foilPlastic> * 64)
	.inputs(circuits[3])
	.inputs(<ore:foilPolyvinylChloride> * 4)
	.inputs(<ore:foilSteel> * 12)
	.outputs(<advancedrocketry:spaceboots>)
	.EUt(480)
	.duration(160)
	.buildAndRegister();
	
// Tier 1 Tank
assembler.recipeBuilder()
	.inputs(tieredPlates[3] * 2)
	.inputs(<metaitem:fluid_cell>)
	.fluidInputs([<liquid:soldering_alloy> * 72])
	.outputs(<advancedrocketry:pressuretank>)
	.EUt(480)
	.duration(160)
	.buildAndRegister();

// Tier 2 Tank
assembler.recipeBuilder()
	.inputs(tieredPlates[4] * 2)
	.inputs(<advancedrocketry:pressuretank>)
	.fluidInputs([<liquid:soldering_alloy> * 72])
	.property("circuit", 1)
	.outputs(<advancedrocketry:pressuretank:1>)
	.EUt(1920)
	.duration(320)
	.buildAndRegister();
	
// Tier 3 Tank
assembler.recipeBuilder()
	.inputs(<ore:plateTungstenSteel> * 4)
	.inputs(<advancedrocketry:pressuretank:1>)
	.fluidInputs([<liquid:soldering_alloy> * 72])
	.property("circuit", 1)
	.outputs(<advancedrocketry:pressuretank:2>)
	.EUt(7680)
	.duration(640)
	.buildAndRegister();

// Tier 4 Tank
assembler.recipeBuilder()
	.inputs(<ore:plateRhodiumPlatedPalladium> * 4)
	.inputs(<advancedrocketry:pressuretank:2>)
	.fluidInputs([<liquid:soldering_alloy> * 72])
	.property("circuit", 1)
	.outputs(<advancedrocketry:pressuretank:3>)
	.EUt(30720)
	.duration(1280)
	.buildAndRegister();
	
// Carbon Collector Cartridge
metal_bender.recipeBuilder()
	.inputs(<ore:ringIron> * 2)
	.property("circuit", 0)
	.outputs(<advancedrocketry:carbonscrubbercartridge>)
	.EUt(30)
	.duration(380)
	.buildAndRegister();

// Hover Upgrade 
assembler.recipeBuilder()
	.inputs(circuits[3])
	.inputs(<ore:plateSilicon>)
	.inputs(<ore:stickGold> * 2)
	.inputs(<ore:screwGold> * 8)
	.fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<advancedrocketry:itemupgrade>)
	.EUt(480)
	.duration(300)
	.buildAndRegister();

// Flight Speed Control Upgrade 
assembler.recipeBuilder()
	.inputs(circuits[3])
	.inputs(<ore:plateSilicon>)
	.inputs(<ore:stickLongGold>)
	.inputs(<ore:screwGold> * 8)
	.fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<advancedrocketry:itemupgrade:1>)
	.EUt(480)
	.duration(300)
	.buildAndRegister();

// Bionic Leg Upgrade
assembler.recipeBuilder()
	.inputs(tieredPlates[2] * 7)
	.inputs(circuits[2] * 2)
	.inputs(<ore:stickGold> * 2)
	.inputs(<ore:screwGold> * 8)
	.inputs(<ore:stickAluminium> * 2)
	.inputs(robotArms[2])
	.inputs(motors[2])
	.fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<advancedrocketry:itemupgrade:2>)
	.EUt(480)
	.duration(1800)
	.buildAndRegister();

// Padded Landing Boots
assembler.recipeBuilder()
	.inputs(tieredPlates[3] * 5)
	.inputs(circuits[3])
	.inputs(<ore:plateSiliconRubber> * 4)
	.outputs(<advancedrocketry:itemupgrade:3>)
	.EUt(480)
	.duration(300)
	.buildAndRegister();

// Anti-Fog Visor
assembler.recipeBuilder()
    .inputs(tieredPlates[3] * 3)
	.inputs(<ore:plateGlass> * 3)
	.inputs(circuits[3])
	.inputs(sensors[1])
	.inputs(<ore:screwSteel> * 8)
	.outputs(<advancedrocketry:itemupgrade:4>)
	.EUt(480)
	.duration(600)
	.buildAndRegister();
	
// Atmosphere Analyzer
assembler.recipeBuilder()
	.inputs(sensors[2])
	.inputs(<ore:screwSteel> * 8)
	.inputs(tieredPlates[3] * 3)
	.inputs(<ore:screwGold> * 8)
	.inputs(circuits[3])
	.outputs(<advancedrocketry:atmanalyser>)
	.EUt(480)
	.duration(600)
	.buildAndRegister();

// Beacon Finder
assembler.recipeBuilder()
	.inputs(tieredPlates[3] * 5)
	.inputs(<ore:plateGlass> * 5)
	.inputs(sensors[3])
	.inputs(<ore:screwStainlessSteel> * 8)
	.inputs(circuits[3])
	.outputs(<advancedrocketry:beaconfinder>)
	.EUt(480)
	.duration(600)
	.buildAndRegister();

// Input Hatch
recipes.addShaped("ar_input_hatch", <libvulpes:hatch>, [[<meta_tile_entity:gregtech:item_bus.import.lv>, <ore:gregScrewDrivers>]]);
recipes.addShaped("ar_input_hatch_revert", <meta_tile_entity:gregtech:item_bus.import.lv>, [[<libvulpes:hatch>, <ore:gregScrewDrivers>]]);

// Output Hatch
recipes.addShaped("ar_output_hatch", <libvulpes:hatch:1>, [[<meta_tile_entity:gregtech:item_bus.export.lv>, <ore:gregScrewDrivers>]]);
recipes.addShaped("ar_output_hatch_revert", <meta_tile_entity:gregtech:item_bus.export.lv>, [[<libvulpes:hatch:1>, <ore:gregScrewDrivers>]]);

// Fluid Input Hatch
recipes.addShaped("ar_fluid_input_hatch", <libvulpes:hatch:2>, [[<meta_tile_entity:gregtech:fluid_hatch.import.lv>, <ore:gregScrewDrivers>]]);
recipes.addShaped("ar_fluid_input_hatch_revert", <meta_tile_entity:gregtech:fluid_hatch.import.lv>, [[<libvulpes:hatch:2>, <ore:gregScrewDrivers>]]);

// Fluid Output Hatch
recipes.addShaped("ar_fluid_output_hatch", <libvulpes:hatch:3>, [[<meta_tile_entity:gregtech:fluid_hatch.export.lv>, <ore:gregScrewDrivers>]]);
recipes.addShaped("ar_fluid_output_hatch_revert", <meta_tile_entity:gregtech:fluid_hatch.export.lv>, [[<libvulpes:hatch:3>, <ore:gregScrewDrivers>]]);

// Holographic Planet Selector
recipes.addShaped("ar_holo_planet_selector", <advancedrocketry:planetholoselector>, [[<advancedrocketry:planetselector>]]);
recipes.addShaped("ar_holo_planet_selector_revert", <advancedrocketry:planetselector>, [[<advancedrocketry:planetholoselector>]]);

// Thermite Torch
recipes.addShaped("ar_thermite_torch", <advancedrocketry:thermitetorch>, [[<ore:stickWood>, <ore:dustRegularPhosphorus>]]);

// Basic Solar Panel
recipes.addShaped("ar_basic_solar_panel", <advancedrocketry:satellitepowersource>, [[<ore:stickLongStainlessSteel>, <metaitem:cover.solar.panel.lv>]]);

// Lareg Solar Panel
compressor.recipeBuilder().duration(400).EUt(30)
	.inputs(<advancedrocketry:satellitepowersource> * 9)
	.outputs(<advancedrocketry:satellitepowersource:1>)
	.buildAndRegister();

// Optical Sensor
recipes.addShaped("ar_optical_sensor", <advancedrocketry:satelliteprimaryfunction>, [
	[<ore:plateGlass>, tieredWires[3], <ore:plateGlass>],
	[sensors[1], <ore:gemExquisiteGlass>, sensors[1]],
	[tieredWires[3], tieredWires[3], tieredWires[3]]
]);

// Airtight Seal
recipes.addShaped("ar_airtight_seal", <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 11 as short}]}), [
	[<ore:foilPolytetrafluoroethylene>, <ore:platePolybenzimidazole>, <ore:foilPolytetrafluoroethylene>],
	[<ore:boltTitanium>, <minecraft:book>, <ore:boltTitanium>],
	[<ore:foilPolytetrafluoroethylene>, <ore:platePolybenzimidazole>, <ore:foilPolytetrafluoroethylene>]
]);

// Power Input Plug
recipes.addShaped("ar_energy_hatch", <libvulpes:forgepowerinput>, [[<ore:gregScrewDrivers>, <meta_tile_entity:energy_hatch.input.hv>]]);
recipes.addShaped("ar_energy_hatch_revert", <meta_tile_entity:energy_hatch.input.hv>, [[<ore:gregScrewDrivers>, <libvulpes:forgepowerinput>]]);
