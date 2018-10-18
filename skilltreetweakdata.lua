local init_original = SkillTreeTweakData.init

function SkillTreeTweakData:init(...)
	init_original(self, ...)
	
	self.skills.cable_guy[1].upgrades = {
		"player_intimidate_range_mul",
		"player_intimidate_aura"
	}
	self.skills.stockholm_syndrome[1].upgrades = {
		"player_civ_calming_alerts",
		"player_civ_intimidation_mul"
	}
	self.specializations[8][5].upgrades = {
		"player_damage_dampener_close_contact_2"
	}
end