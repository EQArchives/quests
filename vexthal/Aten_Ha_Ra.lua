local WARDER_TYPES = { 158418, 158409, 158405, 158399, 158393 };

local checks = 0;

function IsWarderUp()
	for _, id in ipairs(WARDER_TYPES) do
		if ( eq.get_entity_list():IsMobSpawnedByNpcTypeID(id) ) then
			return true;
		end
	end
	return false;
end

function Warp(mob)
	mob:GMMove(1412, 0, 245.5, 195.8);
	mob:BuffFadeAll();
	mob:WipeHateList();
	checks = 0;
end

function event_timer(e)

	if ( e.self:GetZ() < 229 or e.self:GetZ() > 260 ) then
		Warp(e.self);
		return;
	end
	
	if ( e.self:IsEngaged() ) then
	
		if ( IsWarderUp() and e.self:GetTarget().valid and e.self:GetTarget():IsClient() and not e.self:GetTarget():CastToClient():GetGM() ) then
			e.self:CastSpell(2859, e.self:GetTarget():GetID()); -- Touch of Vinitras
			return;
		end
	
		-- Warp if Aten fails LoS checks with tank target she is meleeing
		-- Aten can be pulled into a pillar, or tanked through the wall
		if ( e.self:GetTarget():IsWarriorClass() and e.self:CombatRange(e.self:GetTarget())	and not e.self:CheckLoS(e.self:GetTarget())	) then
		
			checks = checks + 1;
			if ( checks > 3 ) then
				Warp(e.self);
			end
		else
			checks = 0;
		end
	end
end

function event_spawn(e)
	eq.set_timer("sploitcheck", 5000);
	eq.discord_send("Spawn Notices", "".. e.self:GetCleanName() .." has spawned");
end

function event_combat(e)
	eq.discord_send("Spawn Notices", "".. e.self:GetCleanName() .." has engaged");
end

function event_death_complete(e)
	eq.discord_send("Spawn Notices", "".. e.self:GetCleanName() .." has been defeated");
    local killer = e.self:GetHateTop()

    if not killer then
        eq.world_wide_message(335, 15, "Aten Ha Ra has been slain!")
        return
    end

    local client = nil
    local pet_kill = false

    if killer:IsClient() then
        client = killer:CastToClient()
    elseif killer:IsPet() and killer:GetOwner() and killer:GetOwner():IsClient() then
        client = killer:GetOwner():CastToClient()
        pet_kill = true
    end

    if not client then
        eq.world_wide_message(335, 15, "Aten Ha Ra has been slain!")
        return
    end

    local player_name = client:GetCleanName()
    local guild_name = client:GuildName()
    local message

    if guild_name and guild_name ~= "" then
        if pet_kill then
            message = player_name .. " of " .. guild_name .. " has struck down Aten Ha Ra!"
        else
            message = player_name .. " of " .. guild_name .. " has delivered the killing blow to Aten Ha Ra!"
        end
    else
        message = player_name .. " has slain Emperor Aten Ha Ra!"
    end

    eq.world_wide_message(335, 15, message)
end
