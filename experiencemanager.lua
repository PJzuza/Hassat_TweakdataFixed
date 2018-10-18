function ExperienceManager:get_contract_xp_by_stars(job_id, job_stars, risk_stars, professional, job_days, extra_params)
	local debug_player_level = extra_params and extra_params.debug_player_level
	local ignore_heat = extra_params and extra_params.ignore_heat
	local mission_xp = extra_params and extra_params.mission_xp
	local debug_print = extra_params and extra_params.debug_print
	local job_and_difficulty_stars = job_stars + risk_stars
	local job_stars = job_stars
	local difficulty_stars = risk_stars
	local player_stars = debug_player_level and math.max(math.ceil(debug_player_level / 10), 1) or managers.experience:level_to_stars()
	local job_tweak_chains = tweak_data.narrative:job_chain(job_id)
	local params = {
		job_id = job_id,
		job_stars = job_stars,
		difficulty_stars = difficulty_stars,
		professional = professional,
		success = true,
		num_winners = 1,
		on_last_stage = true,
		player_stars = player_stars,
		personal_win = true,
		ignore_heat = ignore_heat,
		mission_xp = mission_xp
	}
	local total_base_xp = 0
	local total_risk_xp = 0
	local total_heat_base_xp = 0
	local total_heat_risk_xp = 0
	local total_ghost_base_xp = 0
	local total_ghost_risk_xp = 0
	local total_skill_base_xp = 0
	local total_skill_risk_xp = 0
	local total_infamy_base_xp = 0
	local total_infamy_risk_xp = 0
	local total_extra_base_xp = 0
	local total_extra_risk_xp = 0
	local total_xp = 0

	local function make_fine_number(v)
		return math.round(v)
	end

	local risk_ratio, base_exp, risk_exp, skill_base, skill_risk, heat_base, heat_risk, ghost_base, ghost_risk, infamy_base, infamy_risk, extra_base, extra_risk = nil

	params.level_id = job_tweak_chains and job_tweak_chains[i] and job_tweak_chains[i].level_id
	local total_xp, dissection_table = self:get_xp_by_params(params)

	if debug_print then
		print("Total XP", total_xp, inspect(dissection_table))
	end

	base_exp = dissection_table.base
	risk_exp = dissection_table.bonus_risk
	total_base_xp = total_base_xp + base_exp
	total_risk_xp = total_risk_xp + risk_exp
	risk_ratio = risk_exp / math.max(base_exp + risk_exp, 1)
	heat_risk = make_fine_number(dissection_table.heat_xp * risk_ratio)
	heat_base = dissection_table.heat_xp - heat_risk
	ghost_risk = make_fine_number(dissection_table.bonus_ghost * risk_ratio)
	ghost_base = dissection_table.bonus_ghost - ghost_risk
	skill_risk = make_fine_number(dissection_table.bonus_skill * risk_ratio)
	skill_base = dissection_table.bonus_skill - skill_risk
	infamy_risk = make_fine_number(dissection_table.bonus_infamy * risk_ratio)
	infamy_base = dissection_table.bonus_infamy - infamy_risk
	extra_risk = make_fine_number(dissection_table.bonus_extra * risk_ratio)
	extra_base = dissection_table.bonus_extra - extra_risk
	total_heat_base_xp = total_heat_base_xp + heat_base
	total_heat_risk_xp = total_heat_risk_xp + heat_risk
	total_ghost_base_xp = total_ghost_base_xp + ghost_base
	total_ghost_risk_xp = total_ghost_risk_xp + ghost_risk
	total_skill_base_xp = total_skill_base_xp + skill_base
	total_skill_risk_xp = total_skill_risk_xp + skill_risk
	total_infamy_base_xp = total_infamy_base_xp + infamy_base
	total_infamy_risk_xp = total_infamy_risk_xp + infamy_risk
	total_extra_base_xp = total_extra_base_xp + extra_base
	total_extra_risk_xp = total_extra_risk_xp + extra_risk
	total_base_xp = total_base_xp + skill_base + infamy_base + extra_base
	total_risk_xp = total_risk_xp + skill_risk + infamy_risk + extra_risk

	local dissected_xp = {
		total_base_xp,
		total_risk_xp,
		total_heat_base_xp,
		total_heat_risk_xp,
		total_ghost_base_xp,
		total_ghost_risk_xp
	}

	for i, xp in ipairs(dissected_xp) do
		total_xp = total_xp + xp
	end

	return total_xp, dissected_xp
end