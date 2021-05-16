import mods.devtech.machines.RegisterMachine;
import mods.devtech.machines.Overlays;
import mods.devtech.IRecipeMap;
import mods.devtech.GUITextures;
import mods.devtech.TextureArea;
import mods.devtech.OverlaySlot;
import mods.devtech.MoveType;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.material.MaterialCasting;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;

var stock_manipulator = IRecipeMap.recipeMapBuilder("stock_manipulator")
    .minInputs(2)
    .maxInputs(2)
    .minOutputs(1)
    .maxOutputs(4)
    .minFluidInputs(0)
    .maxFluidInputs(0)
    .minFluidOutputs(0)
    .maxFluidOutputs(0)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false, false, GUITextures.get("bender_overlay")), OverlaySlot.newOverlaySlot(false, false, true, GUITextures.get("bender_overlay")),
    OverlaySlot.newOverlaySlot(true, false, false, GUITextures.get("bender_overlay")),  OverlaySlot.newOverlaySlot(true, false, false, GUITextures.get("bender_overlay")),  OverlaySlot.newOverlaySlot(true, false, false, GUITextures.get("bender_overlay")),  OverlaySlot.newOverlaySlot(true, false, true, GUITextures.get("bender_overlay")))
    .setProgressBar(TextureArea.fullImage("gregtech:textures/gui/progress_bar/progress_bar_stock_manipulator.png"), MoveType.HORIZONTAL)
    .buildCircuit();


val tiers as string[] = ["ulv", "lv", "mv", "hv", "ev", "iv", "luv", "zpm", "uv"];

RegisterMachine.CreateQuantumChest(5000, "super.chest." + tiers[0], 0, 2048);
RegisterMachine.CreateQuantumTank(5009, "super.tank." + tiers[0], 0, 1000000);  

for i in 1 to 9 {
    RegisterMachine.CreateQuantumChest((5000 + i), "super.chest." + tiers[i], i, (2048 * pow(2, i)));
    RegisterMachine.CreateQuantumTank((5009 + i), "super.tank." + tiers[i], i, (2000000 * pow(2, i)));  
    RegisterMachine.CreateSimpleMachine((5018 + i), "stock_manipulator." + tiers[i], stock_manipulator, Overlays.get("electromagnetic_separator"), i);
}
