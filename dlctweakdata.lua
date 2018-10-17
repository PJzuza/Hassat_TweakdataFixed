local init_original = DLCTweakData.init

function DLCTweakData:init(...)
	init_original(self, ...)
	
	self.starter_kit.content.upgrades = {
		"fists",
		"molotov",
		"frag",
		"dynamite",
		"clean",
		"corgi",
		"aziz"
	}
end