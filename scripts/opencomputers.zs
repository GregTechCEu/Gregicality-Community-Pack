import mods.jei.JEI.removeAndHide;
import crafttweaker.item.IItemStack;

val oc_cable = <opencomputers:cable>;
val oc_PCB = <ore:oc:materialCircuitBoardPrinted>;
val oc_chip1 = <ore:oc:circuitChip1>;
val oc_chip2 = <ore:oc:circuitChip2>;
val oc_chip3 = <ore:oc:circuitChip3>;

// Computer Tier 1
recipes.removeByRecipeName("opencomputers:case14");
recipes.addShaped("computer_1", <opencomputers:case1>, [
    [<metaitem:rotorTin>, circuits[2], sensors[1]],
    [tieredWires[1], hulls[1], oc_cable],
    [<metaitem:rotorTin>, circuits[2], emitters[1]]
]);

// Computer Tier 2
recipes.removeByRecipeName("opencomputers:case26");
recipes.addShaped("computer_2", <opencomputers:case2>, [
    [<metaitem:rotorBronze>, circuits[3], sensors[2]],
    [tieredWires[2], hulls[2], oc_cable],
    [<metaitem:rotorBronze>, circuits[3], emitters[2]]
]);

// Computer Tier 3
recipes.removeByRecipeName("opencomputers:case35");
recipes.addShaped("computer_3", <opencomputers:case3>, [
    [<metaitem:rotorSteel>, circuits[4], sensors[3]],
    [tieredWires[3], hulls[3], oc_cable],
    [<metaitem:rotorSteel>, circuits[4], emitters[3]]
]);

// OC Cables
recipes.removeByRecipeName("opencomputers:cable2");
recipes.addShaped("OC_cable", oc_cable, [
    [null, <metaitem:plateRubber>, null],
    [<metaitem:plateRubber>, tieredCables[2], <metaitem:plateRubber>],
    [null, <metaitem:plateRubber>, null]
]);
recipes.addShaped("OC_cable2_electric_boogaloo", oc_cable, [
    [tieredWires[3], tieredWires[3], null],
    [null, null, null],
    [null, null, null]
]);
