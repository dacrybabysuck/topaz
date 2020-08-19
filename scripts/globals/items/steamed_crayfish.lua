-----------------------------------------
-- ID: 4338
-- Item: steamed_crayfish
-- Food Effect: 60Min, All Races
-----------------------------------------
-- Defense % 30
-- Defense Cap 30
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------------

function onItemCheck(target)
    local result = 0
    if target:hasStatusEffect(tpz.effect.FOOD) or target:hasStatusEffect(tpz.effect.FIELD_SUPPORT_FOOD) then
        result = tpz.msg.basic.IS_FULL
    end
    return result
end

function onItemUse(target)
    target:addStatusEffect(tpz.effect.FOOD, 0, 0, 3600, 4338)
end

function onEffectGain(target, effect)
    target:addMod(tpz.mod.FOOD_DEFP, 30)
    target:addMod(tpz.mod.FOOD_DEF_CAP, 30)
end

function onEffectLose(target, effect)
    target:delMod(tpz.mod.FOOD_DEFP, 30)
    target:delMod(tpz.mod.FOOD_DEF_CAP, 30)
end
