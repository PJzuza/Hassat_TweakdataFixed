function BlackMarketManager:get_silencer_concealment_modifiers(weapon)
	local factory_id = weapon.factory_id
	local blueprint = weapon.blueprint
	local weapon_id = weapon.weapon_id or managers.weapon_factory:get_weapon_id_by_factory_id(factory_id)
	local base_stats = tweak_data.weapon[weapon_id].stats
	local bonus = 0
	if not base_stats or not base_stats.concealment then
		return 0
	end
	local silencer = managers.weapon_factory:has_perk("silencer", weapon.factory_id, blueprint)
	if silencer and managers.player:has_category_upgrade("player", "silencer_concealment_increase") then
		bonus = managers.player:upgrade_value("player", "silencer_concealment_increase", 0)
	end
	if silencer and managers.player:has_category_upgrade("player", "silencer_concealment_penalty_decrease") then
		local stats = managers.weapon_factory:get_perk_stats("silencer", factory_id, blueprint)
		if stats and stats.concealment and stats.concealment < 0 then
			bonus = bonus + math.min(managers.player:upgrade_value("player", "silencer_concealment_penalty_decrease", 0), math.abs(stats.concealment))
		end
	end
	return bonus
end