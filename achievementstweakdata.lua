local init_original = AchievementsTweakData.init

function AchievementsTweakData:init(...)
	init_original(self, ...)
	
	self.complete_heist_achievements.story_transport_mult.jobs = {
		"arm_cro",
		"arm_hcm",
		"arm_fac",
		"arm_par",
		"arm_und"
	}
	self.job_list.locke = {
		"pbr",
		"pbr2",
		"wwh",
		"brb",
		"tag",
		"des",
		"sah"
	}
	self.man_5.job = nil
	self.man_5.level_id = "man"
	self.grenade_achievements.pim_2.job = nil
	self.grenade_achievements.pim_2.level_id = "dark"
	self.enemy_melee_hit_achievements.hurting_people.jobs = nil
	self.enemy_melee_hit_achievements.hurting_people.levels = {
		"mia_1",
		"mia_2",
		"mia2_new"
	}
	self.enemy_melee_hit_achievements.cac_6.job = nil
	self.enemy_melee_hit_achievements.cac_6.level_id = "rvd2"
	self.enemy_melee_hit_achievements.cac_25.job = nil
	self.enemy_melee_hit_achievements.cac_25.level_id = "red2"
	self.fire_in_the_hole.grenade = {
		"frag",
		"frag_com",
		"concussion",
		"dada_com",
		"dynamite",
		"fir_com"
	}
	self.complete_heist_achievements.i_take_scores.jobs = nil
	self.complete_heist_achievements.i_take_scores.levels = {
		"arm_cro",
		"arm_und",
		"arm_hcm",
		"arm_par",
		"arm_fac"
	}
	self.complete_heist_achievements.eco_round.job = nil
	self.complete_heist_achievements.eco_round.level_id = "roberts"
	self.complete_heist_achievements.farm_1.job = nil
	self.complete_heist_achievements.farm_1.level_id = "dinner"
	self.complete_heist_achievements.hox_3_silent.job = nil
	self.complete_heist_achievements.hox_3_silent.level_id ="hox_3"
	self.complete_heist_achievements.modern_ninja.job = nil
	self.complete_heist_achievements.modern_ninja.level_id = "kosugi"
	self.complete_heist_achievements.green_2.job = nil
	self.complete_heist_achievements.green_2.level_id = "red2"
	self.complete_heist_achievements.jerry_5.job = nil
	self.complete_heist_achievements.jerry_5.level_id = "pbr2"
	self.complete_heist_achievements.cane_4.job = nil
	self.complete_heist_achievements.cane_4.level_id = "cane"
	self.complete_heist_achievements.orange_6.job = nil
	self.complete_heist_achievements.orange_6.level_id = "help"
	self.complete_heist_achievements.spa_4.job = nil
	self.complete_heist_achievements.spa_4.level_id = "spa"
	self.complete_heist_achievements.fish_4.job = nil
	self.complete_heist_achievements.fish_4.level_id = "fish"
	self.complete_heist_achievements.fish_5.job = nil
	self.complete_heist_achievements.fish_5.level_id = "fish"
	self.complete_heist_achievements.monthly_shadowraid.job = nil
	self.complete_heist_achievements.monthly_shadowraid.level_id = "kosugi"
	self.complete_heist_achievements.challenge_xmas_white.jobs = nil
	self.complete_heist_achievements.challenge_xmas_white.level_id = "pines"
	self.complete_heist_achievements.challenge_xmas_santas.jobs = nil
	self.complete_heist_achievements.challenge_xmas_santas.level_id = "cane"
	self.complete_heist_achievements.challenge_xmas_stealing.jobs = nil
	self.complete_heist_achievements.challenge_xmas_stealing.level_id = "moon"
	self.complete_heist_achievements.monthly_prison.job = nil
	self.complete_heist_achievements.monthly_prison.level_id = "help"
	self.complete_heist_achievements.trophy_escapes.levels = {
		"escape_cafe",
		"escape_cafe_day",
		"escape_park",
		"escape_park_day",
		"escape_street",
		"escape_overpass",
		"escape_overpass_night",
		"escape_garage"
	}
	self.complete_heist_achievements.trophy_car_shop.job = nil
	self.complete_heist_achievements.trophy_car_shop.level_id = "cage"
	self.complete_heist_achievements.trophy_bank_heists.jobs = nil
	self.complete_heist_achievements.trophy_bank_heists.level_id = "branchbank"
	self.complete_heist_achievements.trophy_carshop_stealth.job = nil
	self.complete_heist_achievements.trophy_carshop_stealth.level_id = "cage"
	self.complete_heist_achievements.trophy_piggy_bank.job = nil
	self.complete_heist_achievements.trophy_piggy_bank.level_id = "big"
	self.complete_heist_achievements.trophy_jfk.job = nil
	self.complete_heist_achievements.trophy_jfk.level_id = "man"
	self.complete_heist_achievements.trophy_fish_trophy.job = nil
	self.complete_heist_achievements.trophy_fish_trophy.level_id = "fish"
	self.complete_heist_achievements.daily_classics.jobs = nil
	self.complete_heist_achievements.daily_classics.levels = {
		"red2",
		"flat",
		"dinner",
		"pal",
		"man",
		"run",
		"glace",
		"dah"
	}
	self.complete_heist_achievements.daily_fwtd.job = nil
	self.complete_heist_achievements.daily_fwtd.level_id = "red2"
	self.complete_heist_achievements.daily_gears.jobs = nil
	self.complete_heist_achievements.daily_gears.levels = {
		"arm_cro",
		"arm_und",
		"arm_hcm",
		"arm_fac",
		"arm_par",
		"arm_for"
	}
	self.complete_heist_achievements.daily_naked.jobs = nil
	self.complete_heist_achievements.daily_naked.levels = {
		"pbr",
		"pbr2"
	}
	self.complete_heist_achievements.daily_ninja.equipped_outfit = {grenade = {
		"wpn_prj_ace",
		"wpn_prj_four",
		"wpn_prj_jav",
		"wpn_prj_hur",
		"wpn_prj_target",
		"chico_injector",
		"smoke_screen_grenade",
		"damage_control",
		"tag_team",
		"pocket_ecm_jammer"
	}}
	self.complete_heist_achievements.trophy_stealth.jobs = {
		"gallery",
		"nightclub",
		"ukrainian_job_prof",
		"four_stores",
		"jewelry_store",
		"family",
		"roberts",
		"branchbank_prof",
		"branchbank_gold_prof",
		"branchbank_cash",
		"branchbank_deposit",
		"arm_for",
		"election_day",
		"kosugi",
		"big",
		"hox_3",
		"arena",
		"red2",
		"crojob1",
		"firestarter",
		"kenaz",
		"mus",
		"framing_frame",
		"dark",
		"friend",
		"fish",
		"tag",
		"sah"
	}
	self.complete_heist_achievements.challenge_geneva.job = nil
	self.complete_heist_achievements.challenge_geneva.level_id = "red2"
	self.complete_heist_achievements.cac_5.job = nil
	self.complete_heist_achievements.cac_5.level_id = "kosugi"
	self.complete_heist_achievements.cac_23.job = nil
	self.complete_heist_achievements.cac_23.level_id = "man"
	self.complete_heist_achievements.cac_27.job = nil
	self.complete_heist_achievements.cac_27.level_id = "wwh"
	self.complete_heist_statistics_achievements.daily_professional.success = true
	self.loot_cash_achievements.cane_5.job = nil
	self.loot_cash_achievements.cane_5.level_id = "cane"
	self.loot_cash_achievements.pal_2.job = nil
	self.loot_cash_achievements.pal_2.level_id = "pal"
	self.loot_cash_achievements.trophy_tfturret.jobs = nil
	self.loot_cash_achievements.trophy_tfturret.level_id = "arm_for"
	self.loot_cash_achievements.daily_toast.jobs = nil
	self.loot_cash_achievements.daily_toast.level_id = "pines"
	self.loot_cash_achievements.daily_heirloom.jobs = nil
	self.loot_cash_achievements.daily_heirloom.level_id = "kosugi"
	self.loot_cash_achievements.trophy_coke.jobs = nil
	self.loot_cash_achievements.trophy_coke.level_id = "friend"
	self.four_mask_achievements.blight.jobs = nil
	self.four_mask_achievements.blight.level_id = "mus"
	self.four_mask_achievements.brb_10.job = nil
	self.four_mask_achievements.brb_10.level_id = "brb"
	self.loot_cash_achievements.dah_9.job = nil
	self.loot_cash_achievements.dah_9.level_id = "dah"
	self.four_mask_achievements.ghost_riders.masks = {
		"skullhard",
		"skullveryhard",
		"skulloverkill",
		"skulloverkillplus",
		"gitgud_e_wish",
		"gitgud_sm_wish",
		"dnm",
		"ggac_od_t2"
	}
end