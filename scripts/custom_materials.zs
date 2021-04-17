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
Utils.registerItem("coffee_grounds", 1017, 0x1a1612, "DULL", "dust");
Utils.registerItem("roasted_coffee_small", 1018, 0x1a1612, "GEM_VERTICAL", "gemChipped");
Utils.registerItem("roasted_coffee_large", 1019, 0x1a1612, "GEM_VERTICAL", "gemChipped");
Utils.registerItem("graded_coffee_small", 1020, 0x635c55, "GEM_VERTICAL", "gemChipped");
Utils.registerItem("graded_coffee_large", 1021, 0x635c55, "GEM_VERTICAL", "gemChipped");
Utils.registerItem("hulled_coffee_small", 1022, 0x7d4b16, "GEM_VERTICAL", "gemChipped");
Utils.registerItem("hulled_coffee_large", 1023, 0x7d4b16, "GEM_VERTICAL", "gemChipped");
Utils.registerItem("dried_coffee_small", 1024, 0x8c6842, "GEM_VERTICAL", "gemChipped");
Utils.registerItem("dried_coffee_large", 1025, 0x8c6842, "GEM_VERTICAL", "gemChipped");
Utils.registerItem("wet_coffee_small", 1026, 0x756452, "GEM_VERTICAL", "gemChipped");
Utils.registerItem("wet_coffee_large", 1027, 0x756452, "GEM_VERTICAL", "gemChipped");
Utils.registerItem("basic_coffee_small", 1028, 0x3b220d, "GEM_VERTICAL", "gemChipped");
Utils.registerItem("basic_coffee_large", 1029, 0x3b220d, "GEM_VERTICAL", "gemChipped");
Utils.registerItem("basic_coffee_unsorted", 1030, 0x422003, "GEM_VERTICAL", "gemChipped");
Utils.registerItem("charged_certus", 1031, 0xD2D2E6, "QUARTZ", "dust");
Utils.registerItem("HSLASteel", 1032, 0x687bbe, "METALLIC", "plate");
Utils.registerItem("Tough", 1033, 0x0c090a, "METALLIC", "plate");
Utils.registerItem("Extreme", 1034, 0x0c090a, "METALLIC", "plate");
Utils.registerItem("cocoa_hull", 1035, 0x362c25, "GEM_VERTICAL", "gemChipped");
Utils.registerItem("cocoa_nib", 1036, 0x635943, "GEM_VERTICAL", "gemChipped");
Utils.registerItem("chocolate_liquor", 1037, 0x635943, "DULL", "crushedCentrifuged");
Utils.registerItem("chocolate_liquor_refined", 1038, 0x605528, "DULL", "crushedCentrifuged");
Utils.registerItem("chocolate_liquor_dutched", 1039, 0x695143, "DULL", "crushedCentrifuged");
Utils.registerItem("press_cake_dutched", 1040, 0x997e6e, "DULL", "plateDense");
Utils.registerItem("press_cake", 1041, 0x948881, "DULL", "plateDense");
Utils.registerItem("press_cake_graded", 1042, 0xa67f68, "DULL", "plateDense");
Utils.registerItem("milk_chocolate", 1043, 0x636c61, "DULL", "ingotHot");
Utils.registerItem("matter_marshmallow", 1044, 0xe6e0dc, "DULL", "crushedCentrifuged");
Utils.registerItem("matter_graham", 1045, 0xf0c25d, "DULL", "crushedCentrifuged");
Utils.registerItem("matter_graham_hot", 1046, 0xffe1a1, "DULL", "crushedCentrifuged");
Utils.registerItem("matter_graham_hot", 1047, 0xffe1a1, "DULL", "plateDense");
Utils.registerItem("matter_graham_hot", 1048, 0xffe1a1, "DULL", "plate");
Utils.registerItem("cracker_graham_ungraded", 1049, 0xf0c25d, "DULL", "plate");
Utils.registerItem("chocolate_liquor_pressed", 1050, 0xa6795a, "DULL", "crushedCentrifuged");
Utils.registerItem("chocolate_liquor_dutched_pressed", 1051, 0xab7550, "DULL", "crushedCentrifuged");



//Adding flags

<material:copper>.addFlags(["GENERATE_SPRING_SMALL"]);
<material:vanadium>.addFlags(["GENERATE_LONG_ROD","GENERATE_SPRING", "GENERATE_DENSE"]);
<material:maraging_steel_a>.addFlags(["GENERATE_LONG_ROD","GENERATE_SPRING"]);
<material:annealed_copper>.addFlags(["GENERATE_SPRING_SMALL"]);
<material:aluminium>.addFlags(["GENERATE_SPRING_SMALL"]);
<material:zirconium_carbide>.addFlags(["GENERATE_SPRING_SMALL"]);
<material:electrum>.addFlags(["GENERATE_DENSE"]);
<material:iron>.addFlags(["GENERATE_SMALL_GEAR"]);
<material:magnesium>.addFlags(["GENERATE_FINE_WIRE"]);
<material:beryllium>.addFlags(["GENERATE_FINE_WIRE"]);


//ContentTweaking

var coffee = VanillaFactory.createFluid("coffee", 0x36312e);
var energized_coffee = VanillaFactory.createFluid("energized_coffee", 0x695934);
var unheated_cane_syrup = VanillaFactory.createFluid("unheated_cane_syrup", 0xf0efe4);
var cane_syrup = VanillaFactory.createFluid("cane_syrup", 0xf2f1dc);
var sweetened_diluted_cane_syrup_mixture = VanillaFactory.createFluid("sweetened_diluted_cane_syrup_mixture", 0xdedcc8);
var albumen = VanillaFactory.createFluid("albumen", 0xfffef7);
var yolk = VanillaFactory.createFluid("yolk", 0xffdf00);
var marshmallow_syrup_mixture = VanillaFactory.createFluid("marshmallow_syrup_mixture", 0xe6e0dc);
var marshmallow_foam = VanillaFactory.createFluid("marshmallow_foam", 0xe6e0dc);
var butter = VanillaFactory.createFluid("butter", 0xffef82);
coffee.register();
energized_coffee.register();
unheated_cane_syrup.register();
cane_syrup.register();
sweetened_diluted_cane_syrup_mixture.register();
albumen.register();
yolk.register();
marshmallow_syrup_mixture.register();
marshmallow_foam.register();
butter.register();