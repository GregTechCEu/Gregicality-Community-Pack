#loader contenttweaker
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.VanillaFactory;

var builder = MaterialSystem.getMaterialBuilder();
builder.setName("Resonating Crystal");
builder.setColor(0x885eeb);
builder.setHasEffect(false);
val resonating_crystal = builder.build();
resonating_crystal.registerPart("block");

var printed_parallel = VanillaFactory.createItem("printed_parallel");
printed_parallel.maxStackSize = 64;
printed_parallel.register();
