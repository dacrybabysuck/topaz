-----------------------------------
--
--   tpz.effect.SIGNET
--
--   Signet is a a beneficial Status Effect that allows the acquisition of Conquest Points and Crystals
--   from defeated enemies that grant Experience Points.

--   Increased Healing HP
--   No TP loss while resting
--   Bonus experience earned in smaller parties
--   Increased defense and evasion against attacks from your auto-attack target when even match or lower
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onEffectGain(target,effect)
    target:addLatent(tpz.latent.SIGNET_BONUS, 0, tpz.mod.DEF, 15)
    target:addLatent(tpz.latent.SIGNET_BONUS, 0, tpz.mod.EVA, 15)

    local power = getPower(target)
    target:setCharVar("SIGNET_REGEN_BONUS", power[1]);
    target:setCharVar("SIGNET_REFRESH_BONUS", power[2]);

    target:addMod(tpz.mod.REGEN, power[1])
    target:addMod(tpz.mod.REFRESH, power[2])

    target:PrintToPlayer(target:getMod(tpz.mod.REGEN))
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    target:delLatent(tpz.latent.SIGNET_BONUS, 0, tpz.mod.DEF, 15)
    target:delLatent(tpz.latent.SIGNET_BONUS, 0, tpz.mod.EVA, 15)

    local regen_power = target:getCharVar("SIGNET_REGEN_BONUS");
    local refresh_power = target:getCharVar("SIGNET_REFRESH_BONUS");

    target:delMod(tpz.mod.REGEN, regen_power)
    target:delMod(tpz.mod.REFRESH, refresh_power)

end

function getPower(target)

    local player_rank = target:getRank()
    local regen_power = 0
    local refresh_power = 0
    
    if player_rank == 10 then
        regen_power = 5
        refresh_power = 5
    elseif player_rank >= 7 then
        regen_power = 4
        refresh_power = 4
    elseif player_rank >= 5 then
        regen_power = 3
        refresh_power = 3
    elseif player_rank >= 3 then
        regen_power = 2
        refresh_power = 2
    else--if player_rank == 2 then
        regen_power = 1
        refresh_power = 1
    end
    
    return {regen_power, refresh_power}

end
