local init_original = BlackMarketTweakData._init_masks

function BlackMarketTweakData:_init_masks(...)
	init_original(self, ...)
	
	-- Animations: default, helmet, tiara, glasses, hat, beard.
	
	self.masks.starvr.type = "glasses"
	self.masks.shirai.type = "glasses"
	--self.masks.half_mask.type = "glasses" The model is held wrong :/
	self.masks.nyck_cap.type = "hat"
	self.masks.nyck_beret.type = ""
	self.masks.tng_bandana.type = "hat"
	self.masks.the_overkill_mask.type = "hat"
	self.masks.croupier_hat.type = "hat"
	self.masks.mad_goggles.type = "glasses"
	self.masks.grv_03.type = "helmet"
	self.masks.wmp_04.type = "hat"
	self.masks.wmp_03.type = "hat"
	self.masks.flm_01.type = "glasses"
	self.masks.flm_clover.type = "glasses"
	self.masks.flm_jacket.type = "glasses"
	self.masks.flm_sydney.type = "glasses"
	self.masks.flm_sokol.type = "glasses"
	self.masks.flm_ethan.type = "glasses"
	self.masks.flm.type = "glasses"
	self.masks.horned_king.type = ""
	self.masks.fdm.type = "hat"
	self.masks.pain.type = "glasses"
	self.masks.jfr_01.type = "hat"
	self.masks.jfr_02.type = "hat"
	--self.masks.jfr_04.type = "glasses" looks terrible
	---Holdout. 1 is hat, 4 combo. 2 is moustache, 3 is monocle.
	self.masks.skm_common_01.type = "hat"
	self.masks.skm_hila_01.type = "hat"
	self.masks.skm_01.type = "hat"
	--self.masks.skm_02.type = "beard"
	self.masks.skm_04_common.type = ""
	self.masks.skm_john_wick_04.type = ""
	self.masks.skm_jiro_04.type = ""
	self.masks.skm_jimmy_04.type = ""
	self.masks.skm_hila_04.type = ""
	self.masks.skm_rust_04.type = ""
	self.masks.skm_04.type = ""
	self.masks.smo_hila_02.type = "helmet"
	self.masks.sms_01.pcs = {}
	self.masks.sms_02.pcs = {}
	self.masks.sms_03.pcs = {}
	self.masks.sms_04.pcs = {}
	self.masks.sms_05.pcs = {}
	self.masks.sms_06.pcs = {}
	self.masks.sms_07.pcs = {}
	self.masks.sms_08.pcs = {}
	self.masks.invader.pcs = {}
	self.masks.satan.pcs = {}
	self.masks.jig_01.pcs = {}
	self.masks.jig_02.pcs = {}
	self.masks.damned.pcs = {}
	self.masks.brazil_baby.pcs = {}
	self.masks.baby_angry.pcs = {}
	self.masks.baby_cry.pcs = {}
	self.masks.baby_happy.pcs = {}
	self.masks.dallas_glow.pcs = {}
	self.masks.wolf_glow.pcs = {}
	self.masks.hoxton_glow.pcs = {}
	self.masks.chains_glow.pcs = {}
	self.masks.megacthulhu.pcs = {}
	self.masks.hunter.pcs = {}
	self.masks.cop_skull.pcs = {}
	self.masks.cop_plague_doctor.pcs = {}
	self.masks.cop_kawaii.pcs = {}
	self.masks.fab_mega_grin.pcs = {}
	self.masks.fab_mega_doctor.pcs = {}
	self.masks.fab_mega_alien.pcs = {}
	self.masks.cop_mega_gage_blade.pcs = {}
	self.masks.fab_mega_mark.pcs = {}
	self.masks.scm_01.pcs = {}
	self.masks.scm_02.pcs = {}
end