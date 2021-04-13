import crafttweaker.oredict.IOreDictEntry;


function generatePlateRecipe (oreIngot as IOreDictEntry, orePlate as IOreDictEntry, dur as int) {

    metal_bender.recipeBuilder().EUt(24).duration(dur)
        .inputs(oreIngot)
        .property("circuit", 0)
        .outputs(orePlate.firstItem)
        .buildAndRegister();
}








// Plates
generatePlateRecipe(<ore:ingotExtreme>, <ore:plateExtreme>, 252);
generatePlateRecipe(<ore:ingotTough>, <ore:plateTough>, 126);
generatePlateRecipe(<ore:ingotHSLASteel>, <ore:plateHslasteel>, 98);