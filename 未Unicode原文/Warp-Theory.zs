// --- Created by DreamMasterXXL ---



// --- Importing Stuff ---




// --- Variables ---



// --- Removing Recipes ---




// --- Litmus Paper
mods.thaumcraft.Arcane.removeRecipe(<WarpTheory:item.warptheory.paper>);

// --- Pure Tear
mods.thaumcraft.Infusion.removeRecipe(<WarpTheory:item.warptheory.cleanser>);

// --- Purification Talisman
mods.thaumcraft.Infusion.removeRecipe(<WarpTheory:item.warptheory.amulet>);




// --- Adding Recipes ---




// --- Litmus Paper
mods.thaumcraft.Research.clearPrereqs("warptheory.paper");
mods.thaumcraft.Research.addPrereq("warptheory.paper", "RESEARCHER2", false);
mods.thaumcraft.Research.clearPages("warptheory.paper");
mods.thaumcraft.Research.addPage("warptheory.paper", "research.warptheory.paper");
mods.thaumcraft.Arcane.addShaped("warptheory.paper", <WarpTheory:item.warptheory.paper> * 2, "aqua 8, terra 8", [
[null, <Thaumcraft:ItemResource:14>, null],
[<Thaumcraft:ItemResource:14>, <minecraft:paper>, <Thaumcraft:ItemResource:14>],
[null, <Thaumcraft:ItemResource:14>, null]]);
mods.thaumcraft.Research.addArcanePage("warptheory.paper", <WarpTheory:item.warptheory.paper>);
// -
mods.thaumcraft.Research.setAspects("warptheory.paper", "alienis 6, praecantatio 6, ordo 9, aqua 3, terra 3");
mods.thaumcraft.Research.setComplexity("warptheory.paper", 2);

// --- Fu..ing Fake research crash my Game many times
mods.thaumcraft.Research.orphanResearch("FAKESOAP");
mods.thaumcraft.Research.removeResearch("FAKESOAP");
// -
mods.thaumcraft.Research.orphanResearch("FAKEELDMAJOR");
mods.thaumcraft.Research.removeResearch("FAKEELDMAJOR");

// --- Hunk of Something
mods.thaumcraft.Research.clearPrereqs("warptheory.something");
mods.thaumcraft.Research.addPrereq("warptheory.something", "warptheory.paper", false);
mods.thaumcraft.Research.setAspects("warptheory.something", "alienis 12, bestia 12, permutatio 9, victus 6, corpus 3");
mods.thaumcraft.Research.setComplexity("warptheory.something", 2);
mods.thaumcraft.Warp.addToResearch("warptheory.something", 3);

// --- Pure Tear
mods.thaumcraft.Research.orphanResearch("warptheory.cleanser");
mods.thaumcraft.Research.removeResearch("warptheory.cleanser");
mods.thaumcraft.Research.addResearch("PURETEAR", "WT_Category", "alienis 12, praecantatio 12, permutatio 9, sano 6, terra 3", -4, -1, 3, <WarpTheory:item.warptheory.cleanser>);
game.setLocalization("tc.research_name.PURETEAR", "纯净泪水");
game.setLocalization("tc.research_text.PURETEAR", "魔法药物");
mods.thaumcraft.Research.addPrereq("PURETEAR", "ELDRITCHMAJOR", false);
mods.thaumcraft.Research.addPrereq("PURETEAR", "warptheory.paper", false);
mods.thaumcraft.Research.addPrereq("PURETEAR", "ICHORIUM", false);
mods.thaumcraft.Research.addPage("PURETEAR", "tc.research_page.PURETEAR");
game.setLocalization("tc.research_page.PURETEAR", "通过结合恶魂之泪的治疗�\ufffd�能, 世界盐的魔法能量, 和水晶的稳定�\ufffd, 你已经发现了�\ufffd种清除体内扭曲的方法.<BR> 然�\ufffd\ufffd,这个过程并非没有缺点, 因为�\ufffd有能量都必须到达某个地方.");
mods.thaumcraft.Infusion.addRecipe("PURETEAR", <minecraft:nether_star>, 
[<ThaumicTinkerer:kamiResource:2>, <appliedenergistics2:item.ItemMultiMaterial:10>, <gregtech:gt.metaitem.01:24500>, <appliedenergistics2:item.ItemMultiMaterial:11>, <minecraft:ghast_tear>, <Thaumcraft:ItemResource:14>, <minecraft:ghast_tear>, <appliedenergistics2:item.ItemMultiMaterial:11>, <gregtech:gt.metaitem.01:24500>, <appliedenergistics2:item.ItemMultiMaterial:10>], 
"alienis 32, permutatio 32, praecantatio 16, sano 16", <WarpTheory:item.warptheory.cleanser>, 10);
mods.thaumcraft.Research.addInfusionPage("PURETEAR", <WarpTheory:item.warptheory.cleanser>);

// --- Purification Talisman
mods.thaumcraft.Research.orphanResearch("warptheory.amulet");
mods.thaumcraft.Research.clearPrereqs("warptheory.amulet");
mods.thaumcraft.Research.addPrereq("warptheory.amulet", "PURETEAR", false);
mods.thaumcraft.Infusion.addRecipe("warptheory.amulet", <Thaumcraft:ItemBaubleBlanks>, 
[<WarpTheory:item.warptheory.cleanser>, <gregtech:gt.metaitem.01:27330>, <gregtech:gt.metaitem.02:29500>, <ThaumicTinkerer:kamiResource:2>, <Thaumcraft:ItemResource:14>, <gregtech:gt.metaitem.01:17086>, <gregtech:gt.metaitem.01:27330>, <WarpTheory:item.warptheory.cleanser>, <gregtech:gt.metaitem.01:27330>, <gregtech:gt.metaitem.02:29500>, <Thaumcraft:ItemResource:14>, <ThaumicTinkerer:kamiResource:2>, <gregtech:gt.metaitem.01:17086>, <gregtech:gt.metaitem.01:27330>], 
"alienis 64, auram 32, potentia 32, praecantatio 64, permutatio 32", <WarpTheory:item.warptheory.amulet>, 16);
// -
mods.thaumcraft.Research.setAspects("warptheory.amulet", "alienis 15, auram 15, potentia 12, praecantatio 9, permutatio 6, terra 3");
mods.thaumcraft.Research.setComplexity("warptheory.amulet", 4);



// --- Refresh Recipese --- 




// --- Litmus Paper
mods.thaumcraft.Research.refreshResearchRecipe("warptheory.paper");

// --- Hunk of Something
mods.thaumcraft.Research.refreshResearchRecipe("warptheory.something");

// --- Pure Tear
mods.thaumcraft.Research.refreshResearchRecipe("warptheory.cleanser");

// --- Purification Talisman
mods.thaumcraft.Research.refreshResearchRecipe("warptheory.amulet");





// --- Hiding Stuff ---
