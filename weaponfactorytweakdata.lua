local init_original = WeaponFactoryTweakData._init_x_schakal

function WeaponFactoryTweakData:_init_x_schakal(...)
	init_original(self, ...)

	self.wpn_fps_smg_x_schakal.override = {
		wpn_fps_smg_schakal_m_short = {stats = {
			extra_ammo = -10,
			value = 1,
			concealment = 2
		}},
		wpn_fps_smg_schakal_m_long = {stats = {
			extra_ammo = 20,
			value = 1,
			concealment = -2
		}}
	}
end