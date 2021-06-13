import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide;


val removals = [
    <galaxyspace:compressed_plates>,
    <galaxyspace:compressed_plates:2>,
    <galaxyspace:compressed_plates:3>
] as IItemStack[];

for item in removals {
    mods.jei.JEI.removeAndHide(item);
}