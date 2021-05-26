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