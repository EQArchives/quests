function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("I have no time to waste with strangers!");
	end
end

function event_waypoint_arrive(e)
	if(e.wp == 1 or e.wp == 6) then
		e.self:SetRunning(true);
	elseif(e.wp == 4 or e.wp == 7) then
		e.self:SetRunning(false);
	end
end
