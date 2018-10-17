local init_original = InteractionTweakData.init

function InteractionTweakData:init(...)
	init_original(self, ...)
	
	self.hold_born_receive_item_blow_torch.action_text_id = "hud_action_taking_blow_torch"
	self.diamond_single_pickup_axis.text_id = "hud_int_take_jewelry"
	self.diamond_single_pickup_axis.sound_event = "money_grab"
end