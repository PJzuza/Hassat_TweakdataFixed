local init_original = CustomSafehouseTweakData._init_trophies

function CustomSafehouseTweakData:_init_trophies(...)
	init_original(self, ...)
	
	self.trophies[53].gives_reward = true
	self.trophies[54].gives_reward = true
	self.trophies[55].gives_reward = true
	self.trophies[56].gives_reward = true
	self.trophies[57].gives_reward = true
	self.trophies[62].gives_reward = true
end