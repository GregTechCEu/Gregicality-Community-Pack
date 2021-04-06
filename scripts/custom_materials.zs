#loader gregtech
import mods.gtadditions.recipe.Utils;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;

//Registering directly

Utils.registerItem("skystone", 1000, 0x414647, "GEM_HORIZONTAL", "lens");
Utils.registerItem("fluix", 1001, 0x6a4887, "SHINY", "plate");
Utils.registerItem("resonating_crystal", 1002, 0x6146c2, "GEM_VERTICAL", "dust");
Utils.registerItem("resonating_crystal", 1003, 0x885eeb, "GEM_VERTICAL", "plate");
Utils.registerItem("fluix_steel", 1004, 0x6146c2, "SHINY", "plate");
Utils.registerItem("end_steel", 1005, 0xece7b6, "METALLIC", "stick");
Utils.registerItem("end_steel", 1006, 0xece7b6, "METALLIC", "plate");
Utils.registerItem("end_steel", 1007, 0xece7b6, "METALLIC", "screw");
Utils.registerItem("dark_steel", 1008, 0x2c2c2c, "DULL", "stick");
Utils.registerItem("dark_steel", 1009, 0x2c2c2c, "DULL", "plate");
Utils.registerItem("dark_steel", 1010, 0x2c2c2c, "DULL", "screw");
Utils.registerItem("dark_steel", 1011, 0x2c2c2c, "DULL", "dust");
Utils.registerItem("dark_steel", 1012, 0x2c2c2c, "DULL", "bolt");
Utils.registerItem("stellar_alloy", 1013, 0xc4ccbf, "SHINY", "plate");
Utils.registerItem("stellar_alloy", 1014, 0xc4ccbf, "SHINY", "screw");
Utils.registerItem("coffee_grounds", 1015, 0x1a1612, "DULL", "dust");
Utils.registerItem("roasted_coffee_small", 1016, 0x1a1612, "GEM_VERTICAL", "gemChipped");
Utils.registerItem("roasted_coffee_large", 1017, 0x1a1612, "GEM_VERTICAL", "gemChipped");
Utils.registerItem("graded_coffee_small", 1018, 0x635c55, "GEM_VERTICAL", "gemChipped");
Utils.registerItem("graded_coffee_large", 1019, 0x635c55, "GEM_VERTICAL", "gemChipped");
Utils.registerItem("hulled_coffee_small", 1020, 0x7d4b16, "GEM_VERTICAL", "gemChipped");
Utils.registerItem("hulled_coffee_large", 1021, 0x7d4b16, "GEM_VERTICAL", "gemChipped");
Utils.registerItem("dried_coffee_small", 1022, 0x8c6842, "GEM_VERTICAL", "gemChipped");
Utils.registerItem("dried_coffee_large", 1023, 0x8c6842, "GEM_VERTICAL", "gemChipped");
Utils.registerItem("wet_coffee_small", 1024, 0x756452, "GEM_VERTICAL", "gemChipped");
Utils.registerItem("wet_coffee_large", 1025, 0x756452, "GEM_VERTICAL", "gemChipped");
Utils.registerItem("basic_coffee_small", 1026, 0x3b220d, "GEM_VERTICAL", "gemChipped");
Utils.registerItem("basic_coffee_large", 1027, 0x3b220d, "GEM_VERTICAL", "gemChipped");
Utils.registerItem("basic_coffee_unsorted", 1028, 0x422003, "GEM_VERTICAL", "gemChipped");
Utils.registerItem("charged_certus", 1029, 0xD2D2E6, "QUARTZ", "dust");


//Adding flags

<material:copper>.addFlags(["GENERATE_SPRING_SMALL"]);
<material:vanadium>.addFlags(["GENERATE_LONG_ROD","GENERATE_SPRING", "GENERATE_DENSE"]);
<material:maraging_steel_a>.addFlags(["GENERATE_LONG_ROD","GENERATE_SPRING"]);
<material:annealed_copper>.addFlags(["GENERATE_SPRING_SMALL"]);
<material:aluminium>.addFlags(["GENERATE_SPRING_SMALL"]);
<material:zirconium_carbide>.addFlags(["GENERATE_SPRING_SMALL"]);
<material:electrum>.addFlags(["GENERATE_DENSE"]);


//ContentTweaking

var coffee = VanillaFactory.createFluid("coffee", 0x36312e);
var energized_coffee = VanillaFactory.createFluid("energized_coffee", 0x695934);
coffee.register();
energized_coffee.register();