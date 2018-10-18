local init_original = CarryTweakData.init

function CarryTweakData:init(...)
	init_original(self, ...)
	
	--self.cro_loot1.unit = "units/pd2_dlc1/pickups/gen_pku_explosivesbag/gen_pku_explosivesbag"
	--self.cro_loot1.visual_unit_name = "units/payday2/characters/npc_acc_explosives_bag_1/npc_acc_explosives_bag_1"
	--self.cro_loot2.unit = "units/pd2_dlc1/pickups/gen_pku_explosivesbag/gen_pku_explosivesbag"
	--self.cro_loot2.visual_unit_name = "units/payday2/characters/npc_acc_explosives_bag_1/npc_acc_explosives_bag_1"
	self.unknown.bag_value = "unknown"
	self.drone_control_helmet.bag_value = "drone_control_helmet"
	self.black_tablet.bag_value = "black_tablet"
end