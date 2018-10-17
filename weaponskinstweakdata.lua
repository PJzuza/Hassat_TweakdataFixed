local init_original = BlackMarketTweakData._init_weapon_skins

function BlackMarketTweakData:_init_weapon_skins(...)
	init_original(self, ...)
	
	self.weapon_skins.mac10_cs4.default_blueprint = nil
	self.weapon_skins.serbu_cs4.default_blueprint = nil
	self.weapon_skins.m16_cs4.default_blueprint = nil
	self.weapon_skins.l85a2_cs4.default_blueprint = nil
	self.weapon_skins.new_m4_skf.default_blueprint = nil
	self.weapon_skins.amcar_skf.default_blueprint = nil
	self.weapon_skins.ppk_skf.default_blueprint = nil
	self.weapon_skins.aug_skf.default_blueprint = nil
	self.weapon_skins.lemming_skf.default_blueprint = nil
	self.weapon_skins.g26_skf.default_blueprint = nil
	self.weapon_skins.ching_skf.default_blueprint = nil
	self.weapon_skins.ray_skf.default_blueprint = nil
	self.weapon_skins.ak5_skf.default_blueprint = nil
	self.weapon_skins.g26_css.default_blueprint = nil
    self.weapon_skins.ppk_css.default_blueprint = nil
	self.weapon_skins.serbu_cat.default_blueprint = nil
end