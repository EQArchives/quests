function event_spawn(e)
	eq.set_timer("emote",math.random(240000,360000));
end

function event_timer(e)
	eq.set_timer("emote",math.random(240000,360000));
	e.self:Emote("obviously has seen a great deal of traffic");
end
