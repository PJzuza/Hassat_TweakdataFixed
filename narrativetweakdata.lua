local init_original = NarrativeTweakData.init

function NarrativeTweakData:init(...)
	init_original(self, ...)
	
	self.jobs.jolly.debrief_event = "Play_vld_as1_17"
	self.jobs.kenaz.crimenet_videos = {
		"cn_big1",
		"cn_big2",
		"cn_big3"
	}
	self.jobs.mus.crimenet_videos = {
		"cn_big1",
		"cn_big2",
		"cn_big3"
	}
	self.jobs.crojob_wrapper.crimenet_videos = {
		"cn_cro1",
		"cn_cro2",
		"cn_cro3"
	}
	self.jobs.chill.ignore_heat = true
	self.jobs.chill.crimenet_callouts = nil
	self.jobs.chill.briefing_event = nil
	self.jobs.chill.payout = nil
	self.jobs.skm_mus.crimenet_callouts = nil
	self.jobs.skm_red2.crimenet_callouts = nil
	self.jobs.skm_run.crimenet_callouts = nil
	self.jobs.skm_watchdogs_stage2.crimenet_callouts = nil
	self.jobs.chill_combat.contract_visuals = {}
	self.jobs.chill_combat.contract_visuals.min_mission_xp = {
		42000,
		42000,
		42000,
		42000,
		42000,
		42000,
		42000
	}
	self.jobs.chill_combat.contract_visuals.max_mission_xp = {
		42000,
		42000,
		42000,
		42000,
		42000,
		42000,
		42000
	}
	self.jobs.rat.contract_visuals.min_mission_xp = {
		24000,
		24000,
		24000,
		24000,
		24000,
		24000,
		24000
	}
	self.jobs.roberts.contract_visuals.min_mission_xp = {
		11000,
		11000,
		11000,
		11000,
		11000,
		11000,
		11000
	}
	self.jobs.family.contract_visuals.min_mission_xp = {
		6000,
		8000,
		12000,
		16000,
		16000,
		16000,
		16000
	}
	self.jobs.kosugi.contract_visuals.min_mission_xp = {
		5500,
		6500,
		7500,
		8500,
		10000,
		10000,
		10000
	}
	self.jobs.arena.contract_visuals.min_mission_xp = {
		23500,
		34000,
		34000,
		37800,
		41400,
		41400,
		41400
	}
	self.jobs.arena.contract_visuals.max_mission_xp = {
		28000,
		43000,
		43000,
		60000,
		60000,
		60000,
		60000
	}
	self.jobs.arm_for.contract_visuals.min_mission_xp = {
		20200,
		20200,
		23400,
		29600,
		36000,
		36000,
		36000
	}
	self.jobs.red2.contract_visuals.max_mission_xp = {
		34000,
		34000,
		34000,
		34000,
		34000,
		84100,
		84100
	}
	self.jobs.flat.contract_visuals.min_mission_xp = {
		25000,
		25000,
		25000,
		25000,
		25000,
		25000,
		25000
	}
	self.jobs.dinner.contract_visuals.min_mission_xp = {
		34000,
		36000,
		36000,
		36800,
		38400,
		38400,
		38400
	}
	self.jobs.gallery.contract_visuals.max_mission_xp = {
		12500,
		12500,
		12500,
		12500,
		12500,
		12500,
		12500
	}
	self.jobs.alex.contract_visuals.min_mission_xp = {
		18000,
		18000,
		18000,
		18000,
		18000,
		18000,
		18000
	}
	self.jobs.watchdogs_wrapper.contract_visuals.min_mission_xp = {
		25500,
		25500,
		25500,
		25500,
		25500,
		25500,
		25500
	}
	self.jobs.watchdogs_wrapper.contract_visuals.max_mission_xp = {
		47500,
		47500,
		47500,
		47500,
		47500,
		47500,
		47500
	}
	self.jobs.dark.contract_visuals.max_mission_xp = {
		34000,
		34000,
		34000,
		34000,
		34000,
		34000,
		34000
	}
	self.jobs.pbr.contract_visuals.max_mission_xp = {
		30000,
		30000,
		30000,
		30000,
		30000,
		30000,
		30000
	}
	self.jobs.run.contract_visuals.max_mission_xp = {
		26000,
		26000,
		26000,
		26000,
		26000,
		26000,
		26000
	}
	self.jobs.crojob1.contract_visuals.max_mission_xp = {
		31000,
		31000,
		31000,
		31000,
		33000,
		33000,
		33000
	}
	self.jobs.friend.contract_visuals.min_mission_xp = {
		23000,
		23000,
		23000,
		24000,
		24000,
		24000,
		24000
	}
	self.jobs.friend.contract_visuals.max_mission_xp = {
		32000,
		32000,
		32000,
		32000,
		32000,
		32000,
		32000
	}
	self.jobs.fish.contract_visuals.max_mission_xp = {
		12000,
		12000,
		12000,
		12000,
		12000,
		12000,
		12000
	}
	self.jobs.mia.contract_visuals.max_mission_xp = {
		74000,
		73000,
		73000,
		72000,
		71000,
		71000,
		71000
	}
	self.jobs.hox.contract_visuals.min_mission_xp = {
		52000,
		52000,
		52000,
		52000,
		52000,
		52000,
		52000
	} 
	self.jobs.hox.contract_visuals.max_mission_xp = {
		56600,
		56600,
		56600,
		56600,
		56600,
		56600,
		56600
	}
	self.jobs.hox_3.contract_visuals.min_mission_xp = {
		20000,
		20000,
		21000,
		22000,
		22000,
		22000,
		22000
	}
	self.jobs.big.contract_visuals.max_mission_xp = {
		55000,
		55000,
		55000,
		55000,
		55000,
		55000,
		55000
	}
	self.jobs.mus.contract_visuals.min_mission_xp = {
		14000,
		14000,
		14000,
		14000,
		14000,
		14000,
		14000
	}
	self.jobs.mus.contract_visuals.max_mission_xp = {
		54000,
		54000,
		54000,
		54000,
		54000,
		54000,
		54000
	}
	self.jobs.framing_frame.contract_visuals.min_mission_xp = {
		17500,
		17500,
		17500,
		17500,
		17500,
		17500,
		17500
	}
	self.jobs.framing_frame.contract_visuals.max_mission_xp = {
		52500,
		52500,
		52500,
		52500,
		52500,
		52500,
		52500
	}
	self.jobs.born.contract_visuals.min_mission_xp = {
		32000,
		32000,
		32000,
		32000,
		32000,
		32000,
		32000
	}
	self.jobs.born.contract_visuals.max_mission_xp = {
		51500,
		51500,
		51500,
		51500,
		51500,
		51500,
		51500
	}
	self.jobs.jolly.contract_visuals.min_mission_xp = {
		30000,
		31000,
		32000,
		33000,
		34000,
		34000,
		34000
	}
	self.jobs.jolly.contract_visuals.max_mission_xp = {
		30000,
		31000,
		32000,
		33000,
		34000,
		34000,
		34000
	}
	self.jobs.peta.contract_visuals.min_mission_xp = {
		42500,
		46500,
		52500,
		58500,
		62500,
		62500,
		62500
	}
	self.jobs.peta.contract_visuals.max_mission_xp = {
		46500,
		52500,
		61500,
		120500,
		126500,
		126500,
		126500
	}
	self.jobs.cane.contract_visuals.min_mission_xp = {
		12000,
		12000,
		12000,
		12000,
		12000,
		12000,
		12000
	}
	self.jobs.cane.contract_visuals.max_mission_xp = {
		7220000,
		7220000,
		7220000,
		7220000,
		7220000,
		7220000,
		7220000
	}
	self.jobs.moon.contract_visuals.max_mission_xp = {
		26800,
		26800,
		26800,
		26800,
		26800,
		26800,
		26800
	}
	self.jobs.hvh.contract_visuals.max_mission_xp = {
		82000,
		82000,
		82000,
		82000,
		82000,
		82000,
		82000
	}
	self.jobs.dah.contract_visuals.min_mission_xp = {
		10600,
		10600,
		11400,
		12200,
		12200,
		12200,
		12200
	}
	self.jobs.dah.contract_visuals.max_mission_xp = {
		21200,
		21200,
		21200,
		23200,
		23200,
		23200,
		23200
	}
	self.jobs.brb.contract_visuals.min_mission_xp = {
		16000,
		16000,
		16000,
		16000,
		16000,
		16000,
		16000
	}
	self.jobs.brb.contract_visuals.max_mission_xp = {
		20800,
		20800,
		20800,
		25600,
		25600,
		25600,
		25600
	}
	self.jobs.rvd.contract_visuals.min_mission_xp = {
		33500,
		33500,
		33500,
		33500,
		33500,
		33500,
		33500
	}
	self.jobs.rvd.contract_visuals.max_mission_xp = {
		52500,
		52500,
		52500,
		52500,
		52500,
		52500,
		52500
	}
	self.jobs.des.contract_visuals.min_mission_xp = {
		26000,
		26000,
		26000,
		26000,
		26000,
		26000,
		26000
	}
	self.jobs.des.contract_visuals.max_mission_xp = {
		46000,
		46000,
		46000,
		46000,
		46000,
		46000,
		46000
	}
	self.jobs.tag.contract_visuals.max_mission_xp = {
		31000,
		31000,
		31000,
		31000,
		31000,
		31000,
		31000
	}
	self.jobs.sah.contract_visuals.min_mission_xp = {
		15000,
		15000,
		15000,
		15000,
		15000,
		15000,
		15000
	}
	self.jobs.sah.contract_visuals.max_mission_xp = {
		26000,
		26000,
		26000,
		26000,
		26000,
		26000,
		26000
	}
end