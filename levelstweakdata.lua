local init_original = LevelsTweakData.init

function LevelsTweakData:init(...)
	init_original(self, ...)
	
	self.pbr2.max_bags = 20
	self.chill.ghost_bonus = nil
	self.spa.max_bags = 8
	self.fish.max_bags = 20
	self.vit.ghost_bonus = 0.15
end