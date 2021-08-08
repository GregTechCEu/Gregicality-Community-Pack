

// Decomp
centrifuge.recipeBuilder().EUt(30).duration(400)
    .inputs(<metaitem:moon_stone_dust>)
    .chancedOutput(<metaitem:dustSmallSiliconDioxide>, 5000, 250)
    .chancedOutput(<metaitem:dustSmallManganese>, 2000, 250)
    .chancedOutput(<metaitem:dustSmallOlivine>, 1000, 250)
    .chancedOutput(<metaitem:dustTinyRareEarth>, 750, 100)
    .chancedOutput(<metaitem:dustTinyPlatinumMetallicPowder> * 2, 500, 100)
    .chancedOutput(<metaitem:dustTinyTungstate>, 250, 100)
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(60).duration(600)
    .inputs(<metaitem:mars_stone_dust>)
    .chancedOutput(<metaitem:dustSmallBandedIron>, 5000, 250)
    .chancedOutput(<metaitem:dustSmallManganese>, 3000, 250)
    .chancedOutput(<metaitem:dustSmallAluminium>, 1000, 250)
    .chancedOutput(<metaitem:dustTinyRuby>, 750, 100)
    .chancedOutput(<metaitem:dustTinyDiamond>, 500, 100)
    .chancedOutput(<metaitem:dustTinyIridiumMetalResidue>, 250, 100)
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(120).duration(800)
    .inputs(<metaitem:ceres_stone_dust>)
    .chancedOutput(<metaitem:dustSmallMeteoricIron>, 5000, 250)
    .chancedOutput(<metaitem:dustSmallBeryllium>, 2500, 250)
    .chancedOutput(<metaitem:dustSmallPlatinumMetallicPowder> * 2, 1000, 250)
    .chancedOutput(<metaitem:dustTinyTitanium>, 750, 100)
    .chancedOutput(<metaitem:dustTinyTungsten>, 500, 100)
    .chancedOutput(<metaitem:dustTinyNaquadah>, 250, 100)
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(120).duration(800)
    .inputs(<metaitem:asteroid_stone_dust>)
    .chancedOutput(<metaitem:dustSmallGold>, 5000, 250)
    .chancedOutput(<metaitem:dustSmallLead>, 3000, 250)
    .chancedOutput(<metaitem:dustSmallTitanium>, 1000, 250)
    .chancedOutput(<metaitem:dustTinyRuby>, 750, 100)
    .chancedOutput(<metaitem:dustTinyChrome>, 500, 100)
    .chancedOutput(<metaitem:dustTinyRarestMetalResidue>, 250, 100)
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(256).duration(1000)
    .inputs(<metaitem:mercury_stone_dust>)
    .chancedOutput(<metaitem:dustSmallVanadium>, 5000, 250)
    .chancedOutput(<metaitem:dustSmallTungstate>, 3000, 250)
    //.chancedOutput(<metaitem:dustSmallDraconium>, 1000, 250)
    .chancedOutput(<metaitem:dustTinyTitanium>, 750, 100)
    .chancedOutput(<metaitem:dustTinyOlivine>, 500, 100)
    .chancedOutput(<metaitem:dustTinyDiamond>, 250, 100)
    .fluidOutputs(<fluid:helium3> * 50)
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(256).duration(1000)
    .inputs(<metaitem:mercury_core_dust>)
    .chancedOutput(<metaitem:dustSmallIlmenite>, 5000, 250)
    .chancedOutput(<metaitem:dustSmallTungstate>, 3000, 250)
    //.chancedOutput(<metaitem:dustSmallDraconium>, 1000, 250)
    .chancedOutput(<metaitem:dustTinyTitanium>, 750, 100)
    .chancedOutput(<metaitem:dustTinyOlivine>, 500, 100)
    .chancedOutput(<metaitem:dustTinyDiamond>, 250, 100)
    .fluidOutputs(<fluid:helium> * 250)
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(256).duration(1000)
    .inputs(<metaitem:venus_stone_dust>)
    .outputs(<metaitem:dustSmallCarbon>)
    .chancedOutput(<metaitem:dustSmallQuantium>, 3000, 250)
    //.chancedOutput(<metaitem:dustSmallMytryl>, 1000, 250)
    .chancedOutput(<metaitem:dustTinyAmethyst>, 750, 100)
    .chancedOutput(<metaitem:dustTinyPlatinumMetallicPowder> * 2, 500, 100)
    //.chancedOutput(<metaitem:dustTinyDraconium>, 250, 100)
    .fluidOutputs(<fluid:carbon_dioxide> * 500)
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(256).duration(1000)
    .inputs(<metaitem:io_stone_dust>)
    .chancedOutput(<metaitem:dustSmallSulfur>, 5000, 250)
    .chancedOutput(<metaitem:dustSmallTantalite>, 3000, 250)
    .chancedOutput(<metaitem:dustSmallTungsten>, 1000, 250)
    .chancedOutput(<metaitem:dustTinyJasper>, 750, 100)
    .chancedOutput(<metaitem:dustTinyGold>, 500, 100)
    .chancedOutput(<metaitem:dustTinyDraconium>, 250, 100)
    .fluidOutputs(<fluid:sulfuric_gas> * 100)
    .buildAndRegister();

