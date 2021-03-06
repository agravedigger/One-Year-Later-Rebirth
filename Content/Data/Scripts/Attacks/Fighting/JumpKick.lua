SetAttackBaseDamage(26, 100)
SetAttackMaxPP(26, 10)
SetAttackCategory(26, Attacks_GetCategoryIndexByName("physical"))
SetAttackContestCategory(26, Attacks_GetContestCategoryIndexByName("cool"))
SetAttackAttackCategory(26, Attacks_GetAttackCategoryIndexByName("damage"))
SetAttackType(26, Attacks_GetTypeIndexByName("fighting"))
SetAttackPriority(26, 0)
SetAttackAccuracy(26,242)
SetAttackMissedDelegate(26, "ATTACKS_FIGHTING_JUMP_KICK_MISSED")

function ATTACKS_FIGHTING_JUMP_KICK_MISSED()
    local recoil = math.floor(Attacks_MyHP / 2)
    Attacks_AddBattleStep("DrainHP", Attacks_TargetString .. "|" .. tostring(recoil))
    Attacks_AddBattleStep("Message", Attacks_MyName .. " is damaged~by recoil!")
end