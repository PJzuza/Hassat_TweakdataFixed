local init_original = LootDropTweakData.init

function LootDropTweakData:init(...)
	init_original(self, ...)
	
	self.global_values.complete_overkill_pack.hide_unavailable = true
end