import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMap;

val heavy_duty_ingots = [
    <contenttweaker:heavy_duty_ingot_0>, 
    <contenttweaker:heavy_duty_ingot_1>, 
    <contenttweaker:heavy_duty_ingot_2>, 
    <contenttweaker:heavy_duty_ingot_3>, 
    <contenttweaker:heavy_duty_ingot_4>, 
    <contenttweaker:heavy_duty_ingot_5>
] as IItemStack[];

val heavy_duty_plates = [
    <galacticraftcore:heavy_plating>,
    <galacticraftplanets:item_basic_mars:3>,
    <galacticraftplanets:item_basic_asteroids:5>,
    <galaxyspace:hdp>,
    <galaxyspace:hdp:1>,
    <galaxyspace:hdp:2>
] as IItemStack[];

val fluids = [
    <liquid:stainless_steel>, 
    <liquid:tungsten_steel>, 
    <liquid:platinum>, 
    <liquid:osmiridium>, 
    <liquid:rutherfordium>, 
    <liquid:tritanium>
] as ILiquidStack[];

val recoverMaterials = [
    <ore:dustTinyStainlessSteel>, 
    <ore:dustTinyTungstenSteel>, 
    <ore:dustTinyPlatinum>,
    <ore:dustTinyOsmiridium>, 
    <ore:dustTinyRutherfordium>, 
    <ore:dustTinyTritanium>
] as IOreDictEntry[];

val singlePlates = [
    <ore:compressedAluminium>, 
    <ore:plateMeteoricIron>
] as IIngredient[];

function generate_heavy_duty_recipe (inputItems as IIngredient[], ingot as IItemStack, plate as IItemStack, fluid as ILiquidStack, recover as IOreDictEntry, tier as int) {

    assembler.recipeBuilder().duration(300).EUt(480 * pow(4, tier))
        .fluidInputs([fluid * (72 * pow(2, tier))])
        .inputs(inputItems)
        .circuit(1)
        .outputs(ingot)
        .buildAndRegister();

    implosion_compressor.recipeBuilder().duration(20).EUt(30)
        .property("explosives", <gtadditions:ga_explosive:5> * 16)
        .inputs(ingot)
        .outputs(recover.firstItem * pow(2, tier))
        .outputs(plate)
        .buildAndRegister();

    implosion_compressor.recipeBuilder().duration(20).EUt(30)
        .property("explosives", 8)
        .inputs(ingot)
        .outputs(recover.firstItem * pow(2, tier))
        .outputs(plate)
        .buildAndRegister();

    implosion_compressor.recipeBuilder().duration(20).EUt(30)
        .property("explosives", <metaitem:dynamite> * 4)
        .inputs(ingot)
        .outputs(recover.firstItem * pow(2, tier))
        .outputs(plate)
        .buildAndRegister();

    implosion_compressor.recipeBuilder().duration(20).EUt(30)
        .property("explosives", <gtadditions:ga_explosive:4> * 2)
        .inputs(ingot)
        .outputs(recover.firstItem * pow(2, tier))
        .outputs(plate)
        .buildAndRegister();

}

generate_heavy_duty_recipe([singlePlates[0], <ore:compressedBronze>, <ore:compressedSteel>], heavy_duty_ingots[0], heavy_duty_plates[0], fluids[0], recoverMaterials[0], 0);

for i in 1 to singlePlates.length {
    generate_heavy_duty_recipe([singlePlates[i], heavy_duty_plates[i - 1]], heavy_duty_ingots[i], heavy_duty_plates[i], fluids[i], recoverMaterials[i], i);
}



function generate_compressed_recipe (input as IIngredient, output as IOreDictEntry) {
    implosion_compressor.recipeBuilder().duration(20).EUt(30)
        .property("explosives", <gtadditions:ga_explosive:5> * 4)
        .inputs(input * 2)
        .outputs(output.firstItem)
        .buildAndRegister();

    implosion_compressor.recipeBuilder().duration(20).EUt(30)
        .property("explosives", 2)
        .inputs(input * 2)
        .outputs(output.firstItem)
        .buildAndRegister();

    implosion_compressor.recipeBuilder().duration(20).EUt(30)
        .property("explosives", <metaitem:dynamite> * 2)
        .inputs(input * 2)
        .outputs(output.firstItem)
        .buildAndRegister();

    implosion_compressor.recipeBuilder().duration(20).EUt(30)
        .property("explosives", <gtadditions:ga_explosive:4> * 2)
        .inputs(input * 2)
        .outputs(output.firstItem)
        .buildAndRegister();
}

val double_plates = [
    <ore:plateDoubleMeteoricIron>, 
    <ore:plateDoubleDesh>, 
    <ore:plateDoubleCopper>, 
    <ore:plateDoubleTin>, 
    <ore:plateDoubleAluminium>, 
    <ore:plateDoubleSteel>, 
    <ore:plateDoubleBronze>, 
    <ore:plateDoubleIron>, 
    <ore:plateDoubleTitanium>
] as IIngredient[];

val compressed_plates = [
    <ore:compressedMeteoricIron>, 
    <ore:compressedDesh>, 
    <ore:compressedCopper>, 
    <ore:compressedTin>, 
    <ore:compressedAluminium>, 
    <ore:compressedSteel>, 
    <ore:compressedBronze>, 
    <ore:compressedIron>, 
    <ore:compressedTitanium>
] as IOreDictEntry[];

for i in 0 to double_plates.length{
    generate_compressed_recipe(double_plates[i], compressed_plates[i]);
}