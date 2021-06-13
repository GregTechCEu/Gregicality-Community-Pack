#loader gregtech
#priority 1000

import mods.gtadditions.recipe.Utils;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;
import mods.gregtech.material.Material;
import mods.gregtech.material.MaterialRegistry;

//Registering directly

Utils.registerItem("skystone", 1000, 0x414647, "GEM_HORIZONTAL", "lens");
Utils.registerItem("fluix", 1001, 0x6a4887, "SHINY", "plate");
Utils.registerItem("resonating_crystal", 1002, 0x6146c2, "GEM_VERTICAL", "dust");
Utils.registerItem("resonating_crystal", 1003, 0x885eeb, "GEM_VERTICAL", "plate");
Utils.registerItem("fluix_steel", 1004, 0x6146c2, "SHINY", "plate");
Utils.registerItem("end_steel", 1005, 0xece7b6, "METALLIC", "stick");
Utils.registerItem("end_steel", 1006, 0xece7b6, "METALLIC", "plate");
Utils.registerItem("end_steel", 1007, 0xece7b6, "METALLIC", "bolt");
Utils.registerItem("end_steel", 1008, 0xece7b6, "METALLIC", "screw");
Utils.registerItem("dark_steel", 1009, 0x2c2c2c, "DULL", "stick");
Utils.registerItem("dark_steel", 1010, 0x2c2c2c, "DULL", "plate");
Utils.registerItem("dark_steel", 1011, 0x2c2c2c, "DULL", "screw");
Utils.registerItem("dark_steel", 1012, 0x2c2c2c, "DULL", "dust");
Utils.registerItem("dark_steel", 1013, 0x2c2c2c, "DULL", "bolt");
Utils.registerItem("stellar_alloy", 1014, 0xc4ccbf, "SHINY", "plate");
Utils.registerItem("stellar_alloy", 1015, 0xc4ccbf, "SHINY", "bolt");
Utils.registerItem("stellar_alloy", 1016, 0xc4ccbf, "SHINY", "screw");
Utils.registerItem("charged_certus", 1017, 0xD2D2E6, "QUARTZ", "dust");
Utils.registerItem("ferroboron", 1018, 0x646464, "DULL", "dust");
Utils.registerItem("ferroboron", 1019, 0x646464, "DULL", "ingotHot");
Utils.registerItem("hsla_steel", 1020, 0x687bbe, "METALLIC", "plate");
Utils.registerItem("hsla_steel", 1021, 0x687bbe, "METALLIC", "dust");
Utils.registerItem("hsla_steel", 1022, 0x687bbe, "METALLIC", "ingotHot");
Utils.registerItem("tough", 1023, 0x0c090a, "METALLIC", "plate");
Utils.registerItem("tough", 1024, 0x0c090a, "METALLIC", "dust");
Utils.registerItem("tough", 1025, 0x0c090a, "METALLIC", "ingotHot");
Utils.registerItem("extreme", 1026, 0x742a3c, "METALLIC", "plate");
Utils.registerItem("extreme", 1027, 0x742a3c, "METALLIC", "dust");
Utils.registerItem("extreme", 1028, 0x742a3c, "METALLIC", "ingotHot");
Utils.registerItem("zircaloy", 1029, 0xa3a490, "METALLIC", "plate");


// Full GT Materials
var meteoricIron = MaterialRegistry.createIngotMaterial(650, "meteoric_iron", 0x685e4c, "metallic", 2, [<material:iron> * 1, <material:rare_earth> * 1], 3.0, 400, 1700);
var desh = MaterialRegistry.createIngotMaterial(651, "desh", 0x242424, "dull", 2, [<material:rare_earth> * 1], 3.0, 400, 1700); //todo custom Desh element symbol


//Adding flags

<material:copper>.addFlags(["GENERATE_SPRING_SMALL", "GENERATE_DOUBLE_PLATE"]);
<material:tin>.addFlags(["GENERATE_DOUBLE_PLATE"]);
<material:vanadium>.addFlags(["GENERATE_LONG_ROD", "GENERATE_SPRING", "GENERATE_DENSE"]);
<material:maraging_steel_a>.addFlags(["GENERATE_LONG_ROD","GENERATE_SPRING"]);
<material:annealed_copper>.addFlags(["GENERATE_SPRING_SMALL", "GENERATE_SPRING"]);
<material:aluminium>.addFlags(["GENERATE_SPRING_SMALL"]);
<material:zirconium_carbide>.addFlags(["GENERATE_SPRING_SMALL"]);
<material:electrum>.addFlags(["GENERATE_DENSE"]);
<material:iron>.addFlags(["GENERATE_SMALL_GEAR"]);
<material:magnesium>.addFlags(["GENERATE_FINE_WIRE"]);
<material:beryllium>.addFlags(["GENERATE_FINE_WIRE"]);
<material:gold>.addFlags(["GENERATE_RING"]);

meteoricIron.addFlags(["GENERATE_ORE", "GENERATE_PLATE", "GENERATE_DOUBLE_PLATE", "DISABLE_DECOMPOSITION"]);
desh.addFlags(["GENERATE_ORE", "GENERATE_PLATE", "GENERATE_DOUBLE_PLATE", "DISABLE_DECOMPOSITION"]);