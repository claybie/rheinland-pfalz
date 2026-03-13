-----------------------------------
-- Disable Treasure Casket spawning on mob death.
-- Caskets were introduced in the WotG era (post-2007).
-- This server targets pre-2008 retail, so caskets should not drop.
-- NOTE: This only suppresses the mob-death spawn; existing casket
-- chest interactions (onTrigger / onTrade / onEventFinish) are unaffected.
-----------------------------------
require('modules/module_utils')
require('scripts/globals/caskets')
-----------------------------------
local m = Module:new('wotg_disable_casket_spawn')

m:addOverride('xi.caskets.spawnCasket', function(player, mob, x, y, z, r)
    -- Do nothing: caskets do not spawn on mob death on this server.
end)

return m
