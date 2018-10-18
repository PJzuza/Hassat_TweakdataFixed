local function on_ammo_pickup(unit, pickup_chance, increase)
	local gained_throwable = false
	local chance = pickup_chance

	if unit == managers.player:player_unit() then
		local random = math.random()

		if random < chance then
			gained_throwable = true

			managers.player:add_grenade_amount(1, true)
		else
			chance = chance + increase
		end
	end

	return gained_throwable, chance
end