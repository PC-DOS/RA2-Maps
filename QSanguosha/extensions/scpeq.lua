-- Reference: https://www.kancloud.cn/light_crashock/qsanguosha_exgeneral/2656676

-- Register extentsion
extension = sgs.Package("scpeq", sgs.Package_GeneralPack)

-- Generals & Skills
-- General: Dr. Picsell Dois
scpeqDrPicsellDois = sgs.General(extension, "scpeqDrPicsellDois", "qun", 5, true, false, false)
-- General: Dr. Picsell Dois - Skills
-- Skill 1: Lock HP & Max HP, avoid lossing skills
scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect = sgs.CreateTriggerSkill{
    name = "scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect",
    frequency = sgs.Skill_Compulsory,
    events = {sgs.HpLost, sgs.HpChanged, sgs.MaxHpChanged, sgs.Damaged, sgs.TargetConfirming, sgs.Dying, sgs.Death, sgs.GameOverJudge, sgs.GameFinished, sgs.TurnedOver,
              sgs.EventLoseSkill, sgs.TurnStart, sgs.EventPhaseStart, sgs.EventPhaseEnd, sgs.EventPhaseChanging},
    on_trigger = function(self, event, player, data)
        local room = player:getRoom()
        
        if player:hasSkill(self:objectName()) then
            -- Mark player as skill owner
            if not player:hasFlag("scpeqDrPicsellDois_Skill_UpperLayerNarrator_SkillOwnerFlag") then
                room:setPlayerFlag(player, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_SkillOwnerFlag")
            end
            
            -- Lock Max HP
            local iMaxHP = 5
            if player:getMaxHp() < iMaxHP then
                room:gainMaxHp(player, 5-player:getMaxHp())
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
        elseif event == sgs.EventLoseSkill or event == sgs.TurnStart or event == sgs.EventPhaseStart or event == sgs.EventPhaseEnd or event == sgs.EventPhaseChanging then
            -- Avoid lossing skills
            if player:hasFlag("scpeqDrPicsellDois_Skill_UpperLayerNarrator_SkillOwnerFlag") then
                if not player:hasSkill("scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect") then
                    room:acquireSkill(player, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect", false)
                end
                if not player:hasSkill("scpeqDrPicsellDois_Skill_UpperLayerNarrator_PhaseProtect") then
                    room:acquireSkill(player, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_PhaseProtect", false)
                end
                if not player:hasSkill("scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawMore") then
                    room:acquireSkill(player, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawMore", false)
                end
                if not player:hasSkill("scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage") then
                    room:acquireSkill(player, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage", false)
                end
                if not player:hasSkill("scpeqDrPicsellDois_Skill_UpperLayerNarrator_PegasusSlashes") then
                    room:acquireSkill(player, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_PegasusSlashes", false)
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
-- Skill 2: Skip Judge Phase & Discard Phase, or just win
scpeqDrPicsellDois_Skill_UpperLayerNarrator_PhaseProtect = sgs.CreateTriggerSkill{
    name = "scpeqDrPicsellDois_Skill_UpperLayerNarrator_PhaseProtect",
    frequency = sgs.Skill_Compulsory,
    events = {sgs.EventPhaseChanging, sgs.EventPhaseStart},
    on_trigger = function(self, event, player, data)
        local room = player:getRoom()
        
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
            plrSkillOwner = room:findPlayerBySkillName(self:objectName())
            if plrSkillOwner then
                if room:askForSkillInvoke(plrSkillOwner, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_PhaseProtect_AutoWin", data) then
                    room:gameOver(plrSkillOwner:objectName())
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
    events = {sgs.DrawNCards, sgs.TurnStart, sgs.EventPhaseEnd, sgs.EventPhaseStart},
    on_trigger = function(self, event, player, data)
        local room = player:getRoom()
        
        if event == sgs.DrawNCards and player:hasSkill(self:objectName()) and room:askForSkillInvoke(player, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawNCards", data) then
            data:setValue(data:toInt() + 5)
        elseif event == sgs.TurnStart then
            plrSkillOwner = room:findPlayerBySkillName(self:objectName())
            if plrSkillOwner then
                if room:askForSkillInvoke(plrSkillOwner, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawAtTurnStart", data) then
                    room:drawCards(plrSkillOwner, 2, self:objectName())
                end
            end
        elseif (event == sgs.EventPhaseStart or event == sgs.EventPhaseEnd) and (player:getPhase() == sgs.Player_Draw or player:getPhase() == sgs.Player_Play or player:getPhase() == sgs.Player_Finish) then
            plrSkillOwner = room:findPlayerBySkillName(self:objectName())
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
-- Skill 4: Cause more damage
scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage = sgs.CreateTriggerSkill{
    name = "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage",
    frequency = sgs.Skill_Compulsory,
    events = {sgs.DamageCaused, sgs.TargetSpecified, sgs.EventPhaseEnd},
    on_trigger = function(self, event, player, data)
        local room = player:getRoom()
        
        if player:hasSkill(self:objectName()) then
            if event == sgs.DamageCaused and room:askForSkillInvoke(player, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage", data) then
                local damage = data:toDamage()
                damage.damage = damage.damage + 2
                data:setValue(damage)
            elseif event == sgs.TargetSpecified then
                local use = data:toCardUse()
                if use.card:isKindOf("BasicCard") or use.card:isKindOf("TrickCard") then
                    if room:askForSkillInvoke(player, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_NoResponding", data) then
                        -- Ignore armor
                        room:setCardFlag(use.card, "SlashIgnoreArmor")
                        
                        -- No responding
                        local no_respond_list = use.no_respond_list
                        for _, p in sgs.qlist(use.to) do
                            table.insert(no_respond_list, p:objectName())
                        end
                        use.no_respond_list = no_respond_list
                        data:setValue(use)
                    end
                end
            end
        elseif event == sgs.EventPhaseEnd and player:getPhase() == sgs.Player_Play then
            plrSkillOwner = room:findPlayerBySkillName(self:objectName())
            if plrSkillOwner then
                if not plrSkillOwner:hasSkill(self:objectName()) then
                    if room:askForSkillInvoke(plrSkillOwner, "scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_DeathNote", data) then
                        room:killPlayer(player)
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
    pattern = "Slash",
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
    [":scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect"] = "锁定技。你的体力值和体力上限永远为5。当你死亡时，你复活并摸5张牌。当你失去记载在卡面上的技能时，防止之。当你被翻面时，取消之。当你成为牌的目标时，你可取消之。",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect_Nullification"] = "叙护（取消以你为目标的牌）",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_HPProtect_Reviving"] = "叙护（死亡时，你复活并摸5张牌）",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_PhaseProtect"] = "叙跃",
    [":scpeqDrPicsellDois_Skill_UpperLayerNarrator_PhaseProtect"] = "锁定技。你可以跳过你的判定和弃牌阶段。任意角色的出牌阶段开始时，你可以令你直接获得胜利。",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_PhaseProtect_SkipJudge"] = "叙跃（跳过你的判定阶段）",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_PhaseProtect_SkipDiscard"] = "叙跃（跳过你的弃牌阶段）",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_PhaseProtect_AutoWin"] = "叙跃（你立即获得胜利）",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawMore"] = "叙供",
    [":scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawMore"] = "锁定技。你可以在你的摸牌阶段多摸5张牌。任意角色的回合开始阶段，你可以摸2张牌。任意角色的摸牌、出牌或回合结束阶段开始或结束时，若你的手牌数小于5，你可摸5张牌。",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawNCards"] = "叙供（在你的摸牌阶段多摸5张牌）",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawAtTurnStart"] = "叙供（回合开始阶段可摸2张牌）",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_DrawWhenNoCards"] = "叙供（手牌数小于5时可摸5张牌）",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage"] = "叙灭",
    [":scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage"] = "锁定技。你可让你造成的伤害+2。你可使你使用的基本牌或锦囊牌无视防具且无法被响应。其他角色的出牌阶段结束时，你可以令其立即死亡。",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_MoreDamage"] = "叙灭（你造成的伤害+2）",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_NoResponding"] = "叙灭（使用的牌无视防具且无法被响应）",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_CauseMoreDamage_DeathNote"] = "叙灭（当前回合角色立即死亡）",
    ["scpeqDrPicsellDois_Skill_UpperLayerNarrator_PegasusSlashes"] = "天马",
    [":scpeqDrPicsellDois_Skill_UpperLayerNarrator_PegasusSlashes"] = "锁定技。你使用【杀】无距离、目标数和次数限制。",
}

-- Submit extension info
return extension