import mods.devtech.machines.RegisterMachine;
import mods.devtech.machines.Overlays;
import mods.devtech.IRecipeMap;
import mods.devtech.GUITextures;
import mods.devtech.OverlaySlot;
import mods.devtech.MoveType;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.material.MaterialCasting;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;

val tiers as string[] = ["ulv", "lv", "mv", "hv", "ev", "iv", "luv", "zpm", "uv"];

RegisterMachine.CreateQuantumChest(5000, "super.chest." + tiers[0], 0, 2048);
RegisterMachine.CreateQuantumTank(5009, "super.tank." + tiers[0], 0, 1000000);  

for i in 1 to 9 {
    RegisterMachine.CreateQuantumChest((5000 + i), "super.chest." + tiers[i], i, (2048 * pow(2, i)));
    RegisterMachine.CreateQuantumTank((5009 + i), "super.tank." + tiers[i], i, (2000000 * pow(2, i)));  
}