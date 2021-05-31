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