local init_original = WeaponTweakData.init

function WeaponTweakData:init(...)
	init_original(self, ...)
	
	self.ceiling_turret_module.CAN_GO_IDLE = false
end