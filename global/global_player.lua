function event_discover_item(e)
    -- Player-event_discover_item
    -- Exported event variables
    eq.debug("You've discovered a new item!" .. e.item:Name());
--    e.self:Message(15, "" .. e.self:GetCleanName() .. " has discovered " .. e.item:Name() .. "!" );
    eq.world_emote(15, "" .. e.self:GetCleanName() .. " has discovered a new item: " .. eq.item_link(e.item:ID()) .. "!" );
end
