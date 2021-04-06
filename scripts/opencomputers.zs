
// made by Darmin404/Alex404
// Sourced from https://github.com/Alessandro404/Gregging-other-mods-for-fun/blob/main/WithGregicality/opencomputers.zs
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDictEntry;

val advanced_circuit_board = <metaitem:board.advanced>;
val advanced_power_thruster = <metaitem:impeller.hv>;
val display = <metaitem:display>;
val ev_machine_hull = <meta_tile_entity:gregtech:hull.ev>;
val ev_piston = <metaitem:electric.piston.ev>;
val ev_robot_arm = <metaitem:robot.arm.ev>;
val ev_sensor = <metaitem:sensor.ev>;
val good_plastic_circuit_board = <metaitem:board.good.plastic>;
val gt_ram = <metaitem:plate.random_access_memory>;
val gt_cpu = <metaitem:plate.central_processing_unit>;
val high_power_ic = <metaitem:plate.high_power_integrated_circuit>;
val hv_emitter = <metaitem:emitter.hv>;
val hv_machine_hull = <meta_tile_entity:gregtech:hull.hv>;
val hv_conveyor_belt = <metaitem:conveyor.module.hv>;
val hv_piston = <metaitem:electric.piston.hv>;
val hv_robot_arm = <metaitem:robot.arm.hv>;
val hv_sensor = <metaitem:sensor.hv>;
val machine_controller = <metaitem:cover.controller>;
val mv_cadmium_battery = <metaitem:battery.re.mv.cadmium>;
val mv_conveyor_belt = <metaitem:conveyor.module.mv>;
val mv_emitter = <metaitem:emitter.mv>;
val mv_machine_hull = <meta_tile_entity:gregtech:hull.mv>;
val mv_piston = <metaitem:electric.piston.mv>;
val mv_pump = <metaitem:electric.pump.mv>;
val mv_sensor = <metaitem:sensor.mv>;
val mv_robot_arm = <metaitem:robot.arm.mv>;
val oc_arithmetic_logic_unit = <opencomputers:material:10>;
val oc_cable = <opencomputers:cable>;
val oc_card_base = <opencomputers:material:5>;
val oc_component_bus_3 = <opencomputers:component:5>;
val oc_component_bus_1 = <opencomputers:component:3>;
val oc_component_bus_2 = <opencomputers:component:4>;
val oc_control_unit = <opencomputers:material:11>;
val oc_cpu_2 = <opencomputers:component:1>;
val oc_cpu_3 = <opencomputers:component:2>;
val oc_disk_platter = <opencomputers:material:12>;
val oc_graphic_card_1 = <opencomputers:card:1>;
val oc_graphic_card_2 = <opencomputers:card:2>;
val oc_interweb = <opencomputers:material:13>;
val oc_memory_1 = <opencomputers:component:6>;
val oc_memory_2 = <opencomputers:component:8>;
val oc_memory_3 = <opencomputers:component:10>;
val oc_printed_circuit_board =<opencomputers:material:4>;
val oc_transistor = <opencomputers:material:6>;
val plastic_circuit_board = <metaitem:board.good.plastic>; 
val power_ic = <metaitem:plate.power_integrated_circuit>;
val power_thruster = <metaitem:impeller.mv>;
val refined_smd_resistor = <metaitem:component.smd.transistor.refined>;
val resistor = <metaitem:component.resistor>;
val scanner= <metaitem:scanner>;
val smd_capacitor = <metaitem:component.smd.capacitor>;
val smd_diode = <metaitem:component.smd.diode>;
val smd_transistor  = <metaitem:component.smd.transistor>;
val smd_resistor = <metaitem:component.smd.resistor>;
val transistor = <metaitem:component.transistor>;



val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val chemical_reactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val circuit_assembler = mods.gregtech.recipe.RecipeMap.getByName("circuit_assembler");



val name_removals = [
    "opencomputers:printer18",
    "opencomputers:adapter0",
    "opencomputers:assembler1",
    "opencomputers:cable2",
    "opencomputers:cable2",
    "opencomputers:capacitor3",
    "opencomputers:charger8",
    "opencomputers:case14",
    "opencomputers:case26",
    "opencomputers:case35",
    "opencomputers:disassembler9",
    "opencomputers:diskdrive10",
    "opencomputers:material50",
    "opencomputers:material51",
    "opencomputers:geolyzer11",
    "opencomputers:hologram112",
    "opencomputers:powerconverter16",
    "opencomputers:netsplitter28",
    "opencomputers:powerdistributor17",
    "opencomputers:raid19",
    "opencomputers:redstone20",
    "opencomputers:relay21",
    "opencomputers:screen122",
    "opencomputers:screen224",
    "opencomputers:screen323",
    "opencomputers:rack25",
    "opencomputers:waypoint26",
    "opencomputers:transposer29",
    "opencomputers:material39",
    "opencomputers:material34",
    "opencomputers:material40",
    "opencomputers:material40",
    "opencomputers:material42",
    "opencomputers:material48",
    "opencomputers:material49",
    "opencomputers:material36",
    "opencomputers:material37",
    "opencomputers:material38",
    "opencomputers:material33",
    "opencomputers:material46",
    "opencomputers:material47",
    "opencomputers:material35",
    "opencomputers:component77",
    "opencomputers:component78",
    "opencomputers:tool55",
    "opencomputers:component62",
    "opencomputers:component63",
    "opencomputers:component64",
    "opencomputers:component65",
    "opencomputers:component66",
    "opencomputers:component67",
    "opencomputers:card90",
    "opencomputers:card91",
    "opencomputers:card92",
    "opencomputers:component80",
    "opencomputers:storage125",
    "opencomputers:card81",
    "opencomputers:card82",
    "opencomputers:card83",
    "opencomputers:storage127",
    "opencomputers:storage128",
    "opencomputers:storage129",
    "opencomputers:card88",
    "opencomputers:card89",
    "opencomputers:component68",
    "opencomputers:component69",
    "opencomputers:component70",
    "opencomputers:component71",
    "opencomputers:component72",
    "opencomputers:component73",
    "opencomputers:card86",
    "opencomputers:card84",
    "opencomputers:card85",
    "opencomputers:tool56",
    "opencomputers:wrench59",
    "opencomputers:component74",
    "opencomputers:component75",
    "opencomputers:component76",
    "opencomputers:component79",
    "opencomputers:upgrade124",
    "opencomputers:card87",
    "opencomputers:hologram213",
    "opencomputers:motionsensor15"
] as string[];

for item in name_removals {
	recipes.removeByRecipeName(item);
}


// BLOCKS---------------------------------------------------------------------------------------------------------------

//3D Printer
recipes.addShaped("ct_oc_3dprinter", <opencomputers:printer>, 
    [[<ore:plateTitanium>, ev_robot_arm, <ore:plateTitanium>],
    [ev_robot_arm, <ore:circuitExtreme>, ev_robot_arm],
    [<ore:plateTitanium>, ev_machine_hull, <ore:plateTitanium>]]);
    

//Adapter
assembler.recipeBuilder()
	.inputs(mv_machine_hull)
	.inputs(<ore:circuitGood>)
    .inputs(<ore:cableGtSingleAnnealedCopper> * 3)
    .inputs(mv_sensor)
    .fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<opencomputers:adapter>)
	.EUt(30)
	.duration(400)
	.buildAndRegister();


//assembler
assembler.recipeBuilder()
	.inputs(hv_machine_hull)
	.inputs(<ore:circuitAdvanced> * 2)
    .inputs(hv_robot_arm * 2)
    .inputs(hv_conveyor_belt * 2)
    .fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<opencomputers:assembler>)
	.EUt(500)
	.duration(400)
	.buildAndRegister();


//Cable (this one is an experiment on a more realistic recipe, also pretty unique)
assembler.recipeBuilder()
	.inputs(<ore:wireFineAnnealedCopper> * 2)
	.inputs(<ore:foilPlastic>)
    .inputs(<ore:wireGtSingleAnnealedCopper> * 1)
    .fluidInputs([<liquid:rubber> * 144])
	.outputs(<opencomputers:cable>)
	.EUt(8)
	.duration(150)
	.buildAndRegister();


//Capacitor
recipes.addShaped("ct_oc_capacitor", <opencomputers:capacitor>, 
    [[<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>],
    [<ore:wireGtDoubleAnnealedCopper>, mv_machine_hull, <ore:wireGtDoubleAnnealedCopper>],
    [mv_cadmium_battery, <ore:craftingToolWrench>, mv_cadmium_battery]]);


//Charger
recipes.addShaped("ct_oc_charger", <opencomputers:charger>, 
    [[<ore:plateStainlessSteel>, <ore:craftingToolWrench>, <ore:plateStainlessSteel>],
    [<ore:oc:capacitor>, <ore:circuitAdvanced>, <ore:oc:capacitor>],
    [<ore:plateStainlessSteel>, hv_machine_hull, <ore:plateStainlessSteel>]]);


//Computer case Tier 1
assembler.recipeBuilder()
	.inputs(mv_machine_hull)
	.inputs(<ore:cableGtSingleAnnealedCopper> * 2)
    .inputs(machine_controller)
    .inputs(<ore:frameGtAluminium>)
    .inputs(<ore:rotorBronze> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 288])
	.outputs(<opencomputers:case1>)
	.EUt(90)
	.duration(320)
	.buildAndRegister();


//Computer case Tier 2
assembler.recipeBuilder()
	.inputs(hv_machine_hull)
	.inputs(<ore:cableGtSingleElectrum> * 2)
    .inputs(machine_controller)
    .inputs(<ore:frameGtStainlessSteel>)
    .inputs(<ore:rotorSteel> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 288])
	.outputs(<opencomputers:case2>)
	.EUt(240)
	.duration(320)
	.buildAndRegister();


//Computer case Tier 3
assembler.recipeBuilder()
	.inputs(ev_machine_hull)
	.inputs(<ore:cableGtSingleAluminium> * 2)
    .inputs(machine_controller)
    .inputs(<ore:frameGtTitanium>)
    .inputs(<ore:rotorStainlessSteel> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 288])
	.outputs(<opencomputers:case3>)
	.EUt(960)
	.duration(320)
	.buildAndRegister();
    

//Disassembler
recipes.addShaped("ct_oc_disassembler", <opencomputers:disassembler>, 
    [[mv_robot_arm, <ore:oc:analyzer>, mv_conveyor_belt],
    [mv_pump, mv_machine_hull, mv_conveyor_belt],
    [<ore:circuitGood>, <ore:cableGtSingleAnnealedCopper>, <ore:circuitGood>]]);
    

//Disk drive
recipes.addShaped("ct_oc_diskdrive", <opencomputers:diskdrive>, 
    [[<ore:cableGtSingleAnnealedCopper>, <ore:circuitGood>, <ore:craftingToolWrench>],
    [mv_piston, mv_machine_hull, <ore:craftingLensWhite>],
    [<ore:cableGtSingleAnnealedCopper>, <ore:circuitGood>, <ore:cableGtSingleAnnealedCopper>]]);
    
    
    
//drone case Tier 1
assembler.recipeBuilder()
	.inputs(power_thruster * 4)
	.inputs(<ore:circuitAdvanced> * 2)
    .inputs(<opencomputers:component:4>)
    .inputs(<opencomputers:material:20>)
    .inputs(hv_sensor)
    .fluidInputs([<liquid:plastic> * 144])
	.outputs(<opencomputers:material:23>)
	.EUt(300)
	.duration(400)
	.buildAndRegister();


//drone case Tier 1
assembler.recipeBuilder()
	.inputs(advanced_power_thruster * 4)
	.inputs(<ore:circuitExtreme> * 2)
    .inputs(<opencomputers:component:5>)
    .inputs(<opencomputers:material:21>)
    .inputs(ev_sensor)
    .fluidInputs([<liquid:plastic> * 144])
	.outputs(<opencomputers:material:24>)
	.EUt(900)
	.duration(400)
	.buildAndRegister();


//Geolyzer
recipes.addShaped("ct_oc_geolyzer", <opencomputers:geolyzer>, 
    [[<ore:cableGtSingleElectrum>, scanner, <ore:cableGtSingleElectrum>],
    [mv_sensor, hv_machine_hull, mv_sensor],
    [<ore:circuitAdvanced>, <ore:craftingToolWrench>, <ore:circuitAdvanced>]]);
    
    
//hologram tier 1
recipes.addShaped("ct_oc_hologram1", <opencomputers:hologram1>, 
    [[<ore:plateStainlessSteel>, <ore:craftingLensLime>, <ore:plateStainlessSteel>],
    [power_ic, hv_machine_hull, power_ic],
    [<ore:circuitAdvanced>, <ore:stickBlaze>, <ore:circuitAdvanced>]]);


//hologram tier 2

recipes.addShaped("ct_oc_hologram2", <opencomputers:hologram2>, 
    [[<ore:plateStainlessSteel>, <ore:craftingLensLime>, <ore:plateStainlessSteel>],
    [high_power_ic, ev_machine_hull, high_power_ic],
    [<ore:circuitExtreme>, <ore:stickBlaze>, <ore:circuitExtreme>]]);
    

//Motion sensor
recipes.addShaped("ct_oc_motionsensor", <opencomputers:motionsensor>, 
    [[<ore:plateStainlessSteel>, hv_sensor, <ore:plateStainlessSteel>],
    [hv_sensor, <ore:oc:cpu2>, hv_sensor],
    [<ore:plateStainlessSteel>, hv_machine_hull, <ore:plateStainlessSteel>]]);
    
    
//Power Converter
recipes.addShaped("ct_oc_powerconverter", <opencomputers:powerconverter>, 
    [[<ore:plateAluminium>, <ore:circuitGood>, <ore:plateAluminium>],
    [<ore:cableGtSingleAnnealedCopper>, mv_machine_hull, oc_cable],
    [<ore:plateAluminium>, <ore:craftingToolWrench>, <ore:plateAluminium>]]);
     
    
//Net splitter
recipes.addShaped("ct_oc_netsplitter", <opencomputers:netsplitter>, 
    [[<ore:plateAluminium>, machine_controller, <ore:plateAluminium>],
    [oc_cable, mv_machine_hull, oc_cable],
    [mv_piston, <ore:craftingToolWrench>, mv_piston]]);
    
    
//power distributor
recipes.addShaped("ct_oc_powerdistributor", <opencomputers:powerdistributor>,
    [[oc_cable, <opencomputers:powerconverter>, oc_cable]]);
    


//Raid
recipes.addShaped("ct_oc_raid", <opencomputers:raid>, 
    [[<ore:plateTitanium>, <ore:oc:cpu3>, <ore:plateTitanium>],
    [<ore:oc:ram1>, <ore:oc:diskDrive>, <ore:oc:ram1>],
    [<ore:plateTitanium>, <ore:circuitExtreme>, <ore:plateTitanium>]]);
    
    
//Redstone I/O
recipes.addShaped("ct_oc_redstoneio", <opencomputers:redstone>, 
    [[<ore:plateTitanium>, <ore:circuitExtreme>, <ore:plateTitanium>],
    [<ore:blockRedstone>, ev_machine_hull, <ore:blockRedstone>],
    [<ore:plateTitanium>, <ore:oc:redstoneCard1>, <ore:plateTitanium>]]);
    
    
//Relay
recipes.addShaped("ct_oc_relay", <opencomputers:relay>, 
    [[<ore:plateAluminium>, <ore:circuitGood>, <ore:plateAluminium>],
    [oc_cable, mv_machine_hull, oc_cable],
    [<ore:plateAluminium>, <ore:oc:lanCard>, <ore:plateAluminium>]]);
    
    
//Screen tier1
recipes.addShaped("ct_oc_screen1", <opencomputers:screen1>, 
    [[<ore:wireFineAnnealedCopper>, <ore:circuitGood>, <ore:wireFineAnnealedCopper>],
    [<ore:plateGlowstone>, mv_machine_hull, <ore:blockGlassColorless>],
    [<ore:wireFineAnnealedCopper>, <ore:craftingToolWrench>, <ore:wireFineAnnealedCopper>]]);
    
    
//Screen tier2
recipes.addShaped("ct_oc_screen2", <opencomputers:screen2>, 
    [[<ore:wireFineAnnealedCopper>, <ore:circuitAdvanced>, <ore:wireFineAnnealedCopper>],
    [<ore:plateGlowstone>, hv_machine_hull, display],
    [<ore:wireFineAnnealedCopper>, <ore:craftingToolWrench>, <ore:wireFineAnnealedCopper>]]);
    

//Screen tier3
recipes.addShaped("ct_oc_screen3", <opencomputers:screen3>, 
    [[<ore:wireFineAnnealedCopper>, <ore:circuitExtreme>, <ore:wireFineAnnealedCopper>],
    [<ore:plateGlowstone>, ev_machine_hull, display],
    [<ore:wireFineAnnealedCopper>, <ore:craftingToolWrench>, <ore:wireFineAnnealedCopper>]]);
    
    
    
//Rack
recipes.addShaped("ct_oc_rack", <opencomputers:rack>, 
    [[<ore:plateStainlessSteel>, <ore:oc:wlanCard2>, <ore:plateStainlessSteel>],
    [<ore:frameGtStainlessSteel>, hv_machine_hull, <ore:frameGtStainlessSteel>],
    [<ore:oc:relay>, <ore:circuitAdvanced>, <ore:oc:powerDistributor>]]);
    
    
//Waypoint
recipes.addShaped("ct_oc_waypoint", <opencomputers:waypoint>, 
    [[<ore:plateAluminium>, <ore:circuitGood>, <ore:plateAluminium>],
    [transistor, <ore:oc:materialInterweb>, transistor],
    [<ore:plateAluminium>, mv_machine_hull, <ore:plateAluminium>]]);
    
    
//Transposer
recipes.addShaped("ct_oc_transposer", <opencomputers:transposer> * 4, 
    [[<ore:plateStainlessSteel>, <ore:oc:inventoryControllerUpgrade>, <ore:plateStainlessSteel>],
    [hv_robot_arm, hv_machine_hull, hv_robot_arm],
    [<ore:plateStainlessSteel>, <ore:oc:tankControllerUpgrade>, <ore:plateStainlessSteel>]]);



 // Crafting Components (I've tried to make them equilibrated for addons)----------------------------------------------
 
 //Arithmetic logic unit
circuit_assembler.recipeBuilder()
    .inputs(smd_transistor * 4)
    .inputs(<ore:circuitGood>)
    .inputs(<ore:wireFineRedAlloy> * 4)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<opencomputers:material:10>)
    .EUt(60)
    .duration(200)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .inputs(smd_transistor * 4)
    .inputs(<ore:circuitGood>)
    .inputs(<ore:wireFineRedAlloy> * 4)
    .fluidInputs([<liquid:tin> * 288])
    .outputs(<opencomputers:material:10>)
    .EUt(60)
    .duration(200)
    .buildAndRegister();
 
 
 
//Card base
circuit_assembler.recipeBuilder()
    .inputs(good_plastic_circuit_board)
    .inputs(smd_transistor * 2)
    .inputs(smd_resistor)
    .inputs(smd_capacitor)
    .inputs(smd_diode * 2)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<opencomputers:material:5>)
    .EUt(60)
    .duration(200)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .inputs(good_plastic_circuit_board)
    .inputs(smd_transistor * 2)
    .inputs(smd_resistor)
    .inputs(smd_capacitor)
    .inputs(smd_diode * 2)
    .fluidInputs([<liquid:tin> * 288])
    .outputs(<opencomputers:material:5>)
    .EUt(60)
    .duration(200)
    .buildAndRegister();
    
    
//Control unit    
circuit_assembler.recipeBuilder()
    .inputs(smd_transistor * 4)
    .inputs(<minecraft:clock>)
    .inputs(<ore:wireFineRedAlloy> * 4)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<opencomputers:material:11>)
    .EUt(60)
    .duration(200)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .inputs(smd_transistor * 4)
    .inputs(<minecraft:clock>)
    .inputs(<ore:wireFineRedAlloy> * 4)
    .fluidInputs([<liquid:tin> * 288])
    .outputs(<opencomputers:material:11>)
    .EUt(60)
    .duration(200)
    .buildAndRegister();
    
    
//Interweb
assembler.recipeBuilder()
    .inputs(mv_emitter)
    .inputs(mv_sensor)
    .inputs(<ore:string> * 8)
    .fluidInputs([<liquid:plastic> * 144])
    .outputs(<opencomputers:material:13>)
    .EUt(60)
    .duration(200)
    .buildAndRegister();


//microcontroller Tier 1
assembler.recipeBuilder()
	.inputs(mv_machine_hull)
	.inputs(<ore:circuitGood>)
    .inputs(<ore:dustRedstone> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<opencomputers:material:20>)
	.EUt(60)
	.duration(400)
	.buildAndRegister();
    

//microcontroller Tier 2 (strangely, the mod uses a chip tier 3 for that, so its a tier 3 machine)
assembler.recipeBuilder()
	.inputs(ev_machine_hull)
	.inputs(<ore:circuitExtreme>)
    .inputs(<ore:blockRedstone> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<opencomputers:material:21>)
	.EUt(900)
	.duration(400)
	.buildAndRegister();
    
    
//Microchip Tier 1 (is basically a MV circuit) 
circuit_assembler.recipeBuilder()
    .inputs(resistor * 8)
    .inputs(<ore:circuitBasic> * 3)
    .inputs(oc_transistor * 2)
    .inputs(<ore:plateElectrum>)
    .fluidInputs([<liquid:soldering_alloy> * 288])
    .outputs(<opencomputers:material:7>)
    .EUt(16)
    .duration(200)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .inputs(resistor * 8)
    .inputs(<ore:circuitBasic> * 3)
    .inputs(oc_transistor * 2)
    .inputs(<ore:plateElectrum>)
    .fluidInputs([<liquid:tin> * 576])
    .outputs(<opencomputers:material:7>)
    .EUt(16)
    .duration(200)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .inputs(resistor * 8)
    .inputs(<ore:circuitBasic> * 3)
    .inputs(oc_transistor * 2)
    .inputs(<ore:plateElectrum>)
    .fluidInputs([<liquid:lead> * 1552])
    .outputs(<opencomputers:material:7>)
    .EUt(16)
    .duration(200)
    .buildAndRegister();


//Microchip Tier 2 (is basically a HV circuit) 
circuit_assembler.recipeBuilder()
    .inputs(resistor * 8)
    .inputs(<ore:circuitGood> * 4)
    .inputs(oc_transistor * 8)
    .inputs(gt_ram * 2)
    .inputs(good_plastic_circuit_board)
    .inputs(<ore:wireGtSingleMvSuperconductor>)
    .fluidInputs([<liquid:soldering_alloy> * 288])
    .outputs(<opencomputers:material:8>)
    .EUt(90)
    .duration(200)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .inputs(resistor * 8)
    .inputs(<ore:circuitGood> * 4)
    .inputs(oc_transistor * 8)
    .inputs(gt_ram * 2)
    .inputs(good_plastic_circuit_board)
    .inputs(<ore:wireGtSingleMvSuperconductor>)
    .fluidInputs([<liquid:tin> * 576])
    .outputs(<opencomputers:material:8>)
    .EUt(90)
    .duration(200)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .inputs(resistor * 8)
    .inputs(<ore:circuitGood> * 4)
    .inputs(oc_transistor * 8)
    .inputs(gt_ram * 2)
    .inputs(good_plastic_circuit_board)
    .inputs(<ore:wireGtSingleMvSuperconductor>)
    .fluidInputs([<liquid:lead> * 1552])
    .outputs(<opencomputers:material:8>)
    .EUt(90)
    .duration(200)
    .buildAndRegister();
    
    
//Microchip Tier 3 (is basically an EV circuit) 
circuit_assembler.recipeBuilder()
    .inputs(refined_smd_resistor * 8)
    .inputs(<opencomputers:material:6> * 8)
    .inputs(advanced_circuit_board)
    .inputs(gt_ram * 8)
    .inputs(<ore:circuitAdvanced> * 4)
    .inputs(<ore:wireGtSingleHvSuperconductor>)
    .fluidInputs([<liquid:soldering_alloy> * 288])
    .outputs(<opencomputers:material:9>)
    .EUt(600)
    .duration(200)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .inputs(refined_smd_resistor * 8)
    .inputs(<opencomputers:material:6> * 8)
    .inputs(advanced_circuit_board)
    .inputs(gt_ram * 8)
    .inputs(<ore:circuitAdvanced> * 4)
    .inputs(<ore:wireGtSingleHvSuperconductor>)
    .fluidInputs([<liquid:tin> * 576])
    .outputs(<opencomputers:material:9>)
    .EUt(600)
    .duration(200)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .inputs(refined_smd_resistor * 8)
    .inputs(<opencomputers:material:6> * 8)
    .inputs(advanced_circuit_board)
    .inputs(gt_ram * 8)
    .inputs(<ore:circuitAdvanced> * 4)
    .inputs(<ore:wireGtSingleHvSuperconductor>)
    .fluidInputs([<liquid:lead> * 1552])
    .outputs(<opencomputers:material:9>)
    .EUt(600)
    .duration(200)
    .buildAndRegister();
    
    
//PCB

furnace.remove(<opencomputers:material:4>);
chemical_reactor.recipeBuilder()
    .inputs(<ore:foilAnnealedCopper> * 6)
    .inputs(plastic_circuit_board)
    .fluidInputs([<liquid:sodium_persulfate> * 500])
    .outputs(<opencomputers:material:4>)
    .EUt(30)
    .duration(800)
    .buildAndRegister();
chemical_reactor.recipeBuilder()
    .inputs(<ore:foilAnnealedCopper> * 6)
    .inputs(plastic_circuit_board)
    .fluidInputs([<liquid:iron_chloride> * 250])
    .outputs(<opencomputers:material:4>)
    .EUt(30)
    .duration(800)
    .buildAndRegister();
    
    

//RAW PCB remove it altogether because its only useful for smelting into a PCB, nor used in any addon.

    
//tabled case Tier 1 (note: this one was downgraded from tier 3 to tier 2, giving this tier a niche)
assembler.recipeBuilder()
	.inputs(display)
    .inputs(hv_machine_hull)
	.inputs(<ore:circuitAdvanced>)
    .inputs(<opencomputers:component:3>)
    .inputs(<ore:plateElectrum> * 4)
    .fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<opencomputers:material:17>)
	.EUt(300)
	.duration(400)
	.buildAndRegister();
    
    
//tablet case Tier 2 
assembler.recipeBuilder()
	.inputs(display)
    .inputs(ev_machine_hull)
	.inputs(<ore:circuitExtreme>)
    .inputs(<opencomputers:component:5>)
    .inputs(<ore:plateTitanium> * 4)
    .fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<opencomputers:material:18>)
	.EUt(900)
	.duration(400)
	.buildAndRegister();
    
    
//Transistor
assembler.recipeBuilder()
	.inputs(<ore:foilTin> * 6)
	.inputs(<ore:plateSilicon>)
    .inputs(<minecraft:gold_nugget> * 2)
    .inputs(<minecraft:paper>)
    .fluidInputs([<liquid:plastic> * 144])
	.outputs(<opencomputers:material:6> * 8)
	.EUt(24)
	.duration(80)
    .property("circuit", 17 )
	.buildAndRegister();


// Platter
forming_press.recipeBuilder()
    .inputs(<ore:ringIronMagnetic> * 2)
    .notConsumable(<metaitem:shape.mold.cylinder>)
    .outputs(oc_disk_platter)
    .EUt(18)
    .duration(56)
    .buildAndRegister();
    
    
// COMPONENTS/TOOLS/CARDS ----------------------------------------------------------------------------------------------

    
//accelerated processing unit (APU) Tier 2
circuit_assembler.recipeBuilder()
    .inputs(oc_graphic_card_1)
    .inputs(<ore:circuitGood> * 2)
    .inputs(oc_component_bus_1)
    .inputs(oc_cpu_2)
    .fluidInputs([<liquid:soldering_alloy> * 288])
    .outputs(<opencomputers:component:16>)
    .EUt(300)
    .duration(200)
    .buildAndRegister();
    
    
//accelerated processing unit (APU) Tier 3
circuit_assembler.recipeBuilder()
    .inputs(oc_graphic_card_2)
    .inputs(<ore:circuitAdvanced> * 2)
    .inputs(oc_component_bus_2)
    .inputs(oc_cpu_3)
    .fluidInputs([<liquid:soldering_alloy> * 288])
    .outputs(<opencomputers:component:17>)
    .EUt(900)
    .duration(200)
    .buildAndRegister();


//analyzer
assembler.recipeBuilder()
    .inputs(mv_sensor)
    .inputs(<ore:circuitGood> * 2)
    .inputs(<opencomputers:material:16>)
    .fluidInputs([<liquid:plastic> * 144])
    .outputs(<opencomputers:tool>)
    .EUt(60)
    .duration(200)
    .buildAndRegister();



//Central processing unit (CPU) Tier 1
circuit_assembler.recipeBuilder()
    .inputs(oc_control_unit)
    .inputs(oc_arithmetic_logic_unit * 2)
    .inputs(gt_cpu * 4)
    .inputs(<ore:circuitGood> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 288])
    .outputs(<opencomputers:component>)
    .EUt(60)
    .duration(240)
    .buildAndRegister();


//Central processing unit (CPU) Tier 2
circuit_assembler.recipeBuilder()
    .inputs(oc_control_unit)
    .inputs(oc_arithmetic_logic_unit * 4)
    .inputs(gt_cpu * 8)
    .inputs(<ore:circuitAdvanced> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 288])
    .outputs(<opencomputers:component:1>)
    .EUt(480)
    .duration(240)
    .buildAndRegister();
    
    
//Central processing unit (CPU) Tier 3
circuit_assembler.recipeBuilder()
    .inputs(oc_control_unit)
    .inputs(oc_arithmetic_logic_unit * 8)
    .inputs(gt_cpu * 16)
    .inputs(<ore:circuitAdvanced> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 288])
    .outputs(<opencomputers:component:2>)
    .EUt(1800)
    .duration(240)
    .buildAndRegister();


//Component Bus tier 1
circuit_assembler.recipeBuilder()
    .inputs(oc_control_unit)
    .inputs(<ore:circuitGood>)
    .inputs(oc_printed_circuit_board)
    .fluidInputs([<liquid:soldering_alloy> * 288])
    .outputs(<opencomputers:component:3>)
    .EUt(60)
    .duration(150)
    .buildAndRegister();


//Component Bus tier 2
circuit_assembler.recipeBuilder()
    .inputs(oc_control_unit)
    .inputs(<ore:circuitAdvanced>)
    .inputs(oc_printed_circuit_board)
    .fluidInputs([<liquid:soldering_alloy> * 288])
    .outputs(<opencomputers:component:4>)
    .EUt(300)
    .duration(150)
    .buildAndRegister();
    

//Component Bus tier 3
circuit_assembler.recipeBuilder()
    .inputs(oc_control_unit)
    .inputs(<ore:circuitExtreme>)
    .inputs(oc_printed_circuit_board)
    .fluidInputs([<liquid:soldering_alloy> * 288])
    .outputs(<opencomputers:component:5>)
    .EUt(900)
    .duration(150)
    .buildAndRegister();
    
    
//Data card Tier 1
assembler.recipeBuilder()
    .inputs(oc_card_base)
    .inputs(oc_arithmetic_logic_unit)
    .inputs(<ore:circuitAdvanced>)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<opencomputers:card:10>)
    .EUt(100)
    .duration(300)
    .buildAndRegister();  


//Data card Tier 2
assembler.recipeBuilder()
    .inputs(oc_card_base)
    .inputs(oc_arithmetic_logic_unit * 2)
    .inputs(<ore:circuitExtreme>)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<opencomputers:card:11>)
    .EUt(300)
    .duration(300)
    .buildAndRegister();  


//Data card Tier 3
assembler.recipeBuilder()
    .inputs(oc_card_base)
    .inputs(oc_arithmetic_logic_unit * 4)
    .inputs(<ore:circuitElite>)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<opencomputers:card:12>)
    .EUt(1200)
    .duration(300)
    .buildAndRegister(); 
    
//Disk Drive
assembler.recipeBuilder()
    .inputs(good_plastic_circuit_board)
    .inputs(<opencomputers:diskdrive>)
    .inputs(<ore:frameGtStainlessSteel>)
    .inputs(<ore:circuitAdvanced>)
    .inputs(display)
    .fluidInputs([<liquid:plastic> * 144])
    .outputs(<opencomputers:component:20>)
    .EUt(240)
    .duration(300)
    .buildAndRegister();
    


//Eeprom
assembler.recipeBuilder()
    .inputs(transistor * 3)
    .inputs(<ore:foilPlastic> * 2)
    .inputs(<ore:circuitGood>* 1)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<opencomputers:storage>)
    .EUt(90)
    .duration(100)
    .buildAndRegister();  
    

//Graphic card Tier 1
assembler.recipeBuilder()
    .inputs(oc_card_base)
    .inputs(oc_arithmetic_logic_unit)
    .inputs(<ore:circuitGood>)
    .inputs(oc_memory_1)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<opencomputers:card:1>)
    .EUt(90)
    .duration(300)
    .buildAndRegister();  
    

//Graphic card Tier 2
assembler.recipeBuilder()
    .inputs(oc_card_base)
    .inputs(oc_arithmetic_logic_unit * 2)
    .inputs(<ore:circuitAdvanced>)
    .inputs(oc_memory_2)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<opencomputers:card:2>)
    .EUt(360)
    .duration(300)
    .buildAndRegister();  
    

//Graphic card Tier 3
assembler.recipeBuilder()
    .inputs(oc_card_base)
    .inputs(oc_arithmetic_logic_unit * 4)
    .inputs(<ore:circuitExtreme>)
    .inputs(oc_memory_3)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<opencomputers:card:3>)
    .EUt(1320)
    .duration(300)
    .buildAndRegister();  
    

//Hard disk Drive tier 1
assembler.recipeBuilder()
    .inputs(oc_disk_platter * 4)
    .inputs(oc_printed_circuit_board)
    .inputs(mv_piston)
    .inputs(<ore:circuitGood>* 2)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<opencomputers:storage:2>)
    .EUt(90)
    .duration(300)
    .buildAndRegister();  
    
    
//Hard disk Drive tier 2
assembler.recipeBuilder()
    .inputs(oc_disk_platter * 8)
    .inputs(oc_printed_circuit_board)
    .inputs(hv_piston)
    .inputs(<ore:circuitAdvanced>* 2)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<opencomputers:storage:3>)
    .EUt(360)
    .duration(300)
    .buildAndRegister();  


    
//Hard disk Drive tier 3
assembler.recipeBuilder()
    .inputs(oc_disk_platter * 16)
    .inputs(oc_printed_circuit_board)
    .inputs(ev_piston)
    .inputs(<ore:circuitExtreme>* 2)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<opencomputers:storage:4>)
    .EUt(1440)
    .duration(300)
    .buildAndRegister();  

//Internet Card
assembler.recipeBuilder()
    .inputs(oc_card_base)
    .inputs(oc_interweb)
    .inputs(<ore:circuitAdvanced>)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<opencomputers:card:8>)
    .EUt(360)
    .duration(300)
    .buildAndRegister();  
    

//Linked Card
assembler.recipeBuilder()
    .inputs(oc_interweb)
    .inputs(<ore:circuitExtreme> * 2)
    .inputs(<opencomputers:card:6> * 2)
    .inputs(<ore:gemEnderEye>* 2)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<opencomputers:card:9> * 2)
    .EUt(1320)
    .duration(300)
    .buildAndRegister(); 
    

//memory tier 1
circuit_assembler.recipeBuilder()
    .inputs(gt_ram * 4)
    .inputs(<ore:circuitGood> * 2)
    .inputs(oc_printed_circuit_board)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<opencomputers:component:6>)
    .EUt(60)
    .duration(180)
    .buildAndRegister();
    
    
//memory tier 1.5
circuit_assembler.recipeBuilder()
    .inputs(gt_ram * 6)
    .inputs(<ore:circuitGood> * 2)
    .inputs(<ore:circuitAdvanced>)
    .inputs(oc_printed_circuit_board)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<opencomputers:component:7>)
    .EUt(60)
    .duration(180)
    .buildAndRegister();


//memory tier 2
circuit_assembler.recipeBuilder()
    .inputs(gt_ram * 8)
    .inputs(<ore:circuitAdvanced> * 2)
    .inputs(oc_printed_circuit_board)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<opencomputers:component:8>)
    .EUt(240)
    .duration(180)
    .buildAndRegister();
    
    
//memory tier 2.5
circuit_assembler.recipeBuilder()
    .inputs(gt_ram * 12)
    .inputs(<ore:circuitAdvanced> * 2)
    .inputs(<ore:circuitExtreme>)
    .inputs(oc_printed_circuit_board)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<opencomputers:component:9>)
    .EUt(240)
    .duration(180)
    .buildAndRegister();



//memory tier 3
circuit_assembler.recipeBuilder()
    .inputs(gt_ram * 16)
    .inputs(<ore:circuitExtreme> * 2)
    .inputs(oc_printed_circuit_board)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<opencomputers:component:10>)
    .EUt(960)
    .duration(180)
    .buildAndRegister();
    
    
//memory tier 3.5
circuit_assembler.recipeBuilder()
    .inputs(gt_ram * 24)
    .inputs(<ore:circuitExtreme> * 2)
    .inputs(<ore:circuitElite>)
    .inputs(oc_printed_circuit_board)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<opencomputers:component:11>)
    .EUt(960)
    .duration(180)
    .buildAndRegister();
    
    
//Network Card
assembler.recipeBuilder()
    .inputs(oc_card_base)
    .inputs(oc_cable)
    .inputs(<ore:circuitGood>)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<opencomputers:card:6>)
    .EUt(45)
    .duration(300)
    .buildAndRegister();  


//Redstone Card tier 1
assembler.recipeBuilder()
    .inputs(oc_card_base)
    .inputs(<ore:wireFineRedAlloy> * 8)
    .inputs(<ore:circuitGood>)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<opencomputers:card:4>)
    .EUt(45)
    .duration(300)
    .buildAndRegister();  
    
    
//Redstone Card Tier 2
assembler.recipeBuilder()
    .inputs(oc_card_base)
    .inputs(<ore:wireFineRedAlloy> * 16)
    .inputs(<ore:circuitAdvanced>)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<opencomputers:card:5>)
    .EUt(180)
    .duration(300)
    .buildAndRegister();  


//Remote Terminal
assembler.recipeBuilder()
    .inputs(<opencomputers:upgrade:22>)
    .inputs(<opencomputers:card:7>)
    .inputs(<ore:circuitExtreme>)
    .inputs(<opencomputers:keyboard>)
    .inputs(display)
    .fluidInputs([<liquid:plastic> * 144])
    .outputs(<opencomputers:tool:2>)
    .EUt(900)
    .duration(200)
    .buildAndRegister();
    
    
//scrench
recipes.addShaped("ct_oc_scrench", <opencomputers:wrench>, 
    [[<ore:ingotIron>, null, <ore:ingotIron>],
    [null, oc_control_unit , null],
    [null, <ore:ingotIron>, null]]);

    
       
//Server tier 1
assembler.recipeBuilder()
    .inputs(<ore:blockObsidian> * 2)
    .inputs(oc_printed_circuit_board)
    .inputs(oc_component_bus_1)
    .inputs(<ore:circuitGood> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<opencomputers:component:13>)
    .EUt(90)
    .duration(800)
    .buildAndRegister();
    
    
//Server tier 2
assembler.recipeBuilder()
    .inputs(<ore:blockObsidian> * 2)
    .inputs(oc_printed_circuit_board)
    .inputs(oc_component_bus_2)
    .inputs(<ore:circuitAdvanced> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<opencomputers:component:14>)
    .EUt(360)
    .duration(800)
    .buildAndRegister();
    
    
//Server tier 3
assembler.recipeBuilder()
    .inputs(<ore:blockObsidian> * 2)
    .inputs(oc_printed_circuit_board)
    .inputs(oc_component_bus_3)
    .inputs(<ore:circuitExtreme> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<opencomputers:component:15>)
    .EUt(1440)
    .duration(800)
    .buildAndRegister();
    
    
    
//Terminal Server 
assembler.recipeBuilder()
    .inputs(<opencomputers:card:7> * 3)
    .inputs(<ore:blockObsidian> * 4)
    .inputs(oc_printed_circuit_board)
    .inputs(<ore:circuitAdvanced> * 1)
    .fluidInputs([<liquid:soldering_alloy> * 288])
    .outputs(<opencomputers:component:19>)
    .EUt(600)
    .duration(400)
    .buildAndRegister();
    

//Wireless Network card tier 1
assembler.recipeBuilder()
    .inputs(oc_card_base)
    .inputs(mv_sensor)
    .inputs(mv_emitter)
    .inputs(<ore:circuitGood>)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<opencomputers:upgrade:31>)
    .EUt(90)
    .duration(200)
    .buildAndRegister();  
    
    
//Wireless Network card tier 2
assembler.recipeBuilder()
    .inputs(oc_card_base)
    .inputs(hv_sensor)
    .inputs(hv_emitter)
    .inputs(<ore:circuitAdvanced>)
    .fluidInputs([<liquid:soldering_alloy> * 144])
    .outputs(<opencomputers:card:7>)
    .EUt(360)
    .duration(300)
    .buildAndRegister();  
