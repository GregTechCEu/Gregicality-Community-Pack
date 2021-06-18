import crafttweaker.item.IItemStack;

// OIL PRODUCTS CRACKING

// Light Fuel
// Hydro-cracking
chemical_reactor.recipeBuilder()
	.fluidOutputs([<liquid:hydrocracked_light_fuel> * 800])
    .fluidInputs([<liquid:hydrogen> * 2000, <liquid:light_fuel> * 1000])
	.EUt(30)
	.duration(320)
	.buildAndRegister();
// Steam-cracking
chemical_reactor.recipeBuilder()
	.fluidOutputs([<liquid:cracked_light_fuel> * 800])
    .fluidInputs([<liquid:steam> * 2000, <liquid:light_fuel> * 1000])
	.EUt(30)
	.duration(160)
	.buildAndRegister();
    
// Heavy Fuel
// Hydro-cracking
chemical_reactor.recipeBuilder()
	.fluidOutputs([<liquid:hydrocracked_heavy_fuel> * 800])
    .fluidInputs([<liquid:hydrogen> * 2000, <liquid:heavy_fuel> * 1000])
	.EUt(30)
	.duration(320)
	.buildAndRegister();
// Steam-cracking
chemical_reactor.recipeBuilder()
	.fluidOutputs([<liquid:cracked_heavy_fuel> * 800])
    .fluidInputs([<liquid:steam> * 2000, <liquid:heavy_fuel> * 1000])
	.EUt(30)
	.duration(160)
	.buildAndRegister();

// Naphtha
// Hydro-cracking
chemical_reactor.recipeBuilder()
	.fluidOutputs([<liquid:hydrocracked_naphtha> * 800])
    .fluidInputs([<liquid:hydrogen> * 2000, <liquid:naphtha> * 1000])
	.EUt(30)
	.duration(320)
	.buildAndRegister();
// Steam-cracking
chemical_reactor.recipeBuilder()
	.fluidOutputs([<liquid:steamcracked_naphtha> * 800])
    .fluidInputs([<liquid:steam> * 2000, <liquid:naphtha> * 1000])
	.EUt(30)
	.duration(160)
	.buildAndRegister();

// Refinery Gas
// Hydro-cracking
chemical_reactor.recipeBuilder()
	.fluidOutputs([<liquid:hydrocracked_gas> * 800])
    .fluidInputs([<liquid:hydrogen> * 2000, <liquid:gas> * 1000])
	.EUt(30)
	.duration(320)
	.buildAndRegister();
// Steam-cracking
chemical_reactor.recipeBuilder()
	.fluidOutputs([<liquid:steamcracked_gas> * 800])
    .fluidInputs([<liquid:steam> * 2000, <liquid:gas> * 1000])
	.EUt(30)
	.duration(160)
	.buildAndRegister();


//DISTILLERY AND BREWERY MACHINE RECIPES
global distillery_mte as IItemStack[] = [null, <meta_tile_entity:distillery.lv>, <meta_tile_entity:distillery.mv>, <meta_tile_entity:distillery.hv>, 
    <meta_tile_entity:distillery.ev>, <meta_tile_entity:gtadditions:distillery.iv>, <meta_tile_entity:gtadditions:distillery.luv>, 
    <meta_tile_entity:gtadditions:distillery.zpm>, <meta_tile_entity:gtadditions:distillery.uv>, <meta_tile_entity:gtadditions:distillery.uhv>,
    <meta_tile_entity:gtadditions:distillery.uev>, <meta_tile_entity:gtadditions:distillery.uiv>, <meta_tile_entity:gtadditions:distillery.umv>,
    <meta_tile_entity:gtadditions:distillery.uxv>] as IItemStack[];
	
global brewery_mte as IItemStack[] = [null, <meta_tile_entity:brewery.lv>, <meta_tile_entity:brewery.mv>, <meta_tile_entity:brewery.hv>, 
    <meta_tile_entity:brewery.ev>, <meta_tile_entity:gtadditions:brewery.iv>, <meta_tile_entity:gtadditions:brewery.luv>, 
    <meta_tile_entity:gtadditions:brewery.zpm>, <meta_tile_entity:gtadditions:brewery.uv>, <meta_tile_entity:gtadditions:brewery.uhv>,
    <meta_tile_entity:gtadditions:brewery.uev>, <meta_tile_entity:gtadditions:brewery.uiv>, <meta_tile_entity:gtadditions:brewery.umv>,
    <meta_tile_entity:gtadditions:brewery.uxv>] as IItemStack[];

var distillery_recipe_name = "gtadditions:ga_gregtech.machine.distillery.";
var brewery_recipe_name = "gtadditions:ga_gregtech.machine.brewery.";

for i in 1 to 14 {
	if(i == 5) {
		distillery_recipe_name = "gtadditions:ga_gtadditions.machine.distillery.";
		brewery_recipe_name = "gtadditions:ga_gtadditions.machine.brewery.";
	}

	recipes.removeByRecipeName(distillery_recipe_name + voltageTiers[i]);
	recipes.removeByRecipeName(brewery_recipe_name + voltageTiers[i]);

	recipes.addShaped("distillery_" + voltageTiers[i], distillery_mte[i],
		[[tieredGlass[i], tieredLongSticks[i], tieredGlass[i]],
		[circuits[i], hulls[i], circuits[i]],
		[tieredCables[i], pumps[i], tieredCables[i]]]);

	recipes.addShaped("brewery_" + voltageTiers[i], brewery_mte[i],
		[[tieredGlass[i], pumps[i], tieredGlass[i]],
		[tieredCables[i], hulls[i], tieredCables[i]],
		[circuits[i], tieredLongSticks[i], circuits[i]]]);
}