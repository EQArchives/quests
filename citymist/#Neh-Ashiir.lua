function event_trade(e)
	local item_lib = require("items");

	if(e.other:GetFactionValue(e.self) >= 800 and item_lib.check_turn_in(e.self, e.trade, {item1 = 1681})) then
		e.self:Say("Nothing is left to hide now. You shall have the truth. But truth is not won easily and if you cannot defeat me, you have not the ability to see that vengeance is served. Brace yourself!");
		e.other:Faction(e.self,404,100); -- Faction: True Spirit
		e.other:QuestReward(e.self,0,0,0,0,0,5000);
		eq.spawn2(90012,0,0,e.self:GetX(),e.self:GetY(),e.self:GetZ(),e.self:GetHeading());
		eq.depop()
	end
	local returned = item_lib.return_items(e.self, e.other, e.trade, false)
	if ( returned ) then
		e.self:Say("You need to prove your dedication to our cause before I can discuss such matters with you.");
	end
end
