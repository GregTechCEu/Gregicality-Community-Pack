#modloaded advancedrocketry
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import mods.jei.JEI.addDescription as ad;
import mods.gregtech.recipe.RecipeMap;

print("Loading AdvRocketry.zs");

#############################################################
#   Script made by Regian#2027 on the Gregicality Discord   #
#############################################################
# Removals
val removals = [	
	
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
	<advancedrocketry:concrete>,  # Replace with GT concrete
	<advancedrocketry:blastbrick>,
	<advancedrocketry:arcfurnace>,
	<advancedrocketry:blackholegenerator>,
	<advancedrocketry:centrifuge>,
		] as IItemStack[];


	for item in removals { 
		mods.jei.JEI.removeAndHide(item);
	}

# Launch Pad
	recipes.remove(<advancedrocketry:launchpad>);
	
	assembler.recipeBuilder()
	.inputs([<ore:frameGtStainlessSteel>, <ore:dyeYellow>, <ore:dyeBlack>])
	.fluidInputs(<liquid:concrete> * 144)
	.outputs(<advancedrocketry:launchpad>)
	.EUt(480)
	.duration(96)
	.buildAndRegister();

# Docking Pad
	recipes.remove(<advancedrocketry:landingpad>);
	
	assembler.recipeBuilder()
	.inputs([<ore:frameGtStainlessSteel>, <ore:dyeYellow>, <ore:dyeBlack>, <advancedrocketry:ic:1>])
	.fluidInputs(<liquid:concrete> * 144)
	.outputs(<advancedrocketry:landingpad>)
	.EUt(480)
	.duration(192)
	.buildAndRegister();

# Rocket Assembling Machine
	recipes.remove(<advancedrocketry:rocketbuilder>);
	recipes.addShaped("ar_rocketbuilder", <advancedrocketry:rocketbuilder>, [[<ore:plateStainlessSteel>, <ore:circuitAdvanced>, <ore:plateStainlessSteel>], [<ore:stickStainlessSteel>, <meta_tile_entity:gregtech:hull.hv>, <ore:stickStainlessSteel>], [<metaitem:robot.arm.hv>, <metaitem:electric.motor.hv>, <metaitem:electric.piston.hv>]]);

# Structure Tower
	recipes.remove(<advancedrocketry:structuretower>);
	recipes.addShaped("ar_structuretower", <advancedrocketry:structuretower>, [[<ore:stickSteel>, <gregtech:meta_tool:6>, <ore:stickSteel>], [<ore:stickSteel>, <ore:stickSteel>, <ore:stickSteel>], [<ore:stickSteel>, null, <ore:stickSteel>]]);

# Seat
	recipes.remove(<advancedrocketry:seat>);
	recipes.addShaped("ar_seat", <advancedrocketry:seat>, [[<ore:blockWool>, <ore:string>, <ore:blockWool>], [<ore:blockWool>, null, <ore:blockWool>], [<ore:blockWool>, <ore:blockWool>, <ore:blockWool>]]);


# Liquid Fuel Tank
	recipes.remove(<advancedrocketry:fueltank>);
	
	assembler.recipeBuilder()
	.inputs([<ore:frameGtStainlessSteel>, <meta_tile_entity:gregtech:stainless_steel_tank>, <ore:gearStainlessSteel>])
    .property("circuit", 1)
	.outputs(<advancedrocketry:fueltank>)
	.EUt(480)
	.duration(300)
	.buildAndRegister();

# Fuel Station
	recipes.remove(<advancedrocketry:fuelingstation>);
	recipes.addShaped("ar_fuelingstation", <advancedrocketry:fuelingstation>, [[<metaitem:electric.piston.hv>, <metaitem:electric.motor.hv>, <metaitem:electric.motor.hv>], [<ore:gearStainlessSteel>, <meta_tile_entity:gregtech:hull.hv>, <ore:gearStainlessSteel>], [<ore:circuitExtreme>, <meta_tile_entity:gregtech:stainless_steel_tank>, <ore:circuitExtreme>]]);

# Rocket Monitoring Station
	recipes.remove(<advancedrocketry:monitoringstation>);
	recipes.addShaped("ar_monitoringstation", <advancedrocketry:monitoringstation>, [[<metaitem:electric.piston.hv>, <metaitem:sensor.hv>, <metaitem:electric.motor.hv>], [<ore:gearSilver>, <meta_tile_entity:gregtech:hull.hv>, <ore:gearSilver>], [<ore:circuitExtreme>, <metaitem:emitter.hv>, <ore:circuitExtreme>]]);

# Satellite Builder
	recipes.remove(<advancedrocketry:satellitebuilder>);
	recipes.addShaped("ar_satellitebuilder", <advancedrocketry:satellitebuilder>, [[<metaitem:electric.piston.ev>, <metaitem:robot.arm.ev>, <metaitem:electric.motor.ev>], [<ore:circuitExtreme>, <meta_tile_entity:gregtech:hull.ev>, <ore:circuitExtreme>], [<ore:gearTitanium>, <ore:stickTitanium>, <ore:gearTitanium>]]);

# Data Bus
	recipes.remove(<advancedrocketry:loader>);
	
	assembler.recipeBuilder()
	.inputs([<meta_tile_entity:gregtech:hull.hv>, <metaitem:electric.motor.hv>, <ore:gearStainlessSteel>, <ore:circuitExtreme>, <advancedrocketry:dataunit>])
    .property("circuit", 1)
	.outputs(<advancedrocketry:loader>)
	.EUt(480)
	.duration(200)
	.buildAndRegister();


# Satellite Bay
	recipes.remove(<advancedrocketry:loader:1>);
	
	assembler.recipeBuilder()
	.inputs([<meta_tile_entity:gregtech:hull.ev>, <metaitem:electric.motor.ev>, <metaitem:electric.piston.ev>, <ore:gearTitanium>, <ore:circuitExtreme>, <metaitem:sensor.hv>])
    .property("circuit", 1)
	.outputs(<advancedrocketry:loader:1>)
	.EUt(1920)
	.duration(200)
	.buildAndRegister();

# Rocket Unloader
	recipes.remove(<advancedrocketry:loader:2>);
	
	assembler.recipeBuilder()
	.inputs([<meta_tile_entity:gregtech:hull.hv>, <metaitem:electric.motor.hv>, <metaitem:electric.piston.hv>, <metaitem:robot.arm.hv>, <ore:gearStainlessSteel>, <ore:circuitAdvanced>])
    .property("circuit", 1)
	.outputs(<advancedrocketry:loader:2>)
	.EUt(480)
	.duration(200)
	.buildAndRegister();

# Rocket Loader
	recipes.remove(<advancedrocketry:loader:3>);
	
	assembler.recipeBuilder()
	.inputs([<meta_tile_entity:gregtech:hull.hv>, <metaitem:electric.motor.hv>, <metaitem:electric.piston.hv>, <metaitem:robot.arm.hv>, <ore:gearStainlessSteel>, <ore:circuitAdvanced>])
    .property("circuit", 2)
	.outputs(<advancedrocketry:loader:3>)
	.EUt(480)
	.duration(200)
	.buildAndRegister();

# Rocket Fluid Unloader
	recipes.remove(<advancedrocketry:loader:4>);
	
	assembler.recipeBuilder()
	.inputs([<meta_tile_entity:gregtech:hull.hv>, <metaitem:electric.motor.hv>, <metaitem:electric.piston.hv>, <metaitem:robot.arm.hv>, <ore:gearStainlessSteel>, <ore:circuitAdvanced>, <meta_tile_entity:stainless_steel_tank>])
    .property("circuit", 1)
	.outputs(<advancedrocketry:loader:4>)
	.EUt(480)
	.duration(200)
	.buildAndRegister();

# Rocket Fluid Loader
	recipes.remove(<advancedrocketry:loader:5>);
	
	assembler.recipeBuilder()
	.inputs([<meta_tile_entity:gregtech:hull.hv>, <metaitem:electric.motor.hv>, <metaitem:electric.piston.hv>, <metaitem:robot.arm.hv>, <ore:gearStainlessSteel>, <ore:circuitAdvanced>, <meta_tile_entity:stainless_steel_tank>])
    .property("circuit", 2)
	.outputs(<advancedrocketry:loader:5>)
	.EUt(480)
	.duration(200)
	.buildAndRegister();

# Guidance Computer Hatch
	recipes.remove(<advancedrocketry:loader:6>);
	
	assembler.recipeBuilder()
	.inputs([<meta_tile_entity:gregtech:hull.hv>, <metaitem:electric.motor.hv>, <metaitem:robot.arm.hv>, <ore:circuitExtreme>])    
	.property("circuit", 1)
	.outputs(<advancedrocketry:loader:6>)
	.EUt(480)
	.duration(200)
	.buildAndRegister();

# Observatory
	recipes.remove(<advancedrocketry:observatory>);
	recipes.addShaped("ar_observatory", <advancedrocketry:observatory>, [[<metaitem:electric.motor.ev>, <metaitem:sensor.ev>, <metaitem:electric.motor.ev>], [<ore:circuitExtreme>, <meta_tile_entity:gregtech:hull.ev>, <ore:circuitExtreme>], [<ore:craftingLensBlue>, <metaitem:emitter.ev>, <ore:craftingLensRed>]]);

# Satellite Terminal
	recipes.remove(<advancedrocketry:satellitecontrolcenter>);
	recipes.addShaped("ar_satellitecontrolcenter", <advancedrocketry:satellitecontrolcenter>, [[<metaitem:electric.motor.ev>, <ore:circuitExtreme>, <metaitem:electric.motor.ev>], [<ore:circuitExtreme>, <meta_tile_entity:gregtech:hull.ev>, <ore:circuitExtreme>], [<ore:gearTitanium>, <metaitem:emitter.ev>, <ore:wireGtSingleAluminium>]]);

# Astrobody Data Processor
	recipes.remove(<advancedrocketry:planetanalyser>);
	recipes.addShaped("ar_planetanalyser", <advancedrocketry:planetanalyser>, [[<metaitem:electric.motor.ev>, <advancedrocketry:dataunit>, <metaitem:electric.motor.ev>], [<ore:circuitExtreme>, <meta_tile_entity:gregtech:hull.ev>, <ore:circuitExtreme>], [<metaitem:sensor.ev>, <metaitem:emitter.ev>, <ore:wireGtSingleAluminium>]]);

# Guidance Computer
	recipes.remove(<advancedrocketry:guidancecomputer>);
	recipes.addShaped("ar_guidancecomputer", <advancedrocketry:guidancecomputer>, [[<metaitem:electric.motor.hv>, <advancedrocketry:dataunit>, <metaitem:electric.motor.hv>], [<ore:circuitExtreme>, <meta_tile_entity:gregtech:hull.hv>, <ore:circuitExtreme>], [<advancedrocketry:ic:1>, <metaitem:wafer.power_integrated_circuit>, <advancedrocketry:ic:1>]]);

# Space Station Builder
	recipes.remove(<advancedrocketry:stationbuilder>);
	recipes.addShaped("ar_stationbuilder", <advancedrocketry:stationbuilder>, [[<metaitem:electric.motor.ev>, <metaitem:robot.arm.ev>, <metaitem:electric.piston.ev>], [<ore:circuitExtreme>, <meta_tile_entity:gregtech:hull.ev>, <ore:circuitExtreme>], [<ore:gearTitanium>, <ore:circuitExtreme>, <ore:wireGtSingleAluminium>]]);

# CO2 Scrubber
	recipes.remove(<advancedrocketry:oxygenscrubber>);
	recipes.addShaped("ar_oxygenscrubber", <advancedrocketry:oxygenscrubber>, [[<ore:stickStainlessSteel>, <ore:rotorStainlessSteel>, <ore:stickStainlessSteel>], [<ore:stickStainlessSteel>, <meta_tile_entity:gregtech:hull.hv>, <ore:stickStainlessSteel>], [<ore:stickStainlessSteel>, <metaitem:gregtech:electric.motor.hv>, <ore:wireGtQuadGold>]]);

# Oxygen Vent
	recipes.remove(<advancedrocketry:oxygenvent>);
	recipes.addShaped("ar_oxygenvent", <advancedrocketry:oxygenvent>, [[<ore:stickStainlessSteel>, <ore:rotorStainlessSteel>, <ore:stickStainlessSteel>], [<ore:stickStainlessSteel>, <meta_tile_entity:gregtech:hull.hv>, <ore:stickStainlessSteel>], [<ore:stickStainlessSteel>, <metaitem:gregtech:electric.piston.hv>, <ore:wireGtSingleGold>]]);

# Gas Charge Pad
	recipes.remove(<advancedrocketry:oxygencharger>);
	recipes.addShaped("ar_oxygencharger", <advancedrocketry:oxygencharger>, [[<ore:plateStainlessSteel>, <ore:gearStainlessSteel>, <ore:plateStainlessSteel>], [<ore:plateStainlessSteel>, <meta_tile_entity:gregtech:hull.hv>, <ore:plateStainlessSteel>], [<ore:pipeSmallStainlessSteel>, <meta_tile_entity:gregtech:stainless_steel_tank>, <ore:pipeSmallStainlessSteel>]]);

# Atmosphere Detector
	recipes.remove(<advancedrocketry:oxygendetection>);
	recipes.addShaped("ar_oxygendetection", <advancedrocketry:oxygendetection>, [[<ore:plateTitanium>, <metaitem:sensor.ev>, <ore:plateTitanium>], [<ore:circuitExtreme>, <meta_tile_entity:gregtech:hull.ev>, <ore:circuitExtreme>], [<ore:wireGtSingleAluminium>, <metaitem:emitter.ev>, <ore:wireGtSingleAluminium>]]);

# Atmosphere Terraformer
	recipes.remove(<advancedrocketry:terraformer>);
	recipes.addShaped("ar_terraformer", <advancedrocketry:terraformer>, [[<ore:plateTungstensteel>, <metaitem:field.generator.iv>, <ore:plateTungstensteel>], [<ore:circuitElite>, <meta_tile_entity:gregtech:hull.iv>, <ore:circuitElite>], [<ore:wireGtSingleTungsten>, <metaitem:emitter.iv>, <ore:wireGtSingleTungsten>]]);

# Beacon
	recipes.remove(<advancedrocketry:beacon>);
	recipes.addShaped("ar_beacon", <advancedrocketry:beacon>, [[<ore:plateStainlessSteel>, <advancedrocketry:ic:1>, <ore:plateStainlessSteel>], [<ore:plateStainlessSteel>, <meta_tile_entity:gregtech:hull.hv>, <ore:plateStainlessSteel>], [<ore:wireGtSingleGold>, <ore:circuitAdvanced>, <ore:wireGtSingleGold>]]);

# Biome Scanner
	recipes.remove(<advancedrocketry:biomescanner>);
	recipes.addShaped("ar_biomescanner", <advancedrocketry:biomescanner>, [[<ore:plateTitanium>, <advancedrocketry:ic:1>, <ore:plateTitanium>], [<ore:plateTitanium>, <meta_tile_entity:gregtech:hull.ev>, <ore:circuitExtreme>], [<ore:wireGtSingleAluminium>, <metaitem:sensor.ev>, <metaitem:emitter.ev>]]);

# Force Field Projector
	recipes.remove(<advancedrocketry:forcefieldprojector>);
	recipes.addShaped("ar_forcefieldprojector", <advancedrocketry:forcefieldprojector>, [[<ore:plateTitanium>, <metaitem:field.generator.ev>, <ore:plateTitanium>], [<ore:plateTitanium>, <meta_tile_entity:gregtech:hull.ev>, <ore:circuitExtreme>], [<ore:wireGtSingleAluminium>, <ore:plateTitanium>, <ore:wireGtSingleAluminium>]]);

# Orientation Controller
	recipes.remove(<advancedrocketry:orientationcontroller>);
	recipes.addShaped("ar_orientationcontroller", <advancedrocketry:orientationcontroller>, [[<ore:plateNeodymium>, <metaitem:robot.arm.ev>, <ore:plateNeodymium>], [<ore:circuitExtreme>, <meta_tile_entity:gregtech:hull.ev>, <ore:circuitExtreme>], [<ore:wireGtSingleAluminium>, <minecraft:compass>, <ore:wireGtSingleAluminium>]]);

# Gravity Controller
	recipes.remove(<advancedrocketry:gravitycontroller>);
	recipes.addShaped("ar_gravitycontroller", <advancedrocketry:gravitycontroller>, [[<ore:plateTitanium>, <metaitem:robot.arm.ev>, <ore:plateTitanium>], [<ore:circuitExtreme>, <meta_tile_entity:gregtech:hull.ev>, <ore:circuitExtreme>], [<ore:wireGtSingleAluminium>, <metaitem:field.generator.ev>, <ore:wireGtSingleAluminium>]]);

# Area Gravity Controller
	recipes.remove(<advancedrocketry:gravitymachine>);
	recipes.addShaped("ar_gravitymachine", <advancedrocketry:gravitymachine>, [[<ore:plateNaquadah>, <metaitem:field.generator.iv>, <ore:plateNaquadah>], [<ore:circuitExtreme>, <meta_tile_entity:gregtech:hull.iv>, <ore:circuitExtreme>], [<ore:stickNaquadah>, <metaitem:field.generator.iv>, <ore:stickNaquadah>]]);

# Station Light
	recipes.remove(<advancedrocketry:circlelight>);
	recipes.addShaped("ar_circlelight", <advancedrocketry:circlelight>, [[null, <ore:plateStainlessSteel>, null], [null, <ore:glowstone>, null], [null, <ore:wireGtSingleGold>, null]]);


# Altitude Controller
	recipes.remove(<advancedrocketry:altitudecontroller>);
	recipes.addShaped("ar_altitudecontroller", <advancedrocketry:altitudecontroller>, [[<ore:plateTitanium>, <metaitem:robot.arm.ev>, <ore:plateTitanium>], [<ore:circuitExtreme>, <meta_tile_entity:gregtech:hull.ev>, <ore:circuitExtreme>], [<ore:wireGtSingleAluminium>, <advancedrocketry:jetpack>, <ore:wireGtSingleAluminium>]]);


# Drill
	recipes.remove(<advancedrocketry:drill>);
	recipes.addShaped("ar_drill", <advancedrocketry:drill>, [[<ore:plateTitanium>, <metaitem:robot.arm.ev>, <ore:plateTitanium>], [<ore:plateTitanium>, <meta_tile_entity:gregtech:hull.ev>, <ore:plateTitanium>], [<ore:wireGtSingleAluminium>, <ore:gtToolHeadDrillNeodymium>, <ore:wireGtSingleAluminium>]]);

# Microwave Receiver
	recipes.remove(<advancedrocketry:microwavereciever>);
	recipes.addShaped("ar_microwavereciever", <advancedrocketry:microwavereciever>, [[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>], [<ore:circuitExtreme>, <meta_tile_entity:gregtech:hull.ev>, <ore:circuitExtreme>], [<metaitem:sensor.ev>, <ore:wireGtSingleAluminium>, <metaitem:emitter.ev>]]);

# Suit Workstation
	recipes.remove(<advancedrocketry:suitworkstation>);
	recipes.addShaped("ar_suitworkstation", <advancedrocketry:suitworkstation>, [[<ore:plateStainlessSteel>, <minecraft:crafting_table>, <ore:plateStainlessSteel>], [<ore:circuitAdvanced>, <meta_tile_entity:gregtech:hull.hv>, <ore:circuitAdvanced>], [<metaitem:robot.arm.hv>, <ore:wireGtSingleGold>, <metaitem:robot.arm.hv>]]);

# Warp Core
	recipes.remove(<advancedrocketry:warpcore>);
	
	assembler.recipeBuilder()
	.inputs([<meta_tile_entity:gregtech:hull.ev>, <metaitem:electric.motor.ev>, <metaitem:robot.arm.ev>, <ore:circuitExtreme>, <ore:gemDilithium> * 9, <ore:plateTitanium> * 18])
    .property("circuit", 1)
	.outputs(<advancedrocketry:warpcore>)
	.EUt(1920)
	.duration(200)
	.buildAndRegister();

# Warp Controller
	recipes.remove(<advancedrocketry:warpmonitor>);
	
	assembler.recipeBuilder()
	.inputs([<meta_tile_entity:gregtech:hull.ev>, <metaitem:electric.motor.ev>, <ore:circuitExtreme> * 2, <ore:gemDilithium> * 9, <ore:plateTitanium> * 9])
    .property("circuit", 2)
	.outputs(<advancedrocketry:warpmonitor>)
	.EUt(1920)
	.duration(200)
	.buildAndRegister();

# Coils
recipes.addShaped("ar_coilCopper", <libvulpes:coil0:4>, 
    [[<ore:wireGtQuadCopper>, <ore:wireGtQuadCopper>, <ore:wireGtQuadCopper>],
    [<ore:wireGtQuadCopper>, <gregtech:meta_tool:6>, <ore:wireGtQuadCopper>],
    [<ore:wireGtQuadCopper>, <ore:wireGtQuadCopper>, <ore:wireGtQuadCopper>]]);

recipes.addShaped("ar_coilGold", <libvulpes:coil0:2>, 
    [[<ore:wireGtQuadGold>, <ore:wireGtQuadGold>, <ore:wireGtQuadGold>],
    [<ore:wireGtQuadGold>, <gregtech:meta_tool:6>, <ore:wireGtQuadGold>],
    [<ore:wireGtQuadGold>, <ore:wireGtQuadGold>, <ore:wireGtQuadGold>]]);

recipes.addShaped("ar_coilIridium", <libvulpes:coil0:10>, 
    [[<ore:stickLongIridium>,<ore:stickLongIridium>,<ore:stickLongIridium>],
    [<ore:stickLongIridium>,  <gregtech:meta_tool:6>, <ore:stickLongIridium>],
    [<ore:stickLongIridium>, <ore:stickLongIridium>, <ore:stickLongIridium>]]);

recipes.addShaped("ar_coilTitanium", <libvulpes:coil0:7>, 
    [[<ore:wireGtQuadTitanium>, <ore:wireGtQuadTitanium>, <ore:wireGtQuadTitanium>],
    [<ore:wireGtQuadTitanium>, <gregtech:meta_tool:6>, <ore:wireGtQuadTitanium>],
    [<ore:wireGtQuadTitanium>, <ore:wireGtQuadTitanium>, <ore:wireGtQuadTitanium>]]);

# Holoprojector
recipes.remove(<libvulpes:holoprojector>);

assembler.recipeBuilder()
	.inputs(<ore:plateStainlessSteel> * 6, <ore:circuitAdvanced>, <metaitem:display>, <ore:wireGtSingleGold> * 3)
    .fluidInputs([<liquid:soldering_alloy> * 288])
	.outputs(<libvulpes:holoprojector>)
	.EUt(480)
	.duration(600)
	.buildAndRegister();    

# Laser Drill
recipes.remove(<advancedrocketry:spacelaser>);
assembler.recipeBuilder()
	.inputs(<meta_tile_entity:gregtech:hull.iv>, <ore:plateTungstensteel> * 15, <gregtech:machine:2225>, <ore:circuitExtreme>, <metaitem:sensor.ev>, <metaitem:emitter.ev>)
    .fluidInputs([<liquid:soldering_alloy> * 1080])
	.outputs(<advancedrocketry:spacelaser>)
	.EUt(7680)
	.duration(1800)
	.buildAndRegister();    
	
# Planet Selector
	recipes.remove(<advancedrocketry:planetselector>);
	recipes.addShaped("ar_planetselector", <advancedrocketry:planetselector>, [[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>], [<ore:circuitAdvanced>, <meta_tile_entity:gregtech:hull.hv>, <ore:circuitAdvanced>], [<advancedrocketry:ic:1>, <ore:wireGtSingleElectrum>, <advancedrocketry:ic:1>]]);

# Railgun
	recipes.remove(<advancedrocketry:railgun>);
	
	assembly_line.recipeBuilder()
	.inputs(<ore:plateRhodiumPlatedPalladium> * 64)
	.inputs(<ore:plateRhodiumPlatedPalladium> * 64)
	.inputs(<ore:wireFineVanadiumGallium> * 64)
	.inputs(<ore:wireFineVanadiumGallium> * 64)
	.inputs(<metaitem:electric.motor.luv> * 32)
	.inputs(<metaitem:electric.piston.luv> * 16)
	.inputs(<metaitem:robot.arm.luv> * 16)
	.inputs(<meta_tile_entity:hull.luv>)
	.inputs(circuits[7] * 4)
	.inputs(<metaitem:field.generator.luv>)
    .fluidInputs([<liquid:soldering_alloy> * 1440])
	.fluidInputs([<liquid:lubricant> * 3000])
	.outputs(<advancedrocketry:railgun>)
	.EUt(30720)
	.duration(3000)
	.buildAndRegister();    

# Space Elevator

	assembler.recipeBuilder()
	.inputs(<ore:plateGraphene> * 64)
	.inputs(<ore:plateGraphene> * 64)
	.inputs(<ore:plateGraphene> * 64)
	.inputs(circuits[6] * 2)
	.inputs(<metaitem:electric.motor.iv> * 4)
	.inputs(<metaitem:electric.piston.iv> * 4)
	.inputs(<metaitem:robot.arm.iv> * 4)
	.inputs(<meta_tile_entity:hull.iv>)
	.inputs(<advancedrocketry:ic:3>)
	.fluidInputs([<liquid:soldering_alloy> * 720])
	.outputs(<advancedrocketry:spaceelevatorcontroller>)
	.EUt(7680)
	.duration(720)
	.buildAndRegister();    

# Station Docking Port
	recipes.remove(<advancedrocketry:stationmarker>);
	
	assembler.recipeBuilder()
	.inputs([<meta_tile_entity:gregtech:hull.ev>, <metaitem:electric.motor.hv>, <metaitem:electric.piston.hv>, <metaitem:robot.arm.hv>, <ore:gearTitanium>, <ore:circuitAdvanced>])
    .property("circuit", 2)
	.outputs(<advancedrocketry:stationmarker>)
	.EUt(1920)
	.duration(100)
	.buildAndRegister();

# Data storage unit
assembler.recipeBuilder()
	.inputs(<metaitem:wafer.nand_memory_chip> * 12)
    .inputs(<ore:platePlastic> * 4)
    .inputs(<metaitem:wafer.ram_memory_chip> * 4)
    .inputs(<ore:wireFineElectrum> * 8)
    .inputs(<metaitem:board.plastic>)
    .inputs(<ore:circuitAdvanced>)
	.outputs(<advancedrocketry:dataunit>)
	.EUt(480)
	.duration(175)
	.buildAndRegister();   

# Unmanned Vehicle Assembler
	recipes.remove(<advancedrocketry:deployablerocketbuilder>);
	recipes.addShaped("ar_deployablerocketbuilder", <advancedrocketry:deployablerocketbuilder>, [[<ore:plateTitanium>, <metaitem:robot.arm.ev>, <ore:plateTitanium>], [<ore:circuitAdvanced>, <meta_tile_entity:gregtech:hull.ev>, <ore:circuitAdvanced>], [<metaitem:electric.piston.ev>, <metaitem:electric.motor.ev>, <ore:wireGtSingleAluminium>]]);

# Wireless Transceiver
	recipes.remove(<advancedrocketry:wirelesstransciever>);
	recipes.addShaped("ar_wirelesstransciever", <advancedrocketry:wirelesstransciever>, [[<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>], [<ore:plateTitanium>, <metaitem:sensor.ev>, <metaitem:emitter.ev>], [<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>]]);


# Engines

# T1 engine
recipes.addShaped("ar_monopropellant_engine", <advancedrocketry:rocketmotor>, 
    [[<ore:plateStainlessSteel>, <ore:frameGtAluminium>, <ore:plateStainlessSteel>],
    [<ore:pipeSmallStainlessSteel>, <ore:plateStainlessSteel>, <ore:pipeSmallStainlessSteel>],
    [<ore:plateStainlessSteel>, <meta_tile_entity:gregtech:stainless_steel_tank>, <ore:plateStainlessSteel>]]);

# T2 engine
recipes.addShaped("ar_monopropellant_engine_advanced", <advancedrocketry:advrocketmotor>, 
    [[<ore:plateTitanium>, <ore:frameGtStainlessSteel>, <ore:plateTitanium>],
    [<ore:pipeSmallTitanium>, <ore:plateTitanium>, <ore:pipeSmallTitanium>],
    [<ore:plateTitanium>, <meta_tile_entity:gregtech:titanium_tank>, <ore:plateTitanium>]]);
    
# Machine Structure
recipes.remove(<libvulpes:structuremachine>);

recipes.addShaped("ar_machine_structure", <libvulpes:structuremachine>, 
    [[<ore:plateStainlessSteel>, <ore:stickAluminium>, <ore:plateStainlessSteel>],
    [<ore:stickAluminium>, <ore:frameGtStainlessSteel>, <ore:pipeSmallTitanium>],
    [<ore:plateStainlessSteel>, <ore:stickAluminium>, <ore:plateStainlessSteel>]]);

# Advanced Machine Structure

recipes.remove(<libvulpes:advstructuremachine>);

recipes.addShaped("ar_advanced_machine_structure", <libvulpes:advstructuremachine>, 
    [[<ore:plateTitanium>, <ore:stickStainlessSteel>, <ore:plateTitanium>],
    [<ore:stickStainlessSteel>, <ore:frameGtTitanium>, <ore:pipeSmallTitanium>],
    [<ore:plateTitanium>, <ore:stickStainlessSteel>, <ore:plateTitanium>]]);


# Dilithium
autoclave.recipeBuilder()
	.inputs(<ore:dustDilithium>)
    .fluidInputs([<liquid:water> * 1000])
	.outputs(<libvulpes:productgem>)
	.EUt(16)
	.duration(900)
	.buildAndRegister();   

# Linker
	recipes.remove(<libvulpes:linker>);
	
	assembler.recipeBuilder()
	.inputs([<ore:plateSteel> * 5, <metaitem:sensor.hv>, <metaitem:emitter.hv>])
	.fluidInputs([<liquid:soldering_alloy> * 144])
    .property("circuit", 1)
	.outputs(<libvulpes:linker>)
	.EUt(480)
	.duration(200)
	.buildAndRegister();

# Ore Scanner
	recipes.remove(<advancedrocketry:orescanner>);
	
	assembler.recipeBuilder()
	.inputs([<ore:plateSteel> * 5, circuits[3], <metaitem:sensor.hv>])
 	.fluidInputs([<liquid:soldering_alloy> * 144])
    .property("circuit", 2)
	.outputs(<advancedrocketry:orescanner>)
	.EUt(480)
	.duration(200)
	.buildAndRegister();


# Satellite
	recipes.remove(<advancedrocketry:satellite>);
	
	assembler.recipeBuilder()
	.inputs([<ore:plateTitanium> * 32, <ore:stickTitanium>, <ore:circuitExtreme>, <metaitem:sensor.ev>, <metaitem:emitter.ev>])
  	.fluidInputs([<liquid:soldering_alloy> * 144])
    .property("circuit", 1)
	.outputs(<advancedrocketry:satellite>)
	.EUt(1920)
	.duration(1000)
	.buildAndRegister();

# Tracking Chip
	recipes.remove(<advancedrocketry:ic:1>);
	
	assembler.recipeBuilder()
	.inputs([<metaitem:wafer.central_processing_unit>, <metaitem:wafer.random_access_memory>, <metaitem:wafer.nand_memory_chip> * 8, <ore:circuitAdvanced>, <metaitem:sensor.hv>, <metaitem:emitter.hv>])
	.fluidInputs([<liquid:soldering_alloy> * 144])
    .property("circuit", 1)
	.outputs(<advancedrocketry:satellite>)
	.EUt(480)
	.duration(420)
	.buildAndRegister();

# Microwave Transmitter
	recipes.remove(<advancedrocketry:satelliteprimaryfunction:3>);
	
	assembler.recipeBuilder()
	.inputs([<metaitem:wafer.central_processing_unit>, <metaitem:wafer.nand_memory_chip> * 16, <ore:circuitAdvanced>, <metaitem:sensor.hv>, <metaitem:emitter.hv> * 2])
	.fluidInputs([<liquid:soldering_alloy> * 144])
    .property("circuit", 2)
	.outputs(<advancedrocketry:satelliteprimaryfunction:3>)
	.EUt(480)
	.duration(600)
	.buildAndRegister();

# Composition Sensor
	recipes.remove(<advancedrocketry:satelliteprimaryfunction:1>);
	
	assembler.recipeBuilder()
	.inputs([<metaitem:wafer.central_processing_unit>, <metaitem:wafer.random_access_memory>, <metaitem:wafer.nand_memory_chip> * 16, <ore:circuitAdvanced>, <metaitem:sensor.hv> * 2, <metaitem:emitter.hv>])
 	.fluidInputs([<liquid:soldering_alloy> * 144])
    .property("circuit", 3)
	.outputs(<advancedrocketry:satelliteprimaryfunction:1>)
	.EUt(480)
	.duration(600)
	.buildAndRegister();

# Mass Detector
	recipes.remove(<advancedrocketry:satelliteprimaryfunction:2>);
	
	assembler.recipeBuilder()
	.inputs([<metaitem:wafer.central_processing_unit> * 2, <metaitem:wafer.random_access_memory> * 4, <metaitem:wafer.nand_memory_chip> * 8, <ore:circuitAdvanced>, <metaitem:sensor.hv>, <metaitem:emitter.hv>])
 	.fluidInputs([<liquid:soldering_alloy> * 144])
    .property("circuit", 4)
	.outputs(<advancedrocketry:satelliteprimaryfunction:2>)
	.EUt(480)
	.duration(600)
	.buildAndRegister();

# Ore Mapper
	recipes.remove(<advancedrocketry:satelliteprimaryfunction:4>);
	
	assembler.recipeBuilder()
	.inputs([<metaitem:wafer.central_processing_unit> * 4, <metaitem:wafer.random_access_memory> * 2, <metaitem:wafer.nand_memory_chip> * 8, <ore:circuitAdvanced> * 2, <metaitem:sensor.hv>, <metaitem:emitter.hv>])
	.fluidInputs([<liquid:soldering_alloy> * 144])
    .property("circuit", 5)
	.outputs(<advancedrocketry:satelliteprimaryfunction:4>)
	.EUt(480)
	.duration(600)
	.buildAndRegister();

# Biome Changer
	recipes.remove(<advancedrocketry:satelliteprimaryfunction:5>);
	
	assembler.recipeBuilder()
	.inputs([<metaitem:wafer.central_processing_unit> * 12, <metaitem:wafer.random_access_memory> * 12, <metaitem:wafer.nand_memory_chip> * 12, <ore:circuitElite>, <metaitem:sensor.ev>, <metaitem:emitter.ev>, <metaitem:field.generator.ev>])
	.fluidInputs([<liquid:soldering_alloy> * 144])
    .property("circuit", 6)
	.outputs(<advancedrocketry:satelliteprimaryfunction:5>)
	.EUt(1920)
	.duration(800)
	.buildAndRegister();
	
# Satellite ID Chip
	recipes.remove(<advancedrocketry:satelliteidchip>);
	
	assembler.recipeBuilder()
	.inputs([<metaitem:wafer.central_processing_unit> * 12, <metaitem:wafer.random_access_memory> * 12, <metaitem:wafer.nand_memory_chip> * 12, <ore:circuitExtreme>, <metaitem:sensor.hv>, <metaitem:emitter.hv>])
 	.fluidInputs([<liquid:soldering_alloy> * 144])
    .property("circuit", 7)
	.outputs(<advancedrocketry:satelliteidchip>)
	.EUt(1920)
	.duration(800)
	.buildAndRegister();

# Planet ID Chip
	recipes.remove(<advancedrocketry:satelliteidchip>);
	
	assembler.recipeBuilder()
	.inputs([<metaitem:wafer.central_processing_unit>, <metaitem:wafer.system_on_chip>, <metaitem:wafer.random_access_memory>, <metaitem:wafer.nand_memory_chip>, <ore:circuitAdvanced>])
 	.fluidInputs([<liquid:soldering_alloy> * 144])
   .property("circuit", 8)
	.outputs(<advancedrocketry:satelliteidchip>)
	.EUt(480)
	.duration(800)
	.buildAndRegister();

# User Interface
	recipes.remove(<advancedrocketry:misc>);
	
	assembler.recipeBuilder()
	.inputs([<metaitem:display>, <ore:circuitAdvanced>])
    .fluidInputs(<liquid:soldering_alloy> * 144)
	.property("circuit", 1)
	.outputs(<advancedrocketry:misc>)
	.EUt(480)
	.duration(220)
	.buildAndRegister();

# Space Station ID chip
	recipes.remove(<advancedrocketry:spacestationchip>);
	
	assembler.recipeBuilder()
	.inputs([<ore:circuitAdvanced>, <metaitem:wafer.central_processing_unit>, <metaitem:wafer.ram_memory_chip>, <metaitem:wafer.nand_memory_chip>])
	.fluidInputs([<liquid:soldering_alloy> * 144])
	.property("circuit", 9)
	.outputs(<advancedrocketry:spacestationchip>)
	.EUt(480)
	.duration(220)
	.buildAndRegister();

# SPACESUIT
# Space Helmet
	recipes.remove(<advancedrocketry:spacehelmet>);
	
	assembler.recipeBuilder()
	.inputs([<metaitem:carbon.plate> * 5, <ore:plateStainlessSteel> * 5, <ore:circuitAdvanced>, <ore:plateGlass> * 2])
	.fluidInputs([<liquid:soldering_alloy> * 144])
	.property("circuit", 1)
	.outputs(<advancedrocketry:spacehelmet>)
	.EUt(480)
	.duration(200)
	.buildAndRegister();

# Space Chestplate
	recipes.remove(<advancedrocketry:spacechestplate>);
	
	assembler.recipeBuilder()
	.inputs([<metaitem:carbon.plate> * 8, <ore:plateStainlessSteel> * 8, <ore:circuitGood>, <ore:stickSteel> * 2])
	.fluidInputs([<liquid:soldering_alloy> * 144])
	.property("circuit", 2)
	.outputs(<advancedrocketry:spacechestplate>)
	.EUt(480)
	.duration(320)
	.buildAndRegister();

# Space Leggings
	recipes.remove(<advancedrocketry:spaceleggings>);
	
	assembler.recipeBuilder()
	.inputs([<metaitem:carbon.plate> * 7, <ore:plateStainlessSteel> * 7, <ore:circuitGood>, <ore:stickSteel> * 2])
	.fluidInputs([<liquid:soldering_alloy> * 144])
	.property("circuit", 3)
	.outputs(<advancedrocketry:spaceleggings>)
	.EUt(480)
	.duration(280)
	.buildAndRegister();

# Space Boots
	recipes.remove(<advancedrocketry:spaceboots>);
	
	assembler.recipeBuilder()
	.inputs([<metaitem:carbon.plate> * 4, <ore:plateStainlessSteel> * 4, <ore:circuitGood>, <ore:stickSteel> * 2])
	.fluidInputs([<liquid:soldering_alloy> * 144])
	.property("circuit", 4)
	.outputs(<advancedrocketry:spaceboots>)
	.EUt(480)
	.duration(160)
	.buildAndRegister();
	
# Tier 1 Tank
	recipes.remove(<advancedrocketry:pressuretank>);
	
	assembler.recipeBuilder()
	.inputs([<ore:plateStainlessSteel> * 8, <ore:plateGlass> * 2])
	.fluidInputs([<liquid:soldering_alloy> * 144])
	.property("circuit", 1)
	.outputs(<advancedrocketry:pressuretank>)
	.EUt(480)
	.duration(160)
	.buildAndRegister();

# Tier 2 Tank
	recipes.remove(<advancedrocketry:pressuretank:1>);
	
	assembler.recipeBuilder()
	.inputs([<ore:plateTitanium> * 16, <ore:plateGlass> * 4])
	.fluidInputs([<liquid:soldering_alloy> * 288])
	.property("circuit", 1)
	.outputs(<advancedrocketry:pressuretank:1>)
	.EUt(1920)
	.duration(320)
	.buildAndRegister();
	
# Tier 3 Tank
	recipes.remove(<advancedrocketry:pressuretank:2>);
	
	assembler.recipeBuilder()
	.inputs([<ore:plateTungstensteel> * 32, <ore:plateGlass> * 8])
	.fluidInputs([<liquid:soldering_alloy> * 576])
	.property("circuit", 1)
	.outputs(<advancedrocketry:pressuretank:2>)
	.EUt(7680)
	.duration(640)
	.buildAndRegister();

# Tier 4 Tank
	recipes.remove(<advancedrocketry:pressuretank:3>);
	
	assembler.recipeBuilder()
	.inputs([<ore:plateRhodiumPlatedPalladium> * 64, <ore:plateGlass> * 16])
	.fluidInputs([<liquid:soldering_alloy> * 1152])
	.property("circuit", 1)
	.outputs(<advancedrocketry:pressuretank:3>)
	.EUt(30720)
	.duration(1280)
	.buildAndRegister();

# Small Airlock Door
	recipes.remove(<advancedrocketry:smallairlockdoor>);
	
	assembler.recipeBuilder()
	.inputs([<ore:plateStainlessSteel> * 7, <ore:plateGlass> * 3, <metaitem:carbon.plate> * 3, <ore:screwIron>])
	.fluidInputs([<liquid:soldering_alloy> * 64])
	.property("circuit", 1)
	.outputs(<advancedrocketry:smallairlockdoor>)
	.EUt(120)
	.duration(225)
	.buildAndRegister();
	
# Jetpack
	recipes.remove(<advancedrocketry:jetpack>);
	
	assembler.recipeBuilder()
	.inputs([<metaitem:impeller_jetpack>, <ore:plateStainlessSteel> * 5, <metaitem:carbon.plate>, <meta_tile_entity:gregtech:stainless_steel_tank>, <ore:screwAluminium>])
	.fluidInputs([<liquid:soldering_alloy> * 144])
	.property("circuit", 1)
	.outputs(<advancedrocketry:jetpack>)
	.EUt(480)
	.duration(256)
	.buildAndRegister();
	
	
# Carbon Collector Cartridge
	recipes.remove(<advancedrocketry:carbonscrubbercartridge>);
	
	assembler.recipeBuilder()
	.inputs([<ore:barsIron> * 6, <ore:plateSteel> * 6, <metaitem:item_filter>])
	.property("circuit", 1)
	.outputs(<advancedrocketry:carbonscrubbercartridge>)
	.EUt(120)
	.duration(380)
	.buildAndRegister();

# Hover Upgrade 
	recipes.remove(<advancedrocketry:itemupgrade>);
	
	assembler.recipeBuilder()
	.inputs([<ore:circuitAdvanced>, <ore:plateSilicon>, <ore:stickGold>, <ore:screwGold>])
	.fluidInputs([<liquid:soldering_alloy> * 144])
	.property("circuit", 1)
	.outputs(<advancedrocketry:itemupgrade>)
	.EUt(480)
	.duration(300)
	.buildAndRegister();

# Flight Speed Control Upgrade 
	recipes.remove(<advancedrocketry:itemupgrade:1>);
	
	assembler.recipeBuilder()
	.inputs([<ore:circuitAdvanced>, <ore:plateSilicon>, <ore:stickGold>, <ore:screwGold>])
	.fluidInputs([<liquid:soldering_alloy> * 144])
	.property("circuit", 2)
	.outputs(<advancedrocketry:itemupgrade:1>)
	.EUt(480)
	.duration(300)
	.buildAndRegister();

# If you see this, you are seeing my sanity slowly go away as I go deeper and deeper into crafttweaker hell. It's been 750 lines. When will it end? Will it end at all?

# Bionic Leg Upgrade
	recipes.remove(<advancedrocketry:itemupgrade:2>);
	
	assembler.recipeBuilder()
	.inputs([<ore:plateStainlessSteel> * 7, <ore:circuitAdvanced> * 2, <ore:plateSilicon>, <ore:stickGold>, <ore:screwGold>, <ore:stickAluminium>, <metaitem:sensor.hv>, <metaitem:emitter.hv>])
	.fluidInputs([<liquid:soldering_alloy> * 144])
	.property("circuit", 3)
	.outputs(<advancedrocketry:itemupgrade:2>)
	.EUt(480)
	.duration(1800)
	.buildAndRegister();

# Padded Landing Boots
	recipes.remove(<advancedrocketry:itemupgrade:3>);
	
	assembler.recipeBuilder()
	.inputs([<ore:plateStainlessSteel> * 5, <ore:circuitAdvanced>, <ore:plateSiliconeRubber> * 7])
	.fluidInputs([<liquid:soldering_alloy> * 144])
	.property("circuit", 4)
	.outputs(<advancedrocketry:itemupgrade:3>)
	.EUt(480)
	.duration(300)
	.buildAndRegister();

# Anti-Fog Visor
	recipes.remove(<advancedrocketry:itemupgrade:4>);
	
	assembler.recipeBuilder()
	.inputs([<ore:plateStainlessSteel> * 3, <ore:plateGlass> * 3, <ore:circuitAdvanced>, <ore:plateSilicon> * 7, <ore:sensor.hv>, <ore:emitter.hv>, <ore:screwSteel> * 4])
	.fluidInputs([<liquid:soldering_alloy> * 144])
	.property("circuit", 5)
	.outputs(<advancedrocketry:itemupgrade:3>)
	.EUt(480)
	.duration(600)
	.buildAndRegister();
	
# Atmosphere Analyzer
	recipes.remove(<advancedrocketry:atmanalyser>);
	
	assembler.recipeBuilder()
	.inputs([<ore:sensor.hv>, <ore:emitter.hv>, <ore:screwSteel> * 12, <ore:plateStainlessSteel> * 3, <ore:screwGold>, <ore:circuitAdvanced>, <ore:plateSilicon> * 5])
	.fluidInputs([<liquid:soldering_alloy> * 144])
	.property("circuit", 6)
	.outputs(<advancedrocketry:atmanalyser>)
	.EUt(480)
	.duration(600)
	.buildAndRegister();

# Basic Laser Gun
	recipes.remove(<advancedrocketry:basiclasergun>);
	
	assembler.recipeBuilder()
	.inputs([<ore:plateAluminium> * 24, <ore:craftingLensBlue>, <ore:craftingLensRed>, <ore:screwAluminium> * 3, <ore:plateGlass>])
	.fluidInputs([<liquid:soldering_alloy> * 144])
	.property("circuit", 1)
	.outputs(<advancedrocketry:basiclasergun>)
	.EUt(120)
	.duration(600)
	.buildAndRegister();

# Beacon Finder
	recipes.remove(<advancedrocketry:beaconfinder>);
	
	assembler.recipeBuilder()
	.inputs([<ore:plateStainlessSteel> * 5, <ore:plateGlass> * 5, <metaitem:sensor.mv>, <metaitem:emitter.mv>, <ore:screwStainlessSteel> * 3, <ore:circuitAdvanced>])
	.fluidInputs([<liquid:soldering_alloy> * 144])
	.property("circuit", 7)
	.outputs(<advancedrocketry:beaconfinder>)
	.EUt(480)
	.duration(600)
	.buildAndRegister();

# Hovercraft
	recipes.remove(<advancedrocketry:hovercraft>);
	
	assembler.recipeBuilder()
	.inputs([<ore:plateTitanium> * 15, <ore:plateGold> * 5, <ore:plateRedstone> * 5, <ore:plateSilicon> * 5, <libvulpes:productgem> * 8, <ore:circuitExtreme>])
	.fluidInputs([<liquid:soldering_alloy> * 432])
	.property("circuit", 11)
	.outputs(<advancedrocketry:hovercraft>)
	.EUt(1920)
	.duration(1920)
	.buildAndRegister();

# Input Hatch
	recipes.remove(<libvulpes:hatch>);
	
	assembler.recipeBuilder()
	.inputs([<ore:inputBus>])
	.property("circuit", 30)
	.outputs(<libvulpes:hatch>)
	.EUt(30)
	.duration(150)
	.buildAndRegister();

# Output Hatch
	recipes.remove(<libvulpes:hatch:1>);
	
	assembler.recipeBuilder()
	.inputs([<ore:outputBus>])
	.property("circuit", 30)
	.outputs(<libvulpes:hatch:1>)
	.EUt(30)
	.duration(150)
	.buildAndRegister();


# Fluid Input Hatch
	recipes.remove(<libvulpes:hatch:2>);
	
	assembler.recipeBuilder()
	.inputs([<ore:inputHatch>])
	.property("circuit", 30)
	.outputs(<libvulpes:hatch:2>)
	.EUt(30)
	.duration(150)
	.buildAndRegister();

# Output Hatch
	recipes.remove(<libvulpes:hatch:3>);
	
	assembler.recipeBuilder()
	.inputs([<ore:outputHatch>])
	.property("circuit", 30)
	.outputs(<libvulpes:hatch:3>)
	.EUt(30)
	.duration(150)
	.buildAndRegister();
