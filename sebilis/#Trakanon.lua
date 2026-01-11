function event_spawn(e)
	eq.set_timer("depop",3600000);
	eq.discord_send("Spawn Notices", "".. e.self:GetCleanName() .." has spawned");
end

function event_combat(e)
	eq.discord_send("Spawn Notices", "".. e.self:GetCleanName() .." has engaged");
end

function event_death_complete(e)
	eq.discord_send("Spawn Notices", "".. e.self:GetCleanName() .." has been defeated");
end

function event_timer(e)
	eq.depop();
end
