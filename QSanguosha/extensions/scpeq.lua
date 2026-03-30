-- Reference: https://www.kancloud.cn/light_crashock/qsanguosha_exgeneral/2656676

-- Register extentsion
extension = sgs.Package("scpeq", sgs.Package_GeneralPack)

-- Generals & Skills
-- General: Dr. Picsell Dois
scpeqDrPicsellDois = sgs.General(extension, "scpeqDrPicsellDois", "qun", 5, true, false, false)
-- General: Dr. Picsell Dois - Skills
-- Skill 1: Lock HP & Max HP, avoid lossing skills or acquiring unwanted skills
scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect = sgs.CreateTriggerSkill{
    name = "scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect",
    frequency = sgs.Skill_Compulsory,
    events = {sgs.HpLost, sgs.HpChanged, sgs.MaxHpChanged, sgs.Damaged, sgs.TargetConfirming, sgs.Dying, sgs.Death, sgs.GameOverJudge, sgs.GameFinished, sgs.TurnedOver,
              sgs.EventLoseSkill, sgs.EventAcquireSkill, sgs.TurnStart, sgs.EventPhaseStart, sgs.EventPhaseEnd, sgs.EventPhaseChanging},
    on_trigger = function(self, event, player, data)
        local room = player:getRoom()
        
        if player:hasSkill(self:objectName()) then
            -- Lock Max HP
            local iMaxHP = 5
            if player:getMaxHp() < iMaxHP then
                room:changePlayerMaxHp(player, 5-player:getMaxHp(), self:objectName())
            end
            --room:setPlayerPropery(player, "maxhp", iMaxHP)
            --player:setMaxHp(iMaxHP)
            
            -- Lock HP
            --player:setHp(iMaxHP)
            local recRecover = sgs.RecoverStruct()
            recRecover.recover = iMaxHP * 5
            recRecover.who = player
            room:recover(player, recRecover)
            
            -- Avoid being turned over
            if not player:faceUp() then
                player:setFaceUp(true)
            end
        
            -- Avoid acquiring unwanted skills
            if event == sgs.EventAcquireSkill then
                if  data:toString() ~= "scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect" and
                    data:toString() ~= "#scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect_Hidden1" and
                    data:toString() ~= "scpeqDrPicsellDois_Skill_UpperLayerNarrator_PhaseProtect" and
                    data:toString() ~= "scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawMore" and
                    data:toString() ~= "#scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawMore_Hidden1" and
                    data:toString() ~= "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage" and
                    data:toString() ~= "scpeqDrPicsellDois_Skill_UpperLayerNarrator_PegasusSlashes" and
                    data:toString() ~= "#scpeqDrPicsellDois_Skill_UpperLayerNarrator_PegasusSlashes_Hidden1" and
                    data:toString() ~= "#scpeqDrPicsellDois_Skill_UpperLayerNarrator_PegasusSlashes_Hidden2" then
                    
                    local sResult = room:askForChoice(player, data:toString(), "scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect_AcquiringSkill_OptAcquire+scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect_AcquiringSkill_OptDetach")
                    if sResult == "scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect_AcquiringSkill_OptDetach" then
                        room:detachSkillFromPlayer(player, data:toString())
                    end
                end
            end
            
            -- Card nullification
            if event == sgs.TargetConfirming then
                local use = data:toCardUse()
                if not (use.from:objectName() == player:objectName() and (use.to:contains(player) and use.to:length() == 1)) then
                    if room:askForSkillInvoke(player, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect_Nullification", data) then
                        local nullified_list = use.nullified_list
                        table.insert(nullified_list, player:objectName())
                        use.nullified_list = nullified_list
                        data:setValue(use)
                    end
                end
            end
            
            -- Revive when dead
            if not player:isAlive() then
                if room:askForSkillInvoke(player, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect_Reviving", data) then
                    room:revivePlayer(player)
                    player:setAlive(true)
                    room:drawCards(player, 5, self:objectName())
                end
            end
        end
    end,
    can_trigger = function(self, target)
        -- Default can_trigger is (target:hasSkill(self:objectName()) and target:isAlive())
        return true
    end,
}
scpeqDrPicsellDois:addSkill(scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect)
scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect_Hidden1 = sgs.CreateTriggerSkill{
    name = "#scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect_Hidden1",
    frequency = sgs.Skill_Compulsory,
    events = {sgs.HpLost, sgs.HpChanged, sgs.MaxHpChanged, sgs.Damaged, sgs.Dying, sgs.Death, 
              sgs.EventLoseSkill, sgs.EventAcquireSkill, sgs.TurnStart, sgs.EventPhaseEnd},
    on_trigger = function(self, event, player, data)
        local room = player:getRoom()
        
        -- Avoid lossing skills
        if event == sgs.EventLoseSkill then
            if  data:toString() == "scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect" or
                data:toString() == "#scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect_Hidden1" or
                data:toString() == "scpeqDrPicsellDois_Skill_UpperLayerNarrator_PhaseProtect" or
                data:toString() == "scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawMore" or
                data:toString() == "#scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawMore_Hidden1" and
                data:toString() == "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage" or
                data:toString() == "scpeqDrPicsellDois_Skill_UpperLayerNarrator_PegasusSlashes" or
                data:toString() == "#scpeqDrPicsellDois_Skill_UpperLayerNarrator_PegasusSlashes_Hidden1" or
                data:toString() == "#scpeqDrPicsellDois_Skill_UpperLayerNarrator_PegasusSlashes_Hidden2" then
                
                room:acquireSkill(player, data:toString(), true)
            end
        end
        plrSkillOwner = room:findPlayerBySkillName(self:objectName())
        if not plrSkillOwner:hasSkill("scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect") then
            room:acquireSkill(plrSkillOwner, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect", true)
        end
        if not plrSkillOwner:hasSkill("#scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect_Hidden1") then
            room:acquireSkill(plrSkillOwner, "#scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect_Hidden1", true)
        end
        if not plrSkillOwner:hasSkill("scpeqDrPicsellDois_Skill_UpperLayerNarrator_PhaseProtect") then
            room:acquireSkill(plrSkillOwner, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_PhaseProtect", true)
        end
        if not plrSkillOwner:hasSkill("scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawMore") then
            room:acquireSkill(plrSkillOwner, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawMore", true)
        end
        if not plrSkillOwner:hasSkill("#scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawMore_Hidden1") then
            room:acquireSkill(plrSkillOwner, "#scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawMore_Hidden1", true)
        end
        if not plrSkillOwner:hasSkill("scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage") then
            room:acquireSkill(plrSkillOwner, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage", true)
        end
        if not plrSkillOwner:hasSkill("scpeqDrPicsellDois_Skill_UpperLayerNarrator_PegasusSlashes") then
            room:acquireSkill(plrSkillOwner, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_PegasusSlashes", true)
        end
        if not plrSkillOwner:hasSkill("#scpeqDrPicsellDois_Skill_UpperLayerNarrator_PegasusSlashes_Hidden1") then
            room:acquireSkill(plrSkillOwner, "#scpeqDrPicsellDois_Skill_UpperLayerNarrator_PegasusSlashes_Hidden1", true)
        end
        if not plrSkillOwner:hasSkill("#scpeqDrPicsellDois_Skill_UpperLayerNarrator_PegasusSlashes_Hidden2") then
            room:acquireSkill(plrSkillOwner, "#scpeqDrPicsellDois_Skill_UpperLayerNarrator_PegasusSlashes_Hidden2", true)
        end
    end,
    can_trigger = function(self, target)
        -- Default can_trigger is (target:hasSkill(self:objectName()) and target:isAlive())
        return true
    end,
}
scpeqDrPicsellDois:addSkill(scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect_Hidden1)
-- Skill 2: Skip Judge Phase & Discard Phase, or just win
scpeqDrPicsellDois_Skill_UpperLayerNarrator_PhaseProtect = sgs.CreateTriggerSkill{
    name = "scpeqDrPicsellDois_Skill_UpperLayerNarrator_PhaseProtect",
    frequency = sgs.Skill_Compulsory,
    events = {sgs.EventPhaseChanging, sgs.EventPhaseStart, sgs.GameStart},
    on_trigger = function(self, event, player, data)
        local room = player:getRoom()
        
        plrSkillOwner = room:findPlayerBySkillName(self:objectName())
        
        if event == sgs.EventPhaseChanging and player:hasSkill(self:objectName()) then
            local phcPhaseChange = data:toPhaseChange()
            local phsNext = phcPhaseChange.to
            
            if phsNext == sgs.Player_Judge and (player:getJudgingArea():length() > 0) then
                -- Skip Judge Phase
                if room:askForSkillInvoke(player, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_PhaseProtect_SkipJudge", data) and (not player:isSkipped(sgs.Player_Judge)) then
                    player:skip(phsNext)
                end
            elseif phsNext == sgs.Player_Discard and (player:getMaxCards() < player:getHandcardNum()) then
                -- Skip Discard Phase
                if room:askForSkillInvoke(player, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_PhaseProtect_SkipDiscard", data) and (not player:isSkipped(sgs.Player_Discard)) then
                    player:skip(phsNext)
                end
            end
        elseif event == sgs.EventPhaseStart and player:getPhase() == sgs.Player_Play then
            if plrSkillOwner then
                if room:askForSkillInvoke(plrSkillOwner, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_PhaseProtect_AutoWin", data) then
                    room:gameOver(plrSkillOwner:objectName())
                end
            end
        elseif (event == sgs.EventPhaseStart and player:getPhase() == sgs.Player_Start) or event == sgs.GameStart then
            if plrSkillOwner then
                if plrSkillOwner:objectName() == player:objectName() and room:askForSkillInvoke(plrSkillOwner, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_PhaseProtect_ChangeKingdom", data) then
                    local sNewKingdom = room:askForKingdom(plrSkillOwner)
                    plrSkillOwner:setKingdom(sNewKingdom)
                    --local msg = sgs.LogMessage()
                    --msg.type = plrSkillOwner:getKingdom()
                    --msg.to:append(plrSkillOwner)
                    --room:sendLog(msg)
                    --room:setPlayerPropery(plrSkillOwner, "kingdom", sNewKingdom)
                end
            end
        end
    end,
    can_trigger = function(self, target)
        -- Default can_trigger is (target:hasSkill(self:objectName()) and target:isAlive())
        return true
    end,
}
scpeqDrPicsellDois:addSkill(scpeqDrPicsellDois_Skill_UpperLayerNarrator_PhaseProtect)
-- Skill 3: Draw more cards
scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawMore = sgs.CreateTriggerSkill{
    name = "scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawMore",
    frequency = sgs.Skill_Compulsory,
    events = {sgs.DrawNCards, sgs.TurnStart, sgs.EventPhaseEnd, sgs.EventPhaseStart, sgs.CardsMoveOneTime},
    on_trigger = function(self, event, player, data)
        local room = player:getRoom()
        
        plrSkillOwner = room:findPlayerBySkillName(self:objectName())
        
        -- Standard drawing
        if event == sgs.DrawNCards and player:hasSkill(self:objectName()) and room:askForSkillInvoke(player, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawNCards", data) then
            data:setValue(data:toInt() + 5)
        elseif event == sgs.TurnStart then
            if plrSkillOwner then
                if room:askForSkillInvoke(plrSkillOwner, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawAtTurnStart", data) then
                    room:drawCards(plrSkillOwner, 2, self:objectName())
                end
            end
        elseif event == sgs.EventPhaseEnd and player:getPhase() == sgs.Player_Finish then
            if plrSkillOwner then
                if room:askForSkillInvoke(plrSkillOwner, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawAtTurnFinish", data) then
                    room:drawCards(plrSkillOwner, 2, self:objectName())
                end
            end
        elseif event == sgs.CardsMoveOneTime then
            if plrSkillOwner then
                local move = data:toMoveOneTime()
                -- Must check player:objectName() == plrSkillOwner:objectName(), otherwise this skill will be triggered for N times, N == PlayerCount
                if move and player:objectName() == plrSkillOwner:objectName() then
                    if move.from:objectName() == plrSkillOwner:objectName() then
                        local nMovedCards = 0
                        for i, p in sgs.qlist(move.from_places) do
                            if p == sgs.Player_PlaceHand or p == sgs.Player_PlaceEquip then
                                nMovedCards = nMovedCards + 1
                            end
                        end
                        if nMovedCards > 0 then
                            if room:askForSkillInvoke(plrSkillOwner, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawWhenMovingCards", data) then
                                local sResult = room:askForChoice(plrSkillOwner, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawWhenMovingCards", "scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawWhenMovingCards_OptDraw1x+scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawWhenMovingCards_OptDraw2x")
                                if sResult == "scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawWhenMovingCards_OptDraw1x" then
                                    room:drawCards(plrSkillOwner, nMovedCards, self:objectName())
                                elseif sResult == "scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawWhenMovingCards_OptDraw2x" then
                                    room:drawCards(plrSkillOwner, 2*nMovedCards, self:objectName())
                                end
                            end
                        end
                    end
                end
            end
        end
        
        -- Draw when no cards
        if (event == sgs.EventPhaseStart or event == sgs.EventPhaseEnd) and (player:getPhase() == sgs.Player_Draw or player:getPhase() == sgs.Player_Play or player:getPhase() == sgs.Player_Finish) then
            if plrSkillOwner then
                if plrSkillOwner:getHandcardNum() < 5 then
                    if room:askForSkillInvoke(plrSkillOwner, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawWhenNoCards", data) then
                        room:drawCards(plrSkillOwner, 5, self:objectName())
                    end
                end
            end
        end
    end,
    can_trigger = function(self, target)
        -- Default can_trigger is (target:hasSkill(self:objectName()) and target:isAlive())
        return true
    end,
}
scpeqDrPicsellDois:addSkill(scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawMore)
scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawMore_Hidden1 = sgs.CreateTriggerSkill{
    name = "#scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawMore_Hidden1",
    extra_func = function(self, player)
        -- Skill ownership must be checked in CreateTargetModSkill, otherwise the effects will be applied to all players
        if player:hasSkill(self:objectName()) then
            return 24500
        else
            return 0
        end
    end
}
scpeqDrPicsellDois:addSkill(scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawMore_Hidden1)
-- Skill 4: Cause more damage
scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage = sgs.CreateTriggerSkill{
    name = "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage",
    frequency = sgs.Skill_Compulsory,
    events = {sgs.DamageCaused, sgs.CardUsed, sgs.TargetSpecified, sgs.CardFinished, sgs.EventPhaseEnd},
    on_trigger = function(self, event, player, data)
        local room = player:getRoom()
        
        plrSkillOwner = room:findPlayerBySkillName(self:objectName())
        if plrSkillOwner then
            if event == sgs.DamageCaused then
                local damage = data:toDamage()
                if damage.from then
                    if damage.from:objectName() == plrSkillOwner:objectName() then
                        if room:askForSkillInvoke(plrSkillOwner, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage", data) then
                            local sResult = room:askForChoice(plrSkillOwner, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage", "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamage0+scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamage1+scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamage2+scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamage4+scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamage5+scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamage25+scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamage245+scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamage2450+scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamage24500+scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamageNeg")
                            local iDamageValue = damage.damage
                            local plrDamageTarget = damage.to
                            local iDamageDelta = 0
                            local recRecover = sgs.RecoverStruct()
                            if sResult == "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamage0" then
                                iDamageDelta = 0
                            elseif sResult == "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamage1" then
                                iDamageDelta = 1
                            elseif sResult == "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamage2" then
                                iDamageDelta = 2
                            elseif sResult == "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamage4" then
                                iDamageDelta = 4
                            elseif sResult == "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamage5" then
                                iDamageDelta = 5
                            elseif sResult == "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamage25" then
                                iDamageDelta = 25
                            elseif sResult == "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamage245" then
                                iDamageDelta = 245
                            elseif sResult == "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamage2450" then
                                iDamageDelta = 2450
                            elseif sResult == "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamage24500" then
                                iDamageDelta = 24500
                            elseif sResult == "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamageNeg" then
                                -- Damage to recovery
                                iDamageDelta = -iDamageValue
                                recRecover.recover = iDamageValue
                                recRecover.who = plrSkillOwner
                            end
                            iDamageValue = iDamageValue + iDamageDelta
                            damage.damage = iDamageValue
                            if room:askForSkillInvoke(plrSkillOwner, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_DamageNoSource", data) then
                                damage.from = nil
                                recRecover.who = nil
                            end
                            if room:askForSkillInvoke(plrSkillOwner, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_DamageToHpLoss", data) then
                                damage.damage = 0
                                room:loseHp(plrDamageTarget, iDamageValue, true, damage.from, self:objectName())
                            end
                            data:setValue(damage)
                            if room:askForSkillInvoke(plrSkillOwner, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_DamageMaxHp", data) then
                                local iMaxHpDelta = -iDamageValue
                                if sResult == "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamageNeg" then
                                    -- Special handling of negative damage value
                                    iMaxHpDelta = -iDamageDelta
                                end
                                room:changePlayerMaxHp(plrDamageTarget, iMaxHpDelta, self:objectName())
                            end
                            if sResult == "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamageNeg" then
                                -- Special handling of negative damage value
                                room:recover(plrDamageTarget, recRecover)
                            end
                        end
                    end
                end
            elseif event == sgs.CardUsed or event == sgs.TargetSpecified then
                local use = data:toCardUse()
                if use.from then
                    if use.from:objectName() == plrSkillOwner:objectName() then
                        if use.card:isKindOf("BasicCard") or use.card:isKindOf("TrickCard") then
                            -- Avoid disturbing
                            local IsSkillInvokingAllowed = false
                            if plrSkillOwner:hasFlag("scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_NoResponding_AllowedFlag") then
                                IsSkillInvokingAllowed = true
                            elseif plrSkillOwner:hasFlag("scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_NoResponding_DisallowedFlag") then
                                IsSkillInvokingAllowed = false
                            else
                                IsSkillInvokingAllowed = room:askForSkillInvoke(plrSkillOwner, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_NoResponding", data)
                            end
                            
                            if IsSkillInvokingAllowed then
                                -- Ignore armor
                                room:setCardFlag(use.card, "SlashIgnoreArmor")
                                
                                -- No responding
                                local no_respond_list = use.no_respond_list
                                table.insert(no_respond_list, "_ALL_TARGETS")
                                for i, p in sgs.qlist(room:getAllPlayers(true)) do
                                    if p:objectName() ~= plrSkillOwner:objectName() then
                                        table.insert(no_respond_list, p:objectName())
                                    end
                                end
                                use.no_respond_list = no_respond_list
                                data:setValue(use)
                                
                                -- Avoid disturbing
                                if event == sgs.TargetSpecified then
                                    plrSkillOwner:setFlags("-scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_NoResponding_AllowedFlag")
                                else
                                    plrSkillOwner:setFlags("scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_NoResponding_AllowedFlag")
                                end
                            else
                                -- Avoid disturbing
                                if event == sgs.TargetSpecified then
                                    plrSkillOwner:setFlags("-scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_NoResponding_DisallowedFlag")
                                else
                                    plrSkillOwner:setFlags("scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_NoResponding_DisallowedFlag")
                                end
                            end
                        end
                    end
                end
            elseif event == sgs.CardFinished then
                -- Avoid disturbing
                plrSkillOwner:setFlags("-scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_NoResponding_AllowedFlag")
                plrSkillOwner:setFlags("-scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_NoResponding_DisallowedFlag")
            elseif event == sgs.EventPhaseEnd and player:getPhase() == sgs.Player_Play then
                if not player:hasSkill(self:objectName()) then
                    if room:askForSkillInvoke(plrSkillOwner, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_DeathNote", data) then
                        local sResult = room:askForChoice(plrSkillOwner, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_DeathNote", "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_DeathNote_OptDamage+scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_DeathNote_OptDie")
                        if sResult == "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_DeathNote_OptDamage" then
                            local dmgDamage = sgs.DamageStruct()
                            dmgDamage.from = plrSkillOwner
                            dmgDamage.to = player
                            dmgDamage.card = nil
                            dmgDamage.damage = 1
                            dmgDamage.nature = sgs.DamageStruct_Normal
                            --dmgDamage.chain = false
                            --dmgDamage.transfer = false
                            --dmgDamage.trigger_chain = false
                            room:damage(dmgDamage)
                        elseif sResult == "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_DeathNote_OptDie" then
                            room:killPlayer(player)
                        end
                    end
                end
            end
        end
    end,
    can_trigger = function(self, target)
        -- Default can_trigger is (target:hasSkill(self:objectName()) and target:isAlive())
        return true
    end,
}
scpeqDrPicsellDois:addSkill(scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage)
-- Skill 5: Use more Slashes
scpeqDrPicsellDois_Skill_UpperLayerNarrator_PegasusSlashes = sgs.CreateTargetModSkill{
    name = "scpeqDrPicsellDois_Skill_UpperLayerNarrator_PegasusSlashes",
    pattern = "Card",
    distance_limit_func = function(self, player)
        -- Skill ownership must be checked in CreateTargetModSkill, otherwise the effects will be applied to all players
        if player:hasSkill(self:objectName()) then
            return 2450
        else
            return 0
        end
    end,
    extra_target_func = function(self, from, card)
        -- Skill ownership must be checked in CreateTargetModSkill, otherwise the effects will be applied to all players
        if from:hasSkill(self:objectName()) then
            return 245
        else
            return 0
        end
    end,
    residue_func = function(self, from, card, to)
        -- Skill ownership must be checked in CreateTargetModSkill, otherwise the effects will be applied to all players
        if from:hasSkill(self:objectName()) then
            return 2450
        else
            return 0
        end
    end,
}
scpeqDrPicsellDois:addSkill(scpeqDrPicsellDois_Skill_UpperLayerNarrator_PegasusSlashes)
scpeqDrPicsellDois_Skill_UpperLayerNarrator_PegasusSlashes_Hidden1 = sgs.CreateDistanceSkill{
    name = "#scpeqDrPicsellDois_Skill_UpperLayerNarrator_PegasusSlashes_Hidden1",
    correct_func = function(self, from, to)
        -- Skill ownership must be checked in CreateTargetModSkill, otherwise the effects will be applied to all players
        if from:hasSkill(self:objectName()) then
            return -5
        else
            return 0
        end
    end
}
scpeqDrPicsellDois:addSkill(scpeqDrPicsellDois_Skill_UpperLayerNarrator_PegasusSlashes_Hidden1)
scpeqDrPicsellDois_Skill_UpperLayerNarrator_PegasusSlashes_Hidden2 = sgs.CreateDistanceSkill{
    name = "#scpeqDrPicsellDois_Skill_UpperLayerNarrator_PegasusSlashes_Hidden2",
    correct_func = function(self, from, to)
        -- Skill ownership must be checked in CreateTargetModSkill, otherwise the effects will be applied to all players
        if to:hasSkill(self:objectName()) then
            return 5
        else
            return 0
        end
    end
}
scpeqDrPicsellDois:addSkill(scpeqDrPicsellDois_Skill_UpperLayerNarrator_PegasusSlashes_Hidden2)

-- Localization
sgs.LoadTranslationTable{
    ["scpeq"] = "SCP-EQ扩展",
    
    ["scpeqDrPicsellDois"] = "Dr. Picsell Dois",
    ["&scpeqDrPicsellDois"] = "PD博士",
    ["#scpeqDrPicsellDois"] = "谦逊的学者",
    ["designer:scpeqDrPicsellDois"] = "Dr. Picsell Dois",
    ["cv:scpeqDrPicsellDois"] = "Dr. Picsell Dois",
    ["illustrator:scpeqDrPicsellDois"] = "Alus",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect"] = "叙护",
    [":scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect"] = "锁定技。你的体力值和体力上限永远不小于5。当你受到伤害、失去体力或体力值变更时，你将体力值恢复到体力上限。当你的体力上限减少至5以下时，你将体力上限变为5。当你死亡时，你可将体力值调整到体力上限并摸5张牌。当你失去记载在卡面上的技能时，防止之。当你获得不在卡面上记载的技能时，你可选择获得之或丢弃之。当你被翻面时，取消之。当你成为牌的目标时，你可取消之。",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect_Reviving"] = "叙护（死亡时，你复活并摸5张牌）",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect_Nullification"] = "叙护（取消以你为目标的牌）",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect_AcquiringSkill_OptAcquire"] = "获得技能",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect_AcquiringSkill_OptDetach"] = "丢弃技能",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_PhaseProtect"] = "叙跃",
    [":scpeqDrPicsellDois_Skill_UpperLayerNarrator_PhaseProtect"] = "锁定技。你可跳过你的判定和弃牌阶段。任意角色的出牌阶段开始时，你可令你胜利。游戏开始和你的准备阶段，你可选择你所在的势力。",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_PhaseProtect_SkipJudge"] = "叙跃（跳过你的判定阶段）",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_PhaseProtect_SkipDiscard"] = "叙跃（跳过你的弃牌阶段）",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_PhaseProtect_AutoWin"] = "叙跃（你立即获得胜利）",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_PhaseProtect_ChangeKingdom"] = "叙跃（变更你所在势力）",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawMore"] = "叙供",
    [":scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawMore"] = "锁定技。你可在你的摸牌阶段多摸5张牌。任意角色的准备阶段和结束阶段，你可摸2张牌。任意角色的摸牌、出牌或回合结束阶段开始或结束时，若你的手牌数小于5，你可摸5张牌。当你失去手牌/装备区中的牌时，你可摸与失去的牌等量或2倍的牌。你的手牌上限+24500。",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawNCards"] = "叙供（在你的摸牌阶段多摸5张牌）",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawAtTurnStart"] = "叙供（准备阶段可摸2张牌）",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawAtTurnFinish"] = "叙供（结束阶段可摸2张牌）",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawWhenNoCards"] = "叙供（手牌数小于5时可摸5张牌）",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawWhenMovingCards"] = "叙供（失去牌时摸牌）",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawWhenMovingCards_OptDraw1x"] = "摸等量的牌",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawWhenMovingCards_OptDraw2x"] = "摸2倍的牌",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage"] = "叙灭",
    [":scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage"] = "锁定技。你可让你造成的伤害+0/+1/+2/+4/+5/+25/+245/+2450/+24500/取反、视为无来源伤害、视为体力流失、同时失去体力上限。你可使你使用的基本牌或锦囊牌无视防具且无法被响应。其他角色的出牌阶段结束时，你可令其受到1点伤害/死亡。",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage"] = "叙灭（增加你造成的伤害）",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamage0"] = "伤害+0",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamage1"] = "伤害+1",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamage2"] = "伤害+2",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamage4"] = "伤害+4",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamage5"] = "伤害+5",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamage25"] = "伤害+25",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamage245"] = "伤害+245",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamage2450"] = "伤害+2450",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamage24500"] = "伤害+24500",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage_OptDamageNeg"] = "伤害取反",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_DamageNoSource"] = "叙灭（你造成的伤害视为无来源伤害）",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_DamageToHpLoss"] = "叙灭（你造成的伤害视为体力流失）",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_DamageMaxHp"] = "叙灭（伤害目标失去体力上限）",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_NoResponding"] = "叙灭（使用的牌无视防具且无法被响应）",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_DeathNote"] = "叙灭（当前回合角色受伤或死亡）",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_DeathNote_OptDamage"] = "目标受到伤害",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_DeathNote_OptDie"] = "目标死亡",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_PegasusSlashes"] = "天马",
    [":scpeqDrPicsellDois_Skill_UpperLayerNarrator_PegasusSlashes"] = "锁定技。你使用牌无距离、目标数和次数限制。你到其他角色的距离-5，其他角色到你的距离+5。",
}

-- Submit extension info
return extension