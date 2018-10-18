local init_original = UpgradesTweakData.init

function UpgradesTweakData:init(...)
	init_original(self, ...)
	
	self.level_tree[35].upgrades = {
		"r93",
		"judge",
		"mining_pick",
		"x_judge"
	}
	self.values.player.regain_throwable_from_ammo.chance_inc = 0.01
end