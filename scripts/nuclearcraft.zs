import crafttweaker.item.IIngredient;
import mods.nuclearcraft.AlloyFurnace;

val boron_ingot = <nuclearcraft:ingot:5>;
val ferroboron = <nuclearcraft:alloy:6> * 2;
val tough_alloy = <nuclearcraft:alloy:1> * 2;
val hard_carbon = <nuclearcraft:alloy:2> * 2;
val thermoconducting = <nuclearcraft:alloy:11> * 2;
val extreme = <nuclearcraft:alloy:10> * 2;

var furnace_removals = [
	boron_ingot
] as IIngredient[];

for item in furnace_removals {
    furnace.remove(item);
}

furnace.addRecipe(<ore:ingotBoron>.firstItem, <ore:dustBoron>);

// Uncomment the following line of code to yeet the thing for good.
// Be careful, some alloys not used in early versions of GCM will not be put back, such as shibuichi.
//AlloyFurnace.removeAllRecipes();

blast_furnace.recipeBuilder()
	.inputs(<ore:ingotSteel>)
	.inputs(<ore:dustBoron>)
	.outputs(<ore:ingotFerroboron>.firstItem * 2)
	.property("temperature", 3500)
	.EUt(480)
	.duration(704)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<ore:ingotFerroboron> * 2)
	.inputs(<ore:dustLithium>)
	.outputs(<ore:ingotTough>.firstItem * 3)
	.property("temperature", 3900)
	.EUt(480)
	.duration(1212)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<ore:ingotGraphite> * 2)
	.inputs(<ore:dustDiamond>)
	.outputs(<ore:ingotHardCarbon>.firstItem * 3)
	.property("temperature", 3700)
	.EUt(480)
	.duration(809)
	.buildAndRegister();

// This is fine to be 1 each instead of 3 since it is reducible
// i.e. (3 + 3 -> 6) is the same as (1 + 1 -> 2)
blast_furnace.recipeBuilder()
	.inputs(<ore:ingotHardCarbon>)
	.inputs(<ore:ingotTough>)
	.outputs(<ore:ingotExtreme>.firstItem * 2)
	.property("temperature", 3900)
	.EUt(1750)
	.duration(500)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<ore:ingotExtreme>)
	.inputs(<ore:gemBoronArsenide> * 2)
	.outputs(<ore:ingotThermoconducting>.firstItem * 3)
	.property("temperature", 3500)
	.EUt(4000)
	.duration(2097)
	.buildAndRegister();


blast_furnace.recipeBuilder()
	.inputs(<ore:ingotExtreme>)
	.inputs(<ore:gemBoronArsenide> * 2)
	.outputs(<ore:ingotThermoconducting>.firstItem * 3)
	.property("temperature", 3500)
	.EUt(4000)
	.duration(2097)
	.buildAndRegister();


blast_furnace.recipeBuilder()
	.inputs(<ore:ingotMagnesium>)
	.inputs(<ore:dustBoron> * 2)
	.outputs(<ore:ingotMagnesiumDiboride>.firstItem * 3)
	.property("temperature", 3500)
	.EUt(480)
	.duration(800)
	.buildAndRegister();


blast_furnace.recipeBuilder()
	.inputs(<ore:dustManganeseDioxide> * 3)
	.inputs(<ore:dustLithium>)
	.outputs(<ore:ingotLithiumManganeseDioxide>.firstItem * 4)
	.property("temperature", 3500)
	.EUt(480)
	.duration(800)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<ore:ingotZirconium> * 7)
	.inputs(<ore:ingotTin>)
	.outputs(<ore:ingotZircaloy>.firstItem * 8)
	.property("temperature", 3500)
	.EUt(480)
	.duration(800)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<ore:ingotSilicon>)
	.inputs(<ore:dustCarbon>)
	.outputs(<ore:ingotSiliconCarbide>.firstItem * 2)
	.property("temperature", 3500)
	.EUt(480)
	.duration(800)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<ore:ingotIron> * 14)
	.inputs(<ore:dustCarbonManganese> * 2)
	.outputs(<ore:ingotHSLASteel>.firstItem * 16)
	.property("temperature", 4400)
	.EUt(480)
	.duration(800)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<ore:ingotMolybdenum> * 15)
	.inputs(<ore:ingotZirconium>)
	.outputs(<ore:ingotZirconiumMolybdenum>.firstItem * 16)
	.property("temperature", 4400)
	.EUt(480)
	.duration(800)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<ore:ingotNiobium> * 3)
	.inputs(<ore:ingotTin>)
	.outputs(<ore:ingotNiobiumTin>.firstItem * 4)
	.property("temperature", 5400)
	.EUt(1750)
	.duration(900)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<ore:ingotNichrome> * 2)
	.inputs(<ore:ingotNiobiumTitanium>)
	.outputs(<ore:ingotSuperAlloy>.firstItem * 3)
	.property("temperature", 5400)
	.EUt(9750)
	.duration(1200)
	.buildAndRegister();
