function event_signal(e)
	local qglobals = eq.get_qglobals();

	if(e.signal == 1) then -- azarack
		if(eq.get_entity_list():IsMobSpawnedByNpcTypeID(71111) == false and eq.get_entity_list():IsMobSpawnedByNpcTypeID(71031) == false) then
			eq.unique_spawn(71059,0,0,-386,-236,-317,201.5); -- NPC: Protector_of_Sky
		end
	end
	if(e.signal == 2) then
		if(qglobals["keeper"] == nil) then
			-- eq.set_timer("13",300000); what is this referred to?
			eq.set_global("keeper","1",3,"H4");
			-- supposed to be 60-85 minute timer
			eq.set_timer("soul",math.random(1920000) + 2880000);
		end
	end
end

function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Hello there, brave traveller. I sell keys that take you to other islands in this here Plane of Sky. My prices are the best around. Heh, heh.");
	elseif(e.message:findi("what.* key")) then
		e.self:Say("The keys? Heh, heh... Well, let's just say between you and me, them there faeries ain't much of the fightin' type. At least they ain't as strong as lotsa other stuff that's up on these here islands that we be standin' on now.");
	end
end

function event_timer(e)
	if(e.timer == "soul") then
		eq.unique_spawn(71075,0,0,-1484,720,146,8.0); -- NPC: Keeper_of_Souls
		eq.stop_timer("soul");
	end
end

-- END of FILE Zone:airplane  ID:2977 -- Key_Master
