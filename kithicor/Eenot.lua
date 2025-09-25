function event_spawn(e)
	e.self:AI_SetRoambox(1000,4670,466,900,-817,5000);
	eq.set_timer("depop",2700000);
end

function event_timer(e)
	eq.depop();
end

function event_combat(e)
	if(e.joined) then
		if(not eq.is_paused_timer("depop")) then
			eq.pause_timer("depop");
		end
	else
		eq.resume_timer("depop");
	end
end
