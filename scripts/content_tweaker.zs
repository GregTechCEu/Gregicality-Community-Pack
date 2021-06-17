#loader contenttweaker
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;


var builder = MaterialSystem.getMaterialBuilder();
builder.setName("Resonating Crystal");
builder.setColor(0x885eeb);
builder.setHasEffect(false);
val resonating_crystal = builder.build();
resonating_crystal.registerPart("block");

var printed_parallel = VanillaFactory.createItem("printed_parallel");
printed_parallel.maxStackSize = 64;
printed_parallel.register();

var coin_bronze = VanillaFactory.createItem("coin_bronze");
coin_bronze.maxStackSize = 64;
coin_bronze.register();

var coin_steel = VanillaFactory.createItem("coin_steel");
coin_steel.maxStackSize = 64;
coin_steel.register();

var coin_aluminium = VanillaFactory.createItem("coin_aluminium");
coin_aluminium.maxStackSize = 64;
coin_aluminium.register();

var coin_stainless_steel = VanillaFactory.createItem("coin_stainless_steel");
coin_stainless_steel.maxStackSize = 64;
coin_stainless_steel.register();

var heavy_duty_ingot_1 = VanillaFactory.createItem("heavy_duty_ingot_1");
heavy_duty_ingot_1.maxStackSize = 64;
heavy_duty_ingot_1.register();

var heavy_duty_ingot_2 = VanillaFactory.createItem("heavy_duty_ingot_2");
heavy_duty_ingot_2.maxStackSize = 64;
heavy_duty_ingot_2.register();

var heavy_duty_ingot_3 = VanillaFactory.createItem("heavy_duty_ingot_3");
heavy_duty_ingot_3.maxStackSize = 64;
heavy_duty_ingot_3.register();

var heavy_duty_ingot_4 = VanillaFactory.createItem("heavy_duty_ingot_4");
heavy_duty_ingot_4.maxStackSize = 64;
heavy_duty_ingot_4.register();

var heavy_duty_ingot_5 = VanillaFactory.createItem("heavy_duty_ingot_5");
heavy_duty_ingot_5.maxStackSize = 64;
heavy_duty_ingot_5.register();

var heavy_duty_ingot_6 = VanillaFactory.createItem("heavy_duty_ingot_6");
heavy_duty_ingot_6.maxStackSize = 64;
heavy_duty_ingot_6.register();

var raw_sdhc_alloy = VanillaFactory.createItem("raw_sdhc_alloy");
raw_sdhc_alloy.maxStackSize = 64;
raw_sdhc_alloy.register();