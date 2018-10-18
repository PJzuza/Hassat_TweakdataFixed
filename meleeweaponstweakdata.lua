local init_original = BlackMarketTweakData._init_melee_weapons

function BlackMarketTweakData:_init_melee_weapons(...)
	init_original(self, ...)
	
	self.melee_weapons.boxing_gloves.dlc = "pd2_clan"
end