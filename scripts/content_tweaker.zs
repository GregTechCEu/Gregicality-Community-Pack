#loader contenttweaker
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemFoodEaten;
import crafttweaker.potions.IPotion;

var builder = MaterialSystem.getMaterialBuilder();
builder.setName("Resonating Crystal");
builder.setColor(0x885eeb);
builder.setHasEffect(false);
val resonating_crystal = builder.build();
resonating_crystal.registerPart("block");

var printed_parallel = VanillaFactory.createItem("printed_parallel");
printed_parallel.maxStackSize = 64;
printed_parallel.register();


//Thanks to Omnifactory for the following script! ;)
var smingots as string[] = [
    "eightsmore",
    "sixteensmore",
    "thirtytwosmore",
    "sixtyfoursmore",
	"smogus",
	"doublesmogus",
	"quadsmogus",
	"heartofasmogus"
] as string[];

function getItemFoodEaten(duration as int) as IItemFoodEaten {
    return function(stack, world, player) {
        val potions = [ // These can't resolve when the script is run, so resolve them within the function.
            <potion:minecraft:absorption>,
            <potion:minecraft:speed>,
            <potion:minecraft:haste>,
            <potion:minecraft:saturation>,
            <potion:minecraft:health_boost>
        ] as IPotion[];
        for potion in potions {
            player.addPotionEffect(potion.makePotionEffect(duration, duration));
        }
    } as IItemFoodEaten;
}

var heal = 44;
var saturation = 8.6 as float;
var potionDuration = 1200;

for smingot in smingots {
    heal = (heal * 2) + 4;
    saturation = (saturation * 2) + 1;
    potionDuration = potionDuration * 2;

    val foodRep = VanillaFactory.createItemFood(smingot, heal);
    foodRep.saturation = saturation;
    foodRep.alwaysEdible = true;
    foodRep.onItemFoodEaten = getItemFoodEaten(potionDuration);

    foodRep.register();
}