local init_original = AssetsTweakData._init_gage_assets
local init_original2 = AssetsTweakData._init_risk_assets
--local init_original3 = AssetsTweakData._init_assets

function AssetsTweakData:_init_gage_assets(...)
	init_original(self, ...)
	
	self.gage_assignment.exclude_stages = {
		"safehouse",
		"chill",
		"chill_combat",
		"haunted",
		"crojob1",
		"short1_stage1",
		"short1_stage2",
		"short2_stage1",
		"short2_stage2b",
		"hvh"
	}
end

function AssetsTweakData:_init_risk_assets(...)
	init_original2(self, ...)
	
	self.risk_pd.exclude_stages = {
		"safehouse",
		"chill",
		"crojob1",
		"haunted",
		"cage",
		"kosugi",
		"dark",
		"mad",
		"fish",
		"hvh",
		"tag",
		"bph",
		"vit",
		"bex"
	}
	self.risk_swat.exclude_stages = {
		"safehouse",
		"chill",
		"crojob1",
		"haunted",
		"cage",
		"kosugi",
		"dark",
		"mad",
		"fish",
		"hvh",
		"tag",
		"bph",
		"vit",
		"bex"
	}
	self.risk_fbi.exclude_stages = {
		"safehouse",
		"chill",
		"crojob1",
		"haunted",
		"cage",
		"kosugi",
		"dark",
		"mad",
		"fish",
		"hvh",
		"tag",
		"bph",
		"vit",
		"bex"
	}
	self.risk_death_squad.exclude_stages = {
		"safehouse",
		"chill",
		"crojob1",
		"haunted",
		"cage",
		"kosugi",
		"dark",
		"mad",
		"fish",
		"hvh",
		"tag",
		"bph",
		"vit",
		"bex"
	}
	self.risk_easy_wish.exclude_stages = {
		"safehouse",
		"chill",
		"crojob1",
		"haunted",
		"cage",
		"kosugi",
		"dark",
		"mad",
		"fish",
		"hvh",
		"tag",
		"bph",
		"vit",
		"bex"
	}
	self.risk_death_wish.exclude_stages = {
		"safehouse",
		"chill",
		"crojob1",
		"haunted",
		"cage",
		"kosugi",
		"dark",
		"mad",
		"fish",
		"hvh",
		"tag",
		"bph",
		"vit",
		"bex"
	}
	self.risk_sm_wish.exclude_stages = {
		"safehouse",
		"chill",
		"crojob1",
		"haunted",
		"cage",
		"kosugi",
		"dark",
		"mad",
		"fish",
		"hvh",
		"tag",
		"bph",
		"vit",
		"bex"
	}
end
	
--function AssetsTweakData:_init_assets(...)
--	init_original3(self, ...)
--
--	self.mad_cyborg_test_subject = {
--		name_id = "menu_asset_mad_cyborg_test_subject",
--		texture = "guis/dlcs/mad/textures/pd2/mission_briefing/assets/mad_cyborg_test_subject",
--		stages = {"mad"}
--	}
--end