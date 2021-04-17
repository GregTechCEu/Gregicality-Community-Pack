import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;


// NaK
val nak = <liquid:sodium_potassium_alloy>.withAmount(144) as ILiquidStack;

val components = [
    <ore:dustIron>,
    <ore:dustRedstone>,
    <ore:dustRegularNetherQuartz>,
    <ore:dustRegularObsidian>,
    <ore:ingotBrickNether>,
    <ore:dustGlowstone>,
    <ore:dustRegularLapis>,
    <ore:dustRegularGold>,
    <ore:gemPrismarine>,
    <ore:slimeball>,
    <ore:dustEndstone>,
    <minecraft:purpur_block>,
    <ore:dustDiamond>,
    <ore:dustRegularEmerald>,
    <ore:dustRegularCopper>,
    <ore:dustRegularTin>,
    <ore:dustRegularLead>,
    <ore:dustRegularBoron>,
    <ore:dustRegularLithium>,
    <ore:dustRegularMagnesium>,
    <ore:dustRegularManganese>,
    <ore:dustRegularAluminium>,
    <ore:dustRegularSilver>,
    <ore:dustRegularFluorite>,
    <ore:dustSodiumFluoride>,
    <ore:dustPotassiumFluoride>,
    <ore:dustRegularArsenic>,
    <ore:dustRegularEnderium>
] as IIngredient[];

val component_liquids = [
    <liquid:liquid_nitrogen>,
    <liquid:liquid_helium>,
    <liquid:cryotheum>
] as ILiquidStack[];


val nak_coolants = [
    <liquid:iron_nak>,
    <liquid:redstone_nak>,
    <liquid:quartz_nak>,
    <liquid:obsidian_nak>,
    <liquid:nether_brick_nak>,
    <liquid:glowstone_nak>,
    <liquid:lapis_nak>,
    <liquid:gold_nak>,
    <liquid:prismarine_nak>,
    <liquid:slime_nak>,
    <liquid:end_stone_nak>,
    <liquid:purpur_nak>,
    <liquid:diamond_nak>,
    <liquid:emerald_nak>,
    <liquid:copper_nak>,
    <liquid:tin_nak>,
    <liquid:lead_nak>,
    <liquid:boron_nak>,
    <liquid:lithium_nak>,
    <liquid:magnesium_nak>,
    <liquid:manganese_nak>,
    <liquid:aluminum_nak>,
    <liquid:silver_nak>,
    <liquid:fluorite_nak>,
    <liquid:villiaumite_nak>,
    <liquid:carobbiite_nak>,
    <liquid:arsenic_nak>,
    <liquid:enderium_nak>,
] as ILiquidStack[];

val nak_liquid_coolants = [
    <liquid:liquid_nitrogen_nak>,
    <liquid:liquid_helium_nak>,
    <liquid:cryotheum_nak>
] as ILiquidStack[];

for i, item in components {
    mixer.recipeBuilder().EUt(8).duration(100)
        .inputs(item)
        .fluidInputs(nak)
        .fluidOutputs([nak_coolants[i] * 1000])
        .buildAndRegister();

    centrifuge.recipeBuilder().EUt(8).duration(100)
        .fluidInputs([nak_coolants[i] * 1000])
        .outputs(item.itemArray[0])
        .fluidOutputs(nak)
        .buildAndRegister();
}

for i, item in component_liquids {
    mixer.recipeBuilder().EUt(8).duration(100)
        .fluidInputs(item * 1000)
        .fluidInputs(nak)
        .fluidOutputs([nak_liquid_coolants[i] * 1000])
        .buildAndRegister();

    centrifuge.recipeBuilder().EUt(8).duration(100)
        .fluidInputs([nak_liquid_coolants[i] * 1000])
        .fluidOutputs(item * 1000)
        .fluidOutputs(nak)
        .buildAndRegister();
}

// Solid Fuels

val nc_solid_fuels = [
    <ore:ingotLEU233>,
    <ore:ingotHEU233>,
    <ore:ingotLEU235>,
    <ore:ingotHEU235>,
    <ore:ingotLEN236>,
    <ore:ingotHEN236>,
    <ore:ingotLEP239>,
    <ore:ingotHEP239>,
    <ore:ingotLEP241>,
    <ore:ingotHEP241>,
    <ore:ingotLEA242>,
    <ore:ingotHEA242>,
    <ore:ingotLECm243>,
    <ore:ingotHECm243>,
    <ore:ingotLECm245>,
    <ore:ingotHECm245>,
    <ore:ingotLECm247>,
    <ore:ingotHECm247>,
    <ore:ingotLEB248>,
    <ore:ingotHEB248>,
    <ore:ingotLECf249>,
    <ore:ingotHECf249>,
    <ore:ingotLECf251>,
    <ore:ingotHECf251>,
    <ore:ingotTBU>,
    <ore:ingotMIX239>,
    <ore:ingotMIX241>,
    <ore:ingotMIX291>
] as IIngredient[];

val nc_solid_fuels_zirconium = [
    <ore:ingotLEU233ZA>,
    <ore:ingotHEU233ZA>,
    <ore:ingotLEU235ZA>,
    <ore:ingotHEU235ZA>,
    <ore:ingotLEN236ZA>,
    <ore:ingotHEN236ZA>,
    <ore:ingotLEP239ZA>,
    <ore:ingotHEP239ZA>,
    <ore:ingotLEP241ZA>,
    <ore:ingotHEP241ZA>,
    <ore:ingotLEA242ZA>,
    <ore:ingotHEA242ZA>,
    <ore:ingotLECm243ZA>,
    <ore:ingotHECm243ZA>,
    <ore:ingotLECm245ZA>,
    <ore:ingotHECm245ZA>,
    <ore:ingotLECm247ZA>,
    <ore:ingotHECm247ZA>,
    <ore:ingotLEB248ZA>,
    <ore:ingotHEB248ZA>,
    <ore:ingotLECf249ZA>,
    <ore:ingotHECf249ZA>,
    <ore:ingotLECf251ZA>,
    <ore:ingotHECf251ZA>,
    <ore:ingotTBUZA>,
    <ore:ingotMIX239ZA>,
    <ore:ingotMIX241ZA>,
    <ore:ingotMIX291ZA>
] as IIngredient[];

val nc_solid_fuels_nitride = [
    <ore:ingotLEU233Nitride>,
    <ore:ingotHEU233Nitride>,
    <ore:ingotLEU235Nitride>,
    <ore:ingotHEU235Nitride>,
    <ore:ingotLEN236Nitride>,
    <ore:ingotHEN236Nitride>,
    <ore:ingotLEP239Nitride>,
    <ore:ingotHEP239Nitride>,
    <ore:ingotLEP241Nitride>,
    <ore:ingotHEP241Nitride>,
    <ore:ingotLEA242Nitride>,
    <ore:ingotHEA242Nitride>,
    <ore:ingotLECm243Nitride>,
    <ore:ingotHECm243Nitride>,
    <ore:ingotLECm245Nitride>,
    <ore:ingotHECm245Nitride>,
    <ore:ingotLECm247Nitride>,
    <ore:ingotHECm247Nitride>,
    <ore:ingotLEB248Nitride>,
    <ore:ingotHEB248Nitride>,
    <ore:ingotLECf249Nitride>,
    <ore:ingotHECf249Nitride>,
    <ore:ingotLECf251Nitride>,
    <ore:ingotHECf251Nitride>,
    <ore:ingotTBUNitride>,
    <ore:ingotMIX239Nitride>,
    <ore:ingotMIX241Nitride>,
    <ore:ingotMIX291Nitride>
] as IIngredient[];

val nc_solid_fuels_oxide = [
    <ore:ingotLEU233Oxide>,
    <ore:ingotHEU233Oxide>,
    <ore:ingotLEU235Oxide>,
    <ore:ingotHEU235Oxide>,
    <ore:ingotLEN236Oxide>,
    <ore:ingotHEN236Oxide>,
    <ore:ingotLEP239Oxide>,
    <ore:ingotHEP239Oxide>,
    <ore:ingotLEP241Oxide>,
    <ore:ingotHEP241Oxide>,
    <ore:ingotLEA242Oxide>,
    <ore:ingotHEA242Oxide>,
    <ore:ingotLECm243Oxide>,
    <ore:ingotHECm243Oxide>,
    <ore:ingotLECm245Oxide>,
    <ore:ingotHECm245Oxide>,
    <ore:ingotLECm247Oxide>,
    <ore:ingotHECm247Oxide>,
    <ore:ingotLEB248Oxide>,
    <ore:ingotHEB248Oxide>,
    <ore:ingotLECf249Oxide>,
    <ore:ingotHECf249Oxide>,
    <ore:ingotLECf251Oxide>,
    <ore:ingotHECf251Oxide>,
    <ore:ingotTBUOxide>,
    <ore:ingotMIX239Oxide>,
    <ore:ingotMIX241Oxide>,
    <ore:ingotMIX291Oxide>
] as IIngredient[];

val nc_solid_fuels_components = [
    [<ore:ingotUranium233>, <ore:dustUranium>],
    [<ore:dustUranium235>, <ore:dustUranium>],
    [<ore:ingotNeptunium236>, <ore:dustNeptunium237>],
    [<ore:dustPlutoniumRadioactive239>, <ore:ingotPlutonium242>],
    [<ore:dustPlutonium241>, <ore:ingotPlutonium242>],
    [<ore:ingotAmericium242>, <ore:dustAmericium243>],
    [<ore:ingotCurium243>, <ore:dustCurium246>],
    [<ore:dustCurium245>, <ore:dustCurium246>],
    [<ore:dustCurium247>, <ore:dustCurium246>],
    [<ore:ingotBerkelium248>, <ore:dustBerkelium247>],
    [<ore:ingotCalifornium249>, <ore:dustCalifornium252>],
    [<ore:dustCalifornium251>, <ore:dustCalifornium252>]
] as IIngredient[][];

// Regular Fuels
for i in 0 to nc_solid_fuels_components.length {

    if (nc_solid_fuels[i] has <ore:ingotTBU>) {
        continue;
    }

    forming_press.recipeBuilder().duration(100).EUt(24)
        .inputs(nc_solid_fuels_components[i][0])
        .inputs(nc_solid_fuels_components[i][1] * 8)
        .notConsumable(<metaitem:shape.mold.cylinder>)
        .circuit(0)
        .outputs(nc_solid_fuels[i * 2].itemArray[0] * 9)
        .buildAndRegister();

    thermal_centrifuge.recipeBuilder().duration(100).EUt(120)
        .inputs(nc_solid_fuels[i * 2] * 9)
        .outputs(nc_solid_fuels_components[i][0].itemArray[0])
        .outputs(nc_solid_fuels_components[i][1].itemArray[0] * 8)
        .buildAndRegister();
    
    recipes.remove(nc_solid_fuels[i * 2].itemArray[0]);
    furnace.remove(nc_solid_fuels[i * 2].itemArray[0]);

    forming_press.recipeBuilder().duration(100).EUt(24)
        .inputs(nc_solid_fuels_components[i][0] * 3)
        .inputs(nc_solid_fuels_components[i][1] * 5)
        .notConsumable(<metaitem:shape.mold.cylinder>)
        .circuit(1)
        .outputs(nc_solid_fuels[(i * 2) + 1].itemArray[0] * 9)
        .buildAndRegister();

    thermal_centrifuge.recipeBuilder().duration(100).EUt(120)
        .inputs(nc_solid_fuels[(i * 2) + 1] * 9)
        .outputs(nc_solid_fuels_components[i][0].itemArray[0] * 3)
        .outputs(nc_solid_fuels_components[i][1].itemArray[0] * 5)
        .buildAndRegister();

    recipes.remove(nc_solid_fuels[(i * 2) + 1].itemArray[0]);
    furnace.remove(nc_solid_fuels[(i * 2) + 1].itemArray[0]);
}

// TBU
forming_press.recipeBuilder().duration(100).EUt(24)
    .inputs(<ore:dustTBP>)
    .notConsumable(<metaitem:shape.mold.cylinder>)
    .circuit(0)
    .outputs(<ore:ingotTBU>.firstItem)
    .buildAndRegister();

furnace.remove(<ore:ingotTBU>.firstItem);

// Mixed Fuel
forming_press.recipeBuilder().duration(100).EUt(24)
    .inputs(<ore:ingotCopernicium291>)
    .inputs(<ore:dustUranium> * 8)
    .notConsumable(<metaitem:shape.mold.cylinder>)
    .circuit(0)
    .outputs(<ore:ingotMIX291>.firstItem * 9)
    .buildAndRegister();

forming_press.recipeBuilder().duration(100).EUt(24)
    .inputs(<ore:dustPlutoniumRadioactive239>)
    .inputs(<ore:dustUranium> * 8)
    .notConsumable(<metaitem:shape.mold.cylinder>)
    .circuit(0)
    .outputs(<ore:ingotMIX239>.firstItem * 9)
    .buildAndRegister();

forming_press.recipeBuilder().duration(100).EUt(24)
    .inputs(<ore:dustPlutonium241>)
    .inputs(<ore:dustUranium> * 8)
    .notConsumable(<metaitem:shape.mold.cylinder>)
    .circuit(0)
    .outputs(<ore:ingotMIX241>.firstItem * 9)
    .buildAndRegister();

thermal_centrifuge.recipeBuilder().duration(100).EUt(120)
    .inputs(<ore:ingotMIX291> * 9)
    .outputs(<ore:ingotCopernicium291>.firstItem)
    .outputs(<ore:dustUranium>.firstItem * 8)
    .buildAndRegister();

thermal_centrifuge.recipeBuilder().duration(100).EUt(120)
    .inputs(<ore:ingotMIX239> * 9)
    .outputs(<ore:dustPlutoniumRadioactive239>.firstItem)
    .outputs(<ore:dustUranium>.firstItem * 8)
    .buildAndRegister();

thermal_centrifuge.recipeBuilder().duration(100).EUt(120)
    .inputs(<ore:ingotMIX241> * 9)
    .outputs(<ore:dustPlutonium241>.firstItem)
    .outputs(<ore:dustUranium>.firstItem * 8)
    .buildAndRegister();

recipes.remove(<ore:ingotMIX291>.firstItem);
furnace.remove(<ore:ingotMIX291>.firstItem);
recipes.remove(<ore:ingotMIX239>.firstItem);
furnace.remove(<ore:ingotMIX239>.firstItem);
recipes.remove(<ore:ingotMIX241>.firstItem);
furnace.remove(<ore:ingotMIX241>.firstItem);

// Fuel Types
for i in 0 to nc_solid_fuels.length {

    // Zirconium
    alloy_smelter.recipeBuilder().duration(100).EUt(24)
        .inputs(nc_solid_fuels[i])
        .inputs(<ore:dustZirconium>)
        .outputs(nc_solid_fuels_zirconium[i].itemArray[0])
        .buildAndRegister();

    centrifuge.recipeBuilder().duration(100).EUt(120)
        .inputs(nc_solid_fuels_zirconium[i])
        .outputs(nc_solid_fuels[i].itemArray[0])
        .outputs(<ore:dustZirconium>.firstItem)
        .buildAndRegister();

    recipes.remove(nc_solid_fuels_zirconium[i].itemArray[0]);

    // Nitride
    chemical_bath.recipeBuilder().duration(100).EUt(24)
        .inputs(nc_solid_fuels[i])
        .fluidInputs([<fluid:nitrogen> * 1000])
        .outputs(nc_solid_fuels_nitride[i].itemArray[0])
        .buildAndRegister();

    electrolyzer.recipeBuilder().duration(100).EUt(120)
        .inputs(nc_solid_fuels_nitride[i])
        .fluidOutputs([<fluid:nitrogen> * 1000])
        .outputs(nc_solid_fuels[i].itemArray[0])
        .buildAndRegister();

    recipes.remove(nc_solid_fuels_nitride[i].itemArray[0]);

    // Oxide
    chemical_bath.recipeBuilder().duration(100).EUt(24)
        .inputs(nc_solid_fuels[i])
        .fluidInputs([<fluid:oxygen> * 1000])
        .outputs(nc_solid_fuels_oxide[i].itemArray[0])
        .buildAndRegister();

    electrolyzer.recipeBuilder().duration(100).EUt(120)
        .inputs(nc_solid_fuels_oxide[i])
        .fluidOutputs([<fluid:oxygen> * 1000])
        .outputs(nc_solid_fuels[i].itemArray[0])
        .buildAndRegister();

    recipes.remove(nc_solid_fuels_oxide[i].itemArray[0]);
}

// Fluid Fuels 
val nc_liquid_fuels = [
    <liquid:leu_233>,
    <liquid:heu_233>,
    <liquid:leu_235>,
    <liquid:heu_235>,
    <liquid:len_236>,
    <liquid:hen_236>,
    <liquid:lep_239>,
    <liquid:hep_239>,
    <liquid:lep_241>,
    <liquid:hep_241>,
    <liquid:lea_242>,
    <liquid:hea_242>,
    <liquid:lecm_243>,
    <liquid:hecm_243>,
    <liquid:lecm_245>,
    <liquid:hecm_245>,
    <liquid:lecm_247>,
    <liquid:hecm_247>,
    <liquid:leb_248>,
    <liquid:heb_248>,
    <liquid:lecf_249>,
    <liquid:hecf_249>,
    <liquid:lecf_251>,
    <liquid:hecf_251>,
    <liquid:tbu>,
    <liquid:mix_239>,
    <liquid:mix_241>
] as ILiquidStack[];

val nc_liquid_fuels_fluoride = [
    <liquid:leu_233_fluoride>,
    <liquid:heu_233_fluoride>,
    <liquid:leu_235_fluoride>,
    <liquid:heu_235_fluoride>,
    <liquid:len_236_fluoride>,
    <liquid:hen_236_fluoride>,
    <liquid:lep_239_fluoride>,
    <liquid:hep_239_fluoride>,
    <liquid:lep_241_fluoride>,
    <liquid:hep_241_fluoride>,
    <liquid:lea_242_fluoride>,
    <liquid:hea_242_fluoride>,
    <liquid:lecm_243_fluoride>,
    <liquid:hecm_243_fluoride>,
    <liquid:lecm_245_fluoride>,
    <liquid:hecm_245_fluoride>,
    <liquid:lecm_247_fluoride>,
    <liquid:hecm_247_fluoride>,
    <liquid:leb_248_fluoride>,
    <liquid:heb_248_fluoride>,
    <liquid:lecf_249_fluoride>,
    <liquid:hecf_249_fluoride>,
    <liquid:lecf_251_fluoride>,
    <liquid:hecf_251_fluoride>,
    <liquid:tbu_fluoride>,
    <liquid:mix_239_fluoride>,
    <liquid:mix_241_fluoride>
] as ILiquidStack[];

val nc_liquid_fuels_flibe = [
    <liquid:leu_233_fluoride_flibe>,
    <liquid:heu_233_fluoride_flibe>,
    <liquid:leu_235_fluoride_flibe>,
    <liquid:heu_235_fluoride_flibe>,
    <liquid:len_236_fluoride_flibe>,
    <liquid:hen_236_fluoride_flibe>,
    <liquid:lep_239_fluoride_flibe>,
    <liquid:hep_239_fluoride_flibe>,
    <liquid:lep_241_fluoride_flibe>,
    <liquid:hep_241_fluoride_flibe>,
    <liquid:lea_242_fluoride_flibe>,
    <liquid:hea_242_fluoride_flibe>,
    <liquid:lecm_243_fluoride_flibe>,
    <liquid:hecm_243_fluoride_flibe>,
    <liquid:lecm_245_fluoride_flibe>,
    <liquid:hecm_245_fluoride_flibe>,
    <liquid:lecm_247_fluoride_flibe>,
    <liquid:hecm_247_fluoride_flibe>,
    <liquid:leb_248_fluoride_flibe>,
    <liquid:heb_248_fluoride_flibe>,
    <liquid:lecf_249_fluoride_flibe>,
    <liquid:hecf_249_fluoride_flibe>,
    <liquid:lecf_251_fluoride_flibe>,
    <liquid:hecf_251_fluoride_flibe>,
    <liquid:tbu_fluoride_flibe>,
    <liquid:mix_239_fluoride_flibe>,
    <liquid:mix_241_fluoride_flibe>
] as ILiquidStack[];


for i in 0 to nc_solid_fuels.length - 1 {
        fluid_extractor.recipeBuilder().duration(100).EUt(24)
            .inputs(nc_solid_fuels[i])
            .fluidOutputs([nc_liquid_fuels[i] * 144])
            .buildAndRegister();

        fluid_solidifier.recipeBuilder().duration(100).EUt(120)
            .fluidInputs([nc_liquid_fuels[i] * 144])
            .notConsumable(<metaitem:shape.mold.cylinder>)
            .outputs(nc_solid_fuels[i].itemArray[0])
            .buildAndRegister();

        mixer.recipeBuilder().duration(100).EUt(24)
            .fluidInputs([nc_liquid_fuels[i] * 144])
            .fluidInputs([<fluid:fluorine> * 1000])
            .fluidOutputs([nc_liquid_fuels_fluoride[i] * 144])
            .buildAndRegister();

        centrifuge.recipeBuilder().duration(100).EUt(120)
            .fluidInputs([nc_liquid_fuels_fluoride[i] * 144])
            .fluidOutputs([nc_liquid_fuels[i] * 144])
            .fluidOutputs([<fluid:fluorine> * 1000])
            .buildAndRegister();
        
        mixer.recipeBuilder().duration(100).EUt(24)
            .fluidInputs([nc_liquid_fuels_fluoride[i] * 144])
            .fluidInputs([<liquid:flibe> * 144])
            .fluidOutputs([nc_liquid_fuels_flibe[i] * 144])
            .buildAndRegister();

        centrifuge.recipeBuilder().duration(100).EUt(120)
            .fluidInputs([nc_liquid_fuels_flibe[i] * 144])
            .fluidOutputs([nc_liquid_fuels_fluoride[i] * 144])
            .fluidOutputs([<liquid:flibe> * 144])
            .buildAndRegister();
}

// LEU 233
centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedLEU233ZA> * 9)
    .outputs(<ore:dustUranium>.firstItem * 5)
    .outputs(<ore:dustPlutonium241>.firstItem)
    .outputs(<ore:ingotPlutonium242>.firstItem)
    .outputs(<ore:dustAmericium243>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustCaesium137>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:zirconium> * 1296])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedLEU233Nitride> * 9)
    .outputs(<ore:dustUranium>.firstItem * 5)
    .outputs(<ore:dustPlutonium241>.firstItem)
    .outputs(<ore:ingotPlutonium242>.firstItem)
    .outputs(<ore:dustAmericium243>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustCaesium137>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:nitrogen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedLEU233Oxide> * 9)
    .outputs(<ore:dustUranium>.firstItem * 5)
    .outputs(<ore:dustPlutonium241>.firstItem)
    .outputs(<ore:ingotPlutonium242>.firstItem)
    .outputs(<ore:dustAmericium243>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustCaesium137>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:oxygen> * 9000])
    .buildAndRegister();
    
centrifuge.recipeBuilder().EUt(24).duration(500)
    .fluidInputs([<liquid:depleted_leu_233_fluoride_flibe> * 1296])
    .outputs(<ore:dustUranium>.firstItem * 5)
    .outputs(<ore:dustPlutonium241>.firstItem)
    .outputs(<ore:ingotPlutonium242>.firstItem)
    .outputs(<ore:dustAmericium243>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustCaesium137>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:fluorine> * 9000])
    .fluidOutputs([<liquid:flibe> * 1296])
    .buildAndRegister();

// HEU 233
centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedHEU233ZA> * 9)
    .outputs(<ore:dustUranium235>.firstItem)
    .outputs(<ore:dustUranium>.firstItem * 2)
    .outputs(<ore:ingotPlutonium242>.firstItem * 3)
    .outputs(<ore:dustAmericium243>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 7500, 1250)
    .chancedOutput(<ore:dustCaesium137>.firstItem, 7500, 1250)
    .fluidOutputs([<liquid:zirconium> * 1296])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedHEU233Nitride> * 9)
    .outputs(<ore:dustUranium235>.firstItem)
    .outputs(<ore:dustUranium>.firstItem * 2)
    .outputs(<ore:ingotPlutonium242>.firstItem * 3)
    .outputs(<ore:dustAmericium243>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 7500, 1250)
    .chancedOutput(<ore:dustCaesium137>.firstItem, 7500, 1250)
    .fluidOutputs([<liquid:nitrogen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedHEU233Oxide> * 9)
    .outputs(<ore:dustUranium235>.firstItem)
    .outputs(<ore:dustUranium>.firstItem * 2)
    .outputs(<ore:ingotPlutonium242>.firstItem * 3)
    .outputs(<ore:dustAmericium243>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 7500, 1250)
    .chancedOutput(<ore:dustCaesium137>.firstItem, 7500, 1250)
    .fluidOutputs([<liquid:oxygen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .fluidInputs([<liquid:depleted_heu_233_fluoride_flibe> * 1296])
    .outputs(<ore:dustUranium235>.firstItem)
    .outputs(<ore:dustUranium>.firstItem * 2)
    .outputs(<ore:ingotPlutonium242>.firstItem * 3)
    .outputs(<ore:dustAmericium243>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 7500, 1250)
    .chancedOutput(<ore:dustCaesium137>.firstItem, 7500, 1250)
    .fluidOutputs([<liquid:fluorine> * 9000])
    .fluidOutputs([<liquid:flibe> * 1296])
    .buildAndRegister();

// LEU 235
centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedLEU235ZA> * 9)
    .outputs(<ore:dustUranium>.firstItem * 4)
    .outputs(<ore:dustPlutoniumRadioactive239>.firstItem)
    .outputs(<ore:ingotPlutonium242>.firstItem * 2)
    .outputs(<ore:dustAmericium243>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustCaesium137>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:zirconium> * 1296])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedLEU235Nitride> * 9)
    .outputs(<ore:dustUranium>.firstItem * 4)
    .outputs(<ore:dustPlutoniumRadioactive239>.firstItem)
    .outputs(<ore:ingotPlutonium242>.firstItem * 2)
    .outputs(<ore:dustAmericium243>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustCaesium137>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:nitrogen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedLEU235Oxide> * 9)
    .outputs(<ore:dustUranium>.firstItem * 4)
    .outputs(<ore:dustPlutoniumRadioactive239>.firstItem)
    .outputs(<ore:ingotPlutonium242>.firstItem * 2)
    .outputs(<ore:dustAmericium243>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustCaesium137>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:oxygen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .fluidInputs([<liquid:depleted_leu_235_fluoride_flibe> * 1296])
    .outputs(<ore:dustUranium>.firstItem * 4)
    .outputs(<ore:dustPlutoniumRadioactive239>.firstItem)
    .outputs(<ore:ingotPlutonium242>.firstItem * 2)
    .outputs(<ore:dustAmericium243>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustCaesium137>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:fluorine> * 9000])
    .fluidOutputs([<liquid:flibe> * 1296])
    .buildAndRegister();
    
// HEU 235
centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedHEU235ZA> * 9)
    .outputs(<ore:dustUranium>.firstItem * 3)
    .outputs(<ore:ingotNeptunium236>.firstItem)
    .outputs(<ore:ingotPlutonium242>.firstItem * 2)
    .outputs(<ore:dustAmericium243>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 7500, 1250)
    .chancedOutput(<ore:dustCaesium137>.firstItem, 7500, 1250)
    .fluidOutputs([<liquid:zirconium> * 1296])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedHEU235Nitride> * 9)
    .outputs(<ore:dustUranium>.firstItem * 3)
    .outputs(<ore:ingotNeptunium236>.firstItem)
    .outputs(<ore:ingotPlutonium242>.firstItem * 2)
    .outputs(<ore:dustAmericium243>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 7500, 1250)
    .chancedOutput(<ore:dustCaesium137>.firstItem, 7500, 1250)
    .fluidOutputs([<liquid:nitrogen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedHEU235Oxide> * 9)
    .outputs(<ore:dustUranium>.firstItem * 3)
    .outputs(<ore:ingotNeptunium236>.firstItem)
    .outputs(<ore:ingotPlutonium242>.firstItem * 2)
    .outputs(<ore:dustAmericium243>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 7500, 1250)
    .chancedOutput(<ore:dustCaesium137>.firstItem, 7500, 1250)
    .fluidOutputs([<liquid:oxygen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .fluidInputs([<liquid:depleted_heu_235_fluoride_flibe> * 1296])
    .outputs(<ore:dustUranium>.firstItem * 3)
    .outputs(<ore:ingotNeptunium236>.firstItem)
    .outputs(<ore:ingotPlutonium242>.firstItem * 2)
    .outputs(<ore:dustAmericium243>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 7500, 1250)
    .chancedOutput(<ore:dustCaesium137>.firstItem, 7500, 1250)
    .fluidOutputs([<liquid:fluorine> * 9000])
    .fluidOutputs([<liquid:flibe> * 1296])
    .buildAndRegister();

// LEN 235
centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedLEN236ZA> * 9)
    .outputs(<ore:dustUranium>.firstItem * 4)
    .outputs(<ore:dustNeptunium237>.firstItem)
    .outputs(<ore:dustPlutonium241>.firstItem)
    .outputs(<ore:ingotPlutonium242>.firstItem * 2)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustCaesium137>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:zirconium> * 1296])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedLEN236Nitride> * 9)
    .outputs(<ore:dustUranium>.firstItem * 4)
    .outputs(<ore:dustNeptunium237>.firstItem)
    .outputs(<ore:dustPlutonium241>.firstItem)
    .outputs(<ore:ingotPlutonium242>.firstItem * 2)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustCaesium137>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:nitrogen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedLEN236Oxide> * 9)
    .outputs(<ore:dustUranium>.firstItem * 4)
    .outputs(<ore:dustNeptunium237>.firstItem)
    .outputs(<ore:dustPlutonium241>.firstItem)
    .outputs(<ore:ingotPlutonium242>.firstItem * 2)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustCaesium137>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:oxygen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .fluidInputs([<liquid:depleted_len_236_fluoride_flibe> * 1296])
    .outputs(<ore:dustUranium>.firstItem * 4)
    .outputs(<ore:dustNeptunium237>.firstItem)
    .outputs(<ore:dustPlutonium241>.firstItem)
    .outputs(<ore:ingotPlutonium242>.firstItem * 2)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustCaesium137>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:fluorine> * 9000])
    .fluidOutputs([<liquid:flibe> * 1296])
    .buildAndRegister();  
  
// HEN 235
centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedHEN236ZA> * 9)
    .outputs(<ore:dustUranium>.firstItem * 4)
    .outputs(<ore:ingotPlutonium238>.firstItem)
    .outputs(<ore:dustPlutonium241>.firstItem)
    .outputs(<ore:ingotPlutonium242>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 7500, 1250)
    .chancedOutput(<ore:dustCaesium137>.firstItem, 7500, 1250)
    .fluidOutputs([<liquid:zirconium> * 1296])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedHEN236Nitride> * 9)
    .outputs(<ore:dustUranium>.firstItem * 4)
    .outputs(<ore:ingotPlutonium238>.firstItem)
    .outputs(<ore:dustPlutonium241>.firstItem)
    .outputs(<ore:ingotPlutonium242>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 7500, 1250)
    .chancedOutput(<ore:dustCaesium137>.firstItem, 7500, 1250)
    .fluidOutputs([<liquid:nitrogen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedHEN236Oxide> * 9)
    .outputs(<ore:dustUranium>.firstItem * 4)
    .outputs(<ore:ingotPlutonium238>.firstItem)
    .outputs(<ore:dustPlutonium241>.firstItem)
    .outputs(<ore:ingotPlutonium242>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 7500, 1250)
    .chancedOutput(<ore:dustCaesium137>.firstItem, 7500, 1250)
    .fluidOutputs([<liquid:oxygen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .fluidInputs([<liquid:depleted_hen_236_fluoride_flibe> * 1296])
    .outputs(<ore:dustUranium>.firstItem * 4)
    .outputs(<ore:ingotPlutonium238>.firstItem)
    .outputs(<ore:dustPlutonium241>.firstItem)
    .outputs(<ore:ingotPlutonium242>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 7500, 1250)
    .chancedOutput(<ore:dustCaesium137>.firstItem, 7500, 1250)
    .fluidOutputs([<liquid:fluorine> * 9000])
    .fluidOutputs([<liquid:flibe> * 1296])
    .buildAndRegister();
    
// LEP 239
centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedLEP239ZA> * 9)
    .outputs(<ore:ingotPlutonium242>.firstItem * 5)
    .outputs(<ore:ingotAmericium242>.firstItem)
    .outputs(<ore:dustAmericium243>.firstItem)
    .outputs(<ore:dustCurium246>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:zirconium> * 1296])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedLEP239Nitride> * 9)
    .outputs(<ore:ingotPlutonium242>.firstItem * 5)
    .outputs(<ore:ingotAmericium242>.firstItem)
    .outputs(<ore:dustAmericium243>.firstItem)
    .outputs(<ore:dustCurium246>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:nitrogen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedLEP239Oxide> * 9)
    .outputs(<ore:ingotPlutonium242>.firstItem * 5)
    .outputs(<ore:ingotAmericium242>.firstItem)
    .outputs(<ore:dustAmericium243>.firstItem)
    .outputs(<ore:dustCurium246>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:oxygen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .fluidInputs([<liquid:depleted_lep_239_fluoride_flibe> * 1296])
    .outputs(<ore:ingotPlutonium242>.firstItem * 5)
    .outputs(<ore:ingotAmericium242>.firstItem)
    .outputs(<ore:dustAmericium243>.firstItem)
    .outputs(<ore:dustCurium246>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:fluorine> * 9000])
    .fluidOutputs([<liquid:flibe> * 1296])
    .buildAndRegister();  
  
// HEP 239
centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedHEP239ZA> * 9)
    .outputs(<ore:dustPlutonium241>.firstItem)
    .outputs(<ore:ingotAmericium242>.firstItem)
    .outputs(<ore:dustAmericium243>.firstItem * 4)
    .outputs(<ore:ingotCurium243>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 7500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 7500, 1250)
    .fluidOutputs([<liquid:zirconium> * 1296])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedHEP239Nitride> * 9)
    .outputs(<ore:dustPlutonium241>.firstItem)
    .outputs(<ore:ingotAmericium242>.firstItem)
    .outputs(<ore:dustAmericium243>.firstItem * 4)
    .outputs(<ore:ingotCurium243>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 7500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 7500, 1250)
    .fluidOutputs([<liquid:nitrogen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedHEN236Oxide> * 9)
    .outputs(<ore:dustPlutonium241>.firstItem)
    .outputs(<ore:ingotAmericium242>.firstItem)
    .outputs(<ore:dustAmericium243>.firstItem * 4)
    .outputs(<ore:ingotCurium243>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 7500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 7500, 1250)
    .fluidOutputs([<liquid:oxygen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .fluidInputs([<liquid:depleted_hep_239_fluoride_flibe> * 1296])
    .outputs(<ore:dustPlutonium241>.firstItem)
    .outputs(<ore:ingotAmericium242>.firstItem)
    .outputs(<ore:dustAmericium243>.firstItem * 4)
    .outputs(<ore:ingotCurium243>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 7500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 7500, 1250)
    .fluidOutputs([<liquid:fluorine> * 9000])
    .fluidOutputs([<liquid:flibe> * 1296])
    .buildAndRegister();

// LEP 241
centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedLEP241ZA> * 9)
    .outputs(<ore:ingotPlutonium242>.firstItem * 5)
    .outputs(<ore:dustAmericium243>.firstItem)
    .outputs(<ore:dustCurium246>.firstItem)
    .outputs(<ore:dustBerkelium247>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:zirconium> * 1296])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedLEP241Nitride> * 9)
    .outputs(<ore:ingotPlutonium242>.firstItem * 5)
    .outputs(<ore:dustAmericium243>.firstItem)
    .outputs(<ore:dustCurium246>.firstItem)
    .outputs(<ore:dustBerkelium247>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:nitrogen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedLEP241Oxide> * 9)
    .outputs(<ore:ingotPlutonium242>.firstItem * 5)
    .outputs(<ore:dustAmericium243>.firstItem)
    .outputs(<ore:dustCurium246>.firstItem)
    .outputs(<ore:dustBerkelium247>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:oxygen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .fluidInputs([<liquid:depleted_lep_241_fluoride_flibe> * 1296])
    .outputs(<ore:ingotPlutonium242>.firstItem * 5)
    .outputs(<ore:dustAmericium243>.firstItem)
    .outputs(<ore:dustCurium246>.firstItem)
    .outputs(<ore:dustBerkelium247>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:fluorine> * 9000])
    .fluidOutputs([<liquid:flibe> * 1296])
    .buildAndRegister();  
  
// HEP 241
centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedHEP241ZA> * 9)
    .outputs(<ore:dustAmericium241>.firstItem)
    .outputs(<ore:ingotAmericium242>.firstItem)
    .outputs(<ore:dustAmericium243>.firstItem * 3)
    .outputs(<ore:dustCurium246>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 7500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 7500, 1250)
    .fluidOutputs([<liquid:zirconium> * 1296])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedHEP241Nitride> * 9)
    .outputs(<ore:dustAmericium241>.firstItem)
    .outputs(<ore:ingotAmericium242>.firstItem)
    .outputs(<ore:dustAmericium243>.firstItem * 3)
    .outputs(<ore:dustCurium246>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 7500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 7500, 1250)
    .fluidOutputs([<liquid:nitrogen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedHEN241Oxide> * 9)
    .outputs(<ore:dustAmericium241>.firstItem)
    .outputs(<ore:ingotAmericium242>.firstItem)
    .outputs(<ore:dustAmericium243>.firstItem * 3)
    .outputs(<ore:dustCurium246>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 7500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 7500, 1250)
    .fluidOutputs([<liquid:oxygen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .fluidInputs([<liquid:depleted_hep_241_fluoride_flibe> * 1296])
    .outputs(<ore:dustAmericium241>.firstItem)
    .outputs(<ore:ingotAmericium242>.firstItem)
    .outputs(<ore:dustAmericium243>.firstItem * 3)
    .outputs(<ore:dustCurium246>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 7500, 1250)
    .fluidOutputs([<liquid:fluorine> * 9000])
    .fluidOutputs([<liquid:flibe> * 1296])
    .buildAndRegister();

// LEA 242
centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedLEA242ZA> * 9)
    .outputs(<ore:dustAmericium243>.firstItem * 3)
    .outputs(<ore:dustRegularCurium245>.firstItem)
    .outputs(<ore:dustCurium246>.firstItem * 3)
    .outputs(<ore:ingotBerkelium248>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:zirconium> * 1296])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedLEA242Nitride> * 9)
    .outputs(<ore:dustAmericium243>.firstItem * 3)
    .outputs(<ore:dustRegularCurium245>.firstItem)
    .outputs(<ore:dustCurium246>.firstItem * 3)
    .outputs(<ore:ingotBerkelium248>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:nitrogen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedLEA242Oxide> * 9)
    .outputs(<ore:dustAmericium243>.firstItem * 3)
    .outputs(<ore:dustRegularCurium245>.firstItem)
    .outputs(<ore:dustCurium246>.firstItem * 3)
    .outputs(<ore:ingotBerkelium248>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:oxygen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .fluidInputs([<liquid:depleted_lea_242_fluoride_flibe> * 1296])
    .outputs(<ore:dustAmericium243>.firstItem * 3)
    .outputs(<ore:dustRegularCurium245>.firstItem)
    .outputs(<ore:dustCurium246>.firstItem * 3)
    .outputs(<ore:ingotBerkelium248>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:fluorine> * 9000])
    .fluidOutputs([<liquid:flibe> * 1296])
    .buildAndRegister();    

// HEA 242
centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedHEA242ZA> * 9)
    .outputs(<ore:dustAmericium243>.firstItem * 3)
    .outputs(<ore:ingotCurium243>.firstItem)
    .outputs(<ore:dustCurium246>.firstItem * 2)
    .outputs(<ore:dustBerkelium247>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 7500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 7500, 1250)
    .fluidOutputs([<liquid:zirconium> * 1296])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedHEA242Nitride> * 9)
    .outputs(<ore:dustAmericium243>.firstItem * 3)
    .outputs(<ore:ingotCurium243>.firstItem)
    .outputs(<ore:dustCurium246>.firstItem * 2)
    .outputs(<ore:dustBerkelium247>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 7500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 7500, 1250)
    .fluidOutputs([<liquid:nitrogen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedHEA242Oxide> * 9)
    .outputs(<ore:dustAmericium243>.firstItem * 3)
    .outputs(<ore:ingotCurium243>.firstItem)
    .outputs(<ore:dustCurium246>.firstItem * 2)
    .outputs(<ore:dustBerkelium247>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 7500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 7500, 1250)
    .fluidOutputs([<liquid:oxygen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .fluidInputs([<liquid:depleted_hea_242_fluoride_flibe> * 1296])
    .outputs(<ore:dustAmericium243>.firstItem * 3)
    .outputs(<ore:ingotCurium243>.firstItem)
    .outputs(<ore:dustCurium246>.firstItem * 2)
    .outputs(<ore:dustBerkelium247>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 7500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 7500, 1250)
    .fluidOutputs([<liquid:fluorine> * 9000])
    .fluidOutputs([<liquid:flibe> * 1296])
    .buildAndRegister();

// LECm243
centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedLECm243ZA> * 9)
    .outputs(<ore:dustCurium246>.firstItem * 4)
    .outputs(<ore:dustCurium247>.firstItem)
    .outputs(<ore:dustBerkelium247>.firstItem * 2)
    .outputs(<ore:ingotBerkelium248>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:zirconium> * 1296])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedLECm243Nitride> * 9)
    .outputs(<ore:dustCurium246>.firstItem * 4)
    .outputs(<ore:dustCurium247>.firstItem)
    .outputs(<ore:dustBerkelium247>.firstItem * 2)
    .outputs(<ore:ingotBerkelium248>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:nitrogen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedLECm243Oxide> * 9)
    .outputs(<ore:dustCurium246>.firstItem * 4)
    .outputs(<ore:dustCurium247>.firstItem)
    .outputs(<ore:dustBerkelium247>.firstItem * 2)
    .outputs(<ore:ingotBerkelium248>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:oxygen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .fluidInputs([<liquid:depleted_lecm_243_fluoride_flibe> * 1296])
    .outputs(<ore:dustCurium246>.firstItem * 4)
    .outputs(<ore:dustCurium247>.firstItem)
    .outputs(<ore:dustBerkelium247>.firstItem * 2)
    .outputs(<ore:ingotBerkelium248>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:fluorine> * 9000])
    .fluidOutputs([<liquid:flibe> * 1296])
    .buildAndRegister();    

// HECm243
centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedHECm243ZA> * 9)
    .outputs(<ore:dustCurium245>.firstItem)
    .outputs(<ore:dustCurium246>.firstItem * 3)
    .outputs(<ore:dustBerkelium247>.firstItem * 2)
    .outputs(<ore:ingotBerkelium248>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 7500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 7500, 1250)
    .fluidOutputs([<liquid:zirconium> * 1296])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedHECm243Nitride> * 9)
    .outputs(<ore:dustCurium245>.firstItem)
    .outputs(<ore:dustCurium246>.firstItem * 3)
    .outputs(<ore:dustBerkelium247>.firstItem * 2)
    .outputs(<ore:ingotBerkelium248>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 7500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 7500, 1250)
    .fluidOutputs([<liquid:nitrogen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedHECm243Oxide> * 9)
    .outputs(<ore:dustCurium245>.firstItem)
    .outputs(<ore:dustCurium246>.firstItem * 3)
    .outputs(<ore:dustBerkelium247>.firstItem * 2)
    .outputs(<ore:ingotBerkelium248>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 7500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 7500, 1250)
    .fluidOutputs([<liquid:oxygen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .fluidInputs([<liquid:depleted_hecm_243_fluoride_flibe> * 1296])
    .outputs(<ore:dustCurium245>.firstItem)
    .outputs(<ore:dustCurium246>.firstItem * 3)
    .outputs(<ore:dustBerkelium247>.firstItem * 2)
    .outputs(<ore:ingotBerkelium248>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 7500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 7500, 1250)
    .fluidOutputs([<liquid:fluorine> * 9000])
    .fluidOutputs([<liquid:flibe> * 1296])
    .buildAndRegister();

// LECm245
centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedLECm245ZA> * 9)
    .outputs(<ore:dustCurium246>.firstItem * 4)
    .outputs(<ore:dustCurium247>.firstItem)
    .outputs(<ore:dustBerkelium247>.firstItem * 2)
    .outputs(<ore:ingotCalifornium249>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 3300, 1100)
    .chancedOutput(<ore:dustEuropium155>.firstItem, 2000, 1000)
    .fluidOutputs([<liquid:zirconium> * 1296])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedLECm245Nitride> * 9)
    .outputs(<ore:dustCurium246>.firstItem * 4)
    .outputs(<ore:dustCurium247>.firstItem)
    .outputs(<ore:dustBerkelium247>.firstItem * 2)
    .outputs(<ore:ingotCalifornium249>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 3300, 1100)
    .chancedOutput(<ore:dustEuropium155>.firstItem, 2000, 1000)
    .fluidOutputs([<liquid:nitrogen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedLECm245Oxide> * 9)
    .outputs(<ore:dustCurium246>.firstItem * 4)
    .outputs(<ore:dustCurium247>.firstItem)
    .outputs(<ore:dustBerkelium247>.firstItem * 2)
    .outputs(<ore:ingotCalifornium249>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 3300, 1100)
    .chancedOutput(<ore:dustEuropium155>.firstItem, 2000, 1000)
    .fluidOutputs([<liquid:oxygen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .fluidInputs([<liquid:depleted_lecm_245_fluoride_flibe> * 1296])
    .outputs(<ore:dustCurium246>.firstItem * 4)
    .outputs(<ore:dustCurium247>.firstItem)
    .outputs(<ore:dustBerkelium247>.firstItem * 2)
    .outputs(<ore:ingotCalifornium249>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 3300, 1100)
    .chancedOutput(<ore:dustEuropium155>.firstItem, 2000, 1000)
    .fluidOutputs([<liquid:fluorine> * 9000])
    .fluidOutputs([<liquid:flibe> * 1296])
    .buildAndRegister();

// HECm245
centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedHECm245ZA> * 9)
    .outputs(<ore:dustCurium246>.firstItem * 4)
    .outputs(<ore:dustCurium247>.firstItem)
    .outputs(<ore:dustBerkelium247>.firstItem * 2)
    .outputs(<ore:ingotCalifornium249>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 9000, 1000)
    .chancedOutput(<ore:dustEuropium155>.firstItem, 6000, 1000)
    .fluidOutputs([<liquid:zirconium> * 1296])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedHECm245Nitride> * 9)
    .outputs(<ore:dustCurium246>.firstItem * 4)
    .outputs(<ore:dustCurium247>.firstItem)
    .outputs(<ore:dustBerkelium247>.firstItem * 2)
    .outputs(<ore:ingotCalifornium249>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 9000, 1000)
    .chancedOutput(<ore:dustEuropium155>.firstItem, 6000, 1000)
    .fluidOutputs([<liquid:nitrogen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedHECm245Oxide> * 9)
    .outputs(<ore:dustCurium246>.firstItem * 4)
    .outputs(<ore:dustCurium247>.firstItem)
    .outputs(<ore:dustBerkelium247>.firstItem * 2)
    .outputs(<ore:ingotCalifornium249>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 9000, 1000)
    .chancedOutput(<ore:dustEuropium155>.firstItem, 6000, 1000)
    .fluidOutputs([<liquid:oxygen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .fluidInputs([<liquid:depleted_hecm_245_fluoride_flibe> * 1296])
    .outputs(<ore:dustCurium246>.firstItem * 4)
    .outputs(<ore:dustCurium247>.firstItem)
    .outputs(<ore:dustBerkelium247>.firstItem * 2)
    .outputs(<ore:ingotCalifornium249>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 9000, 1000)
    .chancedOutput(<ore:dustEuropium155>.firstItem, 6000, 1000)
    .fluidOutputs([<liquid:fluorine> * 9000])
    .fluidOutputs([<liquid:flibe> * 1296])
    .buildAndRegister();

// LECm247
centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedLECm247ZA> * 9)
    .outputs(<ore:dustCurium246>.firstItem * 5)
    .outputs(<ore:dustBerkelium247>.firstItem)
    .outputs(<ore:ingotBerkelium248>.firstItem)
    .outputs(<ore:ingotCalifornium249>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 3300, 1100)
    .chancedOutput(<ore:dustEuropium155>.firstItem, 2000, 1000)
    .fluidOutputs([<liquid:zirconium> * 1296])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedLECm247Nitride> * 9)
    .outputs(<ore:dustCurium246>.firstItem * 5)
    .outputs(<ore:dustBerkelium247>.firstItem)
    .outputs(<ore:ingotBerkelium248>.firstItem)
    .outputs(<ore:ingotCalifornium249>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 3300, 1100)
    .chancedOutput(<ore:dustEuropium155>.firstItem, 2000, 1000)
    .fluidOutputs([<liquid:nitrogen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedLECm247Oxide> * 9)
    .outputs(<ore:dustCurium246>.firstItem * 5)
    .outputs(<ore:dustBerkelium247>.firstItem)
    .outputs(<ore:ingotBerkelium248>.firstItem)
    .outputs(<ore:ingotCalifornium249>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 3300, 1100)
    .chancedOutput(<ore:dustEuropium155>.firstItem, 2000, 1000)
    .fluidOutputs([<liquid:oxygen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .fluidInputs([<liquid:depleted_lecm_247_fluoride_flibe> * 1296])
    .outputs(<ore:dustCurium246>.firstItem * 5)
    .outputs(<ore:dustBerkelium247>.firstItem)
    .outputs(<ore:ingotBerkelium248>.firstItem)
    .outputs(<ore:ingotCalifornium249>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 3300, 1100)
    .chancedOutput(<ore:dustEuropium155>.firstItem, 2000, 1000)
    .fluidOutputs([<liquid:fluorine> * 9000])
    .fluidOutputs([<liquid:flibe> * 1296])
    .buildAndRegister();

// HECm247
centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedHECm247ZA> * 9)
    .outputs(<ore:dustBerkelium247>.firstItem * 4)
    .outputs(<ore:ingotBerkelium248>.firstItem)
    .outputs(<ore:ingotCalifornium249>.firstItem)
    .outputs(<ore:dustCalifornium251>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 9000, 1000)
    .chancedOutput(<ore:dustEuropium155>.firstItem, 6000, 1000)
    .fluidOutputs([<liquid:zirconium> * 1296])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedHECm247Nitride> * 9)
    .outputs(<ore:dustBerkelium247>.firstItem * 4)
    .outputs(<ore:ingotBerkelium248>.firstItem)
    .outputs(<ore:ingotCalifornium249>.firstItem)
    .outputs(<ore:dustCalifornium251>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 9000, 1000)
    .chancedOutput(<ore:dustEuropium155>.firstItem, 6000, 1000)
    .fluidOutputs([<liquid:nitrogen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedHECm247Oxide> * 9)
    .outputs(<ore:dustBerkelium247>.firstItem * 4)
    .outputs(<ore:ingotBerkelium248>.firstItem)
    .outputs(<ore:ingotCalifornium249>.firstItem)
    .outputs(<ore:dustCalifornium251>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 9000, 1000)
    .chancedOutput(<ore:dustEuropium155>.firstItem, 6000, 1000)
    .fluidOutputs([<liquid:oxygen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .fluidInputs([<liquid:depleted_hecm_247_fluoride_flibe> * 1296])
    .outputs(<ore:dustBerkelium247>.firstItem * 4)
    .outputs(<ore:ingotBerkelium248>.firstItem)
    .outputs(<ore:ingotCalifornium249>.firstItem)
    .outputs(<ore:dustCalifornium251>.firstItem)
    .chancedOutput(<ore:dustSmallMolybdenum>.firstItem, 9000, 1000)
    .chancedOutput(<ore:dustEuropium155>.firstItem, 6000, 1000)
    .fluidOutputs([<liquid:fluorine> * 9000])
    .fluidOutputs([<liquid:flibe> * 1296])
    .buildAndRegister();

// LEB248
centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedLEB248ZA> * 9)
    .outputs(<ore:dustBerkelium247>.firstItem * 5)
    .outputs(<ore:ingotBerkelium248>.firstItem)
    .outputs(<ore:ingotCalifornium249>.firstItem)
    .outputs(<ore:dustCalifornium251>.firstItem)
    .chancedOutput(<ore:dustRuthenium106>.firstItem, 3300, 1100)
    .chancedOutput(<ore:dustEuropium155>.firstItem, 2000, 1000)
    .fluidOutputs([<liquid:zirconium> * 1296])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedLEB248Nitride> * 9)
    .outputs(<ore:dustBerkelium247>.firstItem * 5)
    .outputs(<ore:ingotBerkelium248>.firstItem)
    .outputs(<ore:ingotCalifornium249>.firstItem)
    .outputs(<ore:dustCalifornium251>.firstItem)
    .chancedOutput(<ore:dustRuthenium106>.firstItem, 3300, 1100)
    .chancedOutput(<ore:dustEuropium155>.firstItem, 2000, 1000)
    .fluidOutputs([<liquid:nitrogen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedLEB248Oxide> * 9)
    .outputs(<ore:dustBerkelium247>.firstItem * 5)
    .outputs(<ore:ingotBerkelium248>.firstItem)
    .outputs(<ore:ingotCalifornium249>.firstItem)
    .outputs(<ore:dustCalifornium251>.firstItem)
    .chancedOutput(<ore:dustRuthenium106>.firstItem, 3300, 1100)
    .chancedOutput(<ore:dustEuropium155>.firstItem, 2000, 1000)
    .fluidOutputs([<liquid:oxygen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .fluidInputs([<liquid:depleted_leb_248_fluoride_flibe> * 1296])
    .outputs(<ore:dustBerkelium247>.firstItem * 5)
    .outputs(<ore:ingotBerkelium248>.firstItem)
    .outputs(<ore:ingotCalifornium249>.firstItem)
    .outputs(<ore:dustCalifornium251>.firstItem)
    .chancedOutput(<ore:dustRuthenium106>.firstItem, 3300, 1100)
    .chancedOutput(<ore:dustEuropium155>.firstItem, 2000, 1000)
    .fluidOutputs([<liquid:fluorine> * 9000])
    .fluidOutputs([<liquid:flibe> * 1296])
    .buildAndRegister();

// HEB248
centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedHEB248ZA> * 9)
    .outputs(<ore:ingotBerkelium248>.firstItem)
    .outputs(<ore:ingotCalifornium249>.firstItem)
    .outputs(<ore:dustCalifornium251>.firstItem * 2)
    .outputs(<ore:dustCalifornium252>.firstItem * 3)
    .chancedOutput(<ore:dustRuthenium106>.firstItem, 9000, 1000)
    .chancedOutput(<ore:dustEuropium155>.firstItem, 6000, 1000)
    .fluidOutputs([<liquid:zirconium> * 1296])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedHEB248Nitride> * 9)
    .outputs(<ore:ingotBerkelium248>.firstItem)
    .outputs(<ore:ingotCalifornium249>.firstItem)
    .outputs(<ore:dustCalifornium251>.firstItem * 2)
    .outputs(<ore:dustCalifornium252>.firstItem * 3)
    .chancedOutput(<ore:dustRuthenium106>.firstItem, 9000, 1000)
    .chancedOutput(<ore:dustEuropium155>.firstItem, 6000, 1000)
    .fluidOutputs([<liquid:nitrogen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedHEB248Oxide> * 9)
    .outputs(<ore:ingotBerkelium248>.firstItem)
    .outputs(<ore:ingotCalifornium249>.firstItem)
    .outputs(<ore:dustCalifornium251>.firstItem * 2)
    .outputs(<ore:dustCalifornium252>.firstItem * 3)
    .chancedOutput(<ore:dustRuthenium106>.firstItem, 9000, 1000)
    .chancedOutput(<ore:dustEuropium155>.firstItem, 6000, 1000)
    .fluidOutputs([<liquid:oxygen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .fluidInputs([<liquid:depleted_heb_248_fluoride_flibe> * 1296])
    .outputs(<ore:ingotBerkelium248>.firstItem)
    .outputs(<ore:ingotCalifornium249>.firstItem)
    .outputs(<ore:dustCalifornium251>.firstItem * 2)
    .outputs(<ore:dustCalifornium252>.firstItem * 3)
    .chancedOutput(<ore:dustRuthenium106>.firstItem, 9000, 1000)
    .chancedOutput(<ore:dustEuropium155>.firstItem, 6000, 1000)
    .fluidOutputs([<liquid:fluorine> * 9000])
    .fluidOutputs([<liquid:flibe> * 1296])
    .buildAndRegister();

// // LECf249
// centrifuge.recipeBuilder().EUt(24).duration(500)
//     .inputs(<ore:ingotDepletedLECf249ZA> * 9)
//     .outputs(<ore:dustBerkelium247>.firstItem * 5)
//     .outputs(<ore:ingotBerkelium248>.firstItem)
//     .outputs(<ore:ingotCalifornium249>.firstItem)
//     .outputs(<ore:dustCalifornium251>.firstItem)
//     .chancedOutput(<ore:dustRuthenium106>.firstItem, 3300, 1100)
//     .chancedOutput(<ore:dustEuropium155>.firstItem, 2000, 1000)
//     .fluidOutputs([<liquid:zirconium> * 1296])
//     .buildAndRegister();

// centrifuge.recipeBuilder().EUt(24).duration(500)
//     .inputs(<ore:ingotDepletedLECf249Nitride> * 9)
//     .outputs(<ore:dustBerkelium247>.firstItem * 5)
//     .outputs(<ore:ingotBerkelium248>.firstItem)
//     .outputs(<ore:ingotCalifornium249>.firstItem)
//     .outputs(<ore:dustCalifornium251>.firstItem)
//     .chancedOutput(<ore:dustRuthenium106>.firstItem, 3300, 1100)
//     .chancedOutput(<ore:dustEuropium155>.firstItem, 2000, 1000)
//     .fluidOutputs([<liquid:nitrogen> * 9000])
//     .buildAndRegister();

// centrifuge.recipeBuilder().EUt(24).duration(500)
//     .inputs(<ore:ingotDepletedLECf249Oxide> * 9)
//     .outputs(<ore:dustBerkelium247>.firstItem * 5)
//     .outputs(<ore:ingotBerkelium248>.firstItem)
//     .outputs(<ore:ingotCalifornium249>.firstItem)
//     .outputs(<ore:dustCalifornium251>.firstItem)
//     .chancedOutput(<ore:dustRuthenium106>.firstItem, 3300, 1100)
//     .chancedOutput(<ore:dustEuropium155>.firstItem, 2000, 1000)
//     .fluidOutputs([<liquid:oxygen> * 9000])
//     .buildAndRegister();

// centrifuge.recipeBuilder().EUt(24).duration(500)
//     .fluidInputs([<liquid:depleted_lecf_249_fluoride_flibe> * 1296])
//     .outputs(<ore:dustBerkelium247>.firstItem * 5)
//     .outputs(<ore:ingotBerkelium248>.firstItem)
//     .outputs(<ore:ingotCalifornium249>.firstItem)
//     .outputs(<ore:dustCalifornium251>.firstItem)
//     .chancedOutput(<ore:dustRuthenium106>.firstItem, 3300, 1100)
//     .chancedOutput(<ore:dustEuropium155>.firstItem, 2000, 1000)
//     .fluidOutputs([<liquid:fluorine> * 9000])
//     .fluidOutputs([<liquid:flibe> * 1296])
//     .buildAndRegister();    

// // HECf249
// centrifuge.recipeBuilder().EUt(24).duration(500)
//     .inputs(<ore:ingotDepletedHECf249ZA> * 9)
//     .outputs(<ore:ingotBerkelium248>.firstItem)
//     .outputs(<ore:ingotCalifornium249>.firstItem)
//     .outputs(<ore:dustCalifornium251>.firstItem * 2)
//     .outputs(<ore:dustCalifornium252>.firstItem * 3)
//     .chancedOutput(<ore:dustRuthenium106>.firstItem, 9000, 1000)
//     .chancedOutput(<ore:dustEuropium155>.firstItem, 6000, 1000)
//     .fluidOutputs([<liquid:zirconium> * 1296])
//     .buildAndRegister();

// centrifuge.recipeBuilder().EUt(24).duration(500)
//     .inputs(<ore:ingotDepletedHECf249Nitride> * 9)
//     .outputs(<ore:ingotBerkelium248>.firstItem)
//     .outputs(<ore:ingotCalifornium249>.firstItem)
//     .outputs(<ore:dustCalifornium251>.firstItem * 2)
//     .outputs(<ore:dustCalifornium252>.firstItem * 3)
//     .chancedOutput(<ore:dustRuthenium106>.firstItem, 9000, 1000)
//     .chancedOutput(<ore:dustEuropium155>.firstItem, 6000, 1000)
//     .fluidOutputs([<liquid:nitrogen> * 9000])
//     .buildAndRegister();

// centrifuge.recipeBuilder().EUt(24).duration(500)
//      .inputs(<ore:ingotDepletedHECf249Oxide> * 9)
//      .outputs(<ore:ingotBerkelium248>.firstItem)
//      .outputs(<ore:ingotCalifornium249>.firstItem)
//      .outputs(<ore:dustCalifornium251>.firstItem * 2)
//      .outputs(<ore:dustCalifornium252>.firstItem * 3)
//      .chancedOutput(<ore:dustRuthenium106>.firstItem, 9000, 1000)
//      .chancedOutput(<ore:dustEuropium155>.firstItem, 6000, 1000)
//      .fluidOutputs([<liquid:oxygen> * 9000])
//      .buildAndRegister();

// centrifuge.recipeBuilder().EUt(24).duration(500)
//      .fluidInputs([<liquid:depleted_hecf_249_fluoride_flibe> * 1296])
//      .outputs(<ore:ingotBerkelium248>.firstItem)
//      .outputs(<ore:ingotCalifornium249>.firstItem)
//      .outputs(<ore:dustCalifornium251>.firstItem * 2)
//      .outputs(<ore:dustCalifornium252>.firstItem * 3)
//      .chancedOutput(<ore:dustRuthenium106>.firstItem, 9000, 1000)
//      .chancedOutput(<ore:dustEuropium155>.firstItem, 6000, 1000)
//      .fluidOutputs([<liquid:fluorine> * 9000])
//      .fluidOutputs([<liquid:flibe> * 1296])
//      .buildAndRegister();

// TBU
centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedTBUZA> * 9)
    .outputs(<ore:dustUraniumRadioactive233>.firstItem)
    .outputs(<ore:dustUranium>.firstItem * 5)
    .outputs(<ore:ingotNeptunium236>.firstItem)
    .outputs(<ore:dustNeptunium237>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustCaesium137>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:zirconium> * 1296])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedTBUNitride> * 9)
    .outputs(<ore:dustUraniumRadioactive233>.firstItem)
    .outputs(<ore:dustUranium>.firstItem * 5)
    .outputs(<ore:ingotNeptunium236>.firstItem)
    .outputs(<ore:dustNeptunium237>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustCaesium137>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:nitrogen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedTBUOxide> * 9)
    .outputs(<ore:dustUraniumRadioactive233>.firstItem)
    .outputs(<ore:dustUranium>.firstItem * 5)
    .outputs(<ore:ingotNeptunium236>.firstItem)
    .outputs(<ore:dustNeptunium237>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustCaesium137>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:oxygen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .fluidInputs([<liquid:depleted_tbu_fluoride_flibe> * 1296])
    .outputs(<ore:dustUraniumRadioactive233>.firstItem)
    .outputs(<ore:dustUranium>.firstItem * 5)
    .outputs(<ore:ingotNeptunium236>.firstItem)
    .outputs(<ore:dustNeptunium237>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustCaesium137>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:fluorine> * 9000])
    .fluidOutputs([<liquid:flibe> * 1296])
    .buildAndRegister();
    
// MIX239
centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedMIX239ZA> * 9)
    .outputs(<ore:dustUranium>.firstItem * 4)
    .outputs(<ore:dustPlutonium241>.firstItem)
    .outputs(<ore:ingotPlutonium242>.firstItem * 2)
    .outputs(<ore:dustAmericium243>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:zirconium> * 1296])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedMIX239Nitride> * 9)
    .outputs(<ore:dustUranium>.firstItem * 4)
    .outputs(<ore:dustPlutonium241>.firstItem)
    .outputs(<ore:ingotPlutonium242>.firstItem * 2)
    .outputs(<ore:dustAmericium243>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:nitrogen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedMIX239Oxide> * 9)
    .outputs(<ore:dustUranium>.firstItem * 4)
    .outputs(<ore:dustPlutonium241>.firstItem)
    .outputs(<ore:ingotPlutonium242>.firstItem * 2)
    .outputs(<ore:dustAmericium243>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:oxygen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .fluidInputs([<liquid:depleted_mix_239_fluoride_flibe> * 1296])
    .outputs(<ore:dustUranium>.firstItem * 4)
    .outputs(<ore:dustPlutonium241>.firstItem)
    .outputs(<ore:ingotPlutonium242>.firstItem * 2)
    .outputs(<ore:dustAmericium243>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:fluorine> * 9000])
    .fluidOutputs([<liquid:flibe> * 1296])
    .buildAndRegister();

// MIX241
centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedMIX241ZA> * 9)
    .outputs(<ore:dustUranium>.firstItem * 3)
    .outputs(<ore:dustPlutonium241>.firstItem)
    .outputs(<ore:ingotPlutonium242>.firstItem * 3)
    .outputs(<ore:dustAmericium243>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:zirconium> * 1296])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedMIX241Nitride> * 9)
    .outputs(<ore:dustUranium>.firstItem * 3)
    .outputs(<ore:dustPlutonium241>.firstItem)
    .outputs(<ore:ingotPlutonium242>.firstItem * 3)
    .outputs(<ore:dustAmericium243>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:nitrogen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedMIX241Oxide> * 9)
    .outputs(<ore:dustUranium>.firstItem * 3)
    .outputs(<ore:dustPlutonium241>.firstItem)
    .outputs(<ore:ingotPlutonium242>.firstItem * 3)
    .outputs(<ore:dustAmericium243>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:oxygen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .fluidInputs([<liquid:depleted_mix_241_fluoride_flibe> * 1296])
    .outputs(<ore:dustUranium>.firstItem * 3)
    .outputs(<ore:dustPlutonium241>.firstItem)
    .outputs(<ore:ingotPlutonium242>.firstItem * 3)
    .outputs(<ore:dustAmericium243>.firstItem)
    .chancedOutput(<ore:dustStrontium90>.firstItem, 2500, 1250)
    .chancedOutput(<ore:dustPromethium147>.firstItem, 2500, 1250)
    .fluidOutputs([<liquid:fluorine> * 9000])
    .fluidOutputs([<liquid:flibe> * 1296])
    .buildAndRegister();

// MIX291
centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedMIX291ZA> * 9)
    .outputs(<ore:dustAmericium243>.firstItem * 4)
    .outputs(<ore:ingotCurium243>.firstItem * 2)
    .outputs(<ore:dustCurium245>.firstItem)
    .outputs(<ore:dustBerkelium247>.firstItem)
    .chancedOutput(<ore:dustRuthenium106>.firstItem, 3300, 1100)
    .chancedOutput(<ore:dustEuropium155>.firstItem, 2000, 1000)
    .fluidOutputs([<liquid:zirconium> * 1296])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedMIX291Nitride> * 9)
    .outputs(<ore:dustAmericium243>.firstItem * 4)
    .outputs(<ore:ingotCurium243>.firstItem * 2)
    .outputs(<ore:dustCurium245>.firstItem)
    .outputs(<ore:dustBerkelium247>.firstItem)
    .chancedOutput(<ore:dustRuthenium106>.firstItem, 3300, 1100)
    .chancedOutput(<ore:dustEuropium155>.firstItem, 2000, 1000)
    .fluidOutputs([<liquid:nitrogen> * 9000])
    .buildAndRegister();

centrifuge.recipeBuilder().EUt(24).duration(500)
    .inputs(<ore:ingotDepletedMIX291Oxide> * 9)
    .outputs(<ore:dustAmericium243>.firstItem * 4)
    .outputs(<ore:ingotCurium243>.firstItem * 2)
    .outputs(<ore:dustCurium245>.firstItem)
    .outputs(<ore:dustBerkelium247>.firstItem)
    .chancedOutput(<ore:dustRuthenium106>.firstItem, 3300, 1100)
    .chancedOutput(<ore:dustEuropium155>.firstItem, 2000, 1000)
    .fluidOutputs([<liquid:oxygen> * 9000])
    .buildAndRegister();
