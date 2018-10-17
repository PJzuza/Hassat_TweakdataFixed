local init_original = EquipmentsTweakData.init

function EquipmentsTweakData:init(...)
	init_original(self, ...)
	
	self.specials.thermite.transfer_quantity = 2
end