import os

# Single idea group
def GenerateHoI4UpDownEffects(sEffectTargetName : str, 
    sEffectPrefix : str, sEffectSuffix : str,
    arrEffectIdeas : list, arrEffectIdeaTooltips : list) -> str :
    if (len(arrEffectIdeaTooltips) != len(arrEffectIdeas)) :
        arrEffectIdeaTooltips = arrEffectIdeas
    #End If

    # Generating scripted effect
    sScriptedEffect = ""
    sLineBreakMark = "\r\n"
    # Template
    sScriptedEffectSection = """    [IF_MARK] = {
        limit = { has_idea = [LOWER_IDEA] }
        hidden_effect = {
            swap_ideas = {
                remove_idea = [LOWER_IDEA]
                add_idea = [UPPER_IDEA]
            }
        }
        effect_tooltip = {
            swap_ideas = {
                remove_idea = [LOWER_IDEA_TOOLTIP]
                add_idea = [UPPER_IDEA_TOOLTIP]
            }
        }
    }"""
    # "Up" section
    sScriptedEffect = sScriptedEffect + f"{sEffectPrefix}{sEffectTargetName}{sEffectSuffix}_up" + " = {" + sLineBreakMark
    for i in range(0, len(arrEffectIdeas)-1) :
        if i == 0 :
            sCurrentIfMark = "if"
        else :
            sCurrentIfMark = "else_if"
        #End If
        sLowerIdea = arrEffectIdeas[i]
        sUpperIdea = arrEffectIdeas[i+1]
        sLowerIdeaTooltip = arrEffectIdeaTooltips[i]
        sUpperIdeaTooltip = arrEffectIdeaTooltips[i+1]
        sCurrentSection = sScriptedEffectSection
        sCurrentSection = sCurrentSection.replace("[IF_MARK]", sCurrentIfMark)
        sCurrentSection = sCurrentSection.replace("[LOWER_IDEA]", sLowerIdea)
        sCurrentSection = sCurrentSection.replace("[UPPER_IDEA]", sUpperIdea)
        sCurrentSection = sCurrentSection.replace("[LOWER_IDEA_TOOLTIP]", sLowerIdeaTooltip)
        sCurrentSection = sCurrentSection.replace("[UPPER_IDEA_TOOLTIP]", sUpperIdeaTooltip)
        sScriptedEffect = sScriptedEffect + sCurrentSection + sLineBreakMark
    #Next
    sScriptedEffect = sScriptedEffect + "}" + sLineBreakMark + sLineBreakMark
    # "Down" section
    sScriptedEffect = sScriptedEffect + f"{sEffectPrefix}{sEffectTargetName}{sEffectSuffix}_down" + " = {" + sLineBreakMark
    for i in range(len(arrEffectIdeas)-1, 0, -1) :
        if i == (len(arrEffectIdeas)-1) :
            sCurrentIfMark = "if"
        else :
            sCurrentIfMark = "else_if"
        #End If
        sLowerIdea = arrEffectIdeas[i]
        sUpperIdea = arrEffectIdeas[i-1]
        sLowerIdeaTooltip = arrEffectIdeaTooltips[i]
        sUpperIdeaTooltip = arrEffectIdeaTooltips[i-1]
        sCurrentSection = sScriptedEffectSection
        sCurrentSection = sCurrentSection.replace("[IF_MARK]", sCurrentIfMark)
        sCurrentSection = sCurrentSection.replace("[LOWER_IDEA]", sLowerIdea)
        sCurrentSection = sCurrentSection.replace("[UPPER_IDEA]", sUpperIdea)
        sCurrentSection = sCurrentSection.replace("[LOWER_IDEA_TOOLTIP]", sLowerIdeaTooltip)
        sCurrentSection = sCurrentSection.replace("[UPPER_IDEA_TOOLTIP]", sUpperIdeaTooltip)
        sScriptedEffect = sScriptedEffect + sCurrentSection + sLineBreakMark
    #Next
    sScriptedEffect = sScriptedEffect + "}" + sLineBreakMark + sLineBreakMark
    # "Clear" section
    sScriptedEffectSection = """    [IF_MARK] = {
        limit = { has_idea = [TARGET_IDEA] }
        remove_ideas = {
            [TARGET_IDEA]
        }
    }
    """
    sScriptedEffect = sScriptedEffect + f"{sEffectPrefix}{sEffectTargetName}{sEffectSuffix}_clear" + " = {" + sLineBreakMark
    for i in range(0, len(arrEffectIdeas)) :
        if i == 0 :
            sCurrentIfMark = "if"
        else :
            sCurrentIfMark = "else_if"
        #End If
        sTargetIdea = arrEffectIdeas[i]
        sCurrentSection = sScriptedEffectSection
        sCurrentSection = sCurrentSection.replace("[IF_MARK]", sCurrentIfMark)
        sCurrentSection = sCurrentSection.replace("[TARGET_IDEA]", sTargetIdea)
        sScriptedEffect = sScriptedEffect + sCurrentSection + sLineBreakMark
    #Next
    sScriptedEffect = sScriptedEffect + "}" + sLineBreakMark + sLineBreakMark
    # "Set lowest" section
    sScriptedEffectSection = """    [IF_MARK] = {
        limit = { has_idea = [REMOVED_IDEA] }
        remove_ideas = {
            [REMOVED_IDEA]
        }
        add_ideas = {
            [TARGET_IDEA]
        }
    }
    """
    sScriptedEffect = sScriptedEffect + f"{sEffectPrefix}{sEffectTargetName}{sEffectSuffix}_set_lowest" + " = {" + sLineBreakMark
    for i in range(0, len(arrEffectIdeas)) :
        if i == 0 :
            sCurrentIfMark = "if"
        else :
            sCurrentIfMark = "else_if"
        #End If
        sRemovedIdea = arrEffectIdeas[i]
        sTargetIdea = arrEffectIdeas[0]
        sCurrentSection = sScriptedEffectSection
        sCurrentSection = sCurrentSection.replace("[IF_MARK]", sCurrentIfMark)
        sCurrentSection = sCurrentSection.replace("[REMOVED_IDEA]", sRemovedIdea)
        sCurrentSection = sCurrentSection.replace("[TARGET_IDEA]", sTargetIdea)
        sScriptedEffect = sScriptedEffect + sCurrentSection + sLineBreakMark
    #Next
    sScriptedEffectSection = """    else = {
        add_ideas = {
            [TARGET_IDEA]
        }
    }
    """
    for i in range(0, 1) :
        sTargetIdea = arrEffectIdeas[0]
        sCurrentSection = sScriptedEffectSection
        sCurrentSection = sCurrentSection.replace("[IF_MARK]", sCurrentIfMark)
        sCurrentSection = sCurrentSection.replace("[TARGET_IDEA]", sTargetIdea)
        sScriptedEffect = sScriptedEffect + sCurrentSection + sLineBreakMark
    #Next
    sScriptedEffect = sScriptedEffect + "}" + sLineBreakMark + sLineBreakMark

    return sScriptedEffect
#End Function

# Debug decisions
def GenerateHoI4UpDownEffectsDebugDecisions(sCategoryName : str, arrEffectTargetNames : list, 
    sEffectPrefix : str, sEffectSuffix : str) -> str :

    # Generating debug decisions
    sDebugDecision = ""
    sLineBreakMark = "\r\n"
    sDebugDecision = sCategoryName + " = {" + sLineBreakMark
    # Template
    sDebugDecisionTemplate = """
    debug_decision_[EFFECT_TARGET]_up = {
        allowed = {
            # Always allowed
        }
        visible = {
            # Always visible
        }
        available = {
            # Always available
        }
        icon = GFX_Null
        fire_only_once = no
        days_re_enable = 0
        ai_will_do = {
            factor = 0
        }
        complete_effect = {
            [EFFECT_TARGET]_up = yes
        }
    }
    debug_decision_[EFFECT_TARGET]_down = {
        allowed = {
            # Always allowed
        }
        visible = {
            # Always visible
        }
        available = {
            # Always available
        }
        icon = GFX_Null
        fire_only_once = no
        days_re_enable = 0
        ai_will_do = {
            factor = 0
        }
        complete_effect = {
            [EFFECT_TARGET]_down = yes
        }
    }
    debug_decision_[EFFECT_TARGET]_clear = {
        allowed = {
            # Always allowed
        }
        visible = {
            # Always visible
        }
        available = {
            # Always available
        }
        icon = GFX_Null
        fire_only_once = no
        days_re_enable = 0
        ai_will_do = {
            factor = 0
        }
        complete_effect = {
            [EFFECT_TARGET]_clear = yes
        }
    }
    debug_decision_[EFFECT_TARGET]_set_lowest = {
        allowed = {
            # Always allowed
        }
        visible = {
            # Always visible
        }
        available = {
            # Always available
        }
        icon = GFX_Null
        fire_only_once = no
        days_re_enable = 0
        ai_will_do = {
            factor = 0
        }
        complete_effect = {
            [EFFECT_TARGET]_set_lowest = yes
        }
    }
    """
    # Text generating
    for CurrentEffect in arrEffectTargetNames :
        sCurrentSection = sDebugDecisionTemplate.replace("[EFFECT_TARGET]", f"{sEffectPrefix}{CurrentEffect}{sEffectSuffix}")
        sDebugDecision = sDebugDecision + sCurrentSection
    #Next
    sDebugDecision = sDebugDecision + "}" + sLineBreakMark + sLineBreakMark

    return sDebugDecision
#End Function

# Main enrty
if __name__ == "__main__" :
    sLineBreakMark = "\r\n"
    os.makedirs("common/decisions/categories")
    os.makedirs("common/scripted_effects")

    # My New Pony: Friendship is a Lie
    # Pol_Development_Degree
    sCategoryName = "Pol_Development_Degree"
    arrEffectTargetNames = [
        "Pol_Development_size",
        "Pol_Development_legality",
        "Pol_Development_system",
        "Pol_Development_elections",
        "Pol_Development_corruption",
        "Pol_Development_power",
    ]
    arrEffectTargetDesc = [
        "国家规模",
        "政府合法性",
        "政党制度",
        "选举制度",
        "腐败水平",
        "政府集权"
    ]
    arrEffectIdeas = [
        [
            "pol_develop_1_7",
            "pol_develop_1_6",
            "pol_develop_1_5",
            "pol_develop_1_4",
            "pol_develop_1_3",
            "pol_develop_1_2",
            "pol_develop_1_1",
        ],
        [
            "pol_develop_2_7",
            "pol_develop_2_6",
            "pol_develop_2_5",
            "pol_develop_2_4",
            "pol_develop_2_3",
            "pol_develop_2_2",
            "pol_develop_2_1",
        ],
        [
            "pol_develop_3_7",
            "pol_develop_3_6",
            "pol_develop_3_5",
            "pol_develop_3_4",
            "pol_develop_3_3",
            "pol_develop_3_2",
            "pol_develop_3_1",
        ],
        [
            "pol_develop_4_7",
            "pol_develop_4_6",
            "pol_develop_4_5",
            "pol_develop_4_4",
            "pol_develop_4_3",
            "pol_develop_4_2",
            "pol_develop_4_1",
        ],
        [
            "pol_develop_5_7",
            "pol_develop_5_6",
            "pol_develop_5_5",
            "pol_develop_5_4",
            "pol_develop_5_3",
            "pol_develop_5_2",
            "pol_develop_5_1",
        ],
        [
            "pol_develop_6_7",
            "pol_develop_6_6",
            "pol_develop_6_5",
            "pol_develop_6_4",
            "pol_develop_6_3",
            "pol_develop_6_2",
            "pol_develop_6_1",
        ],
    ]
    sFilePath = f"common/scripted_effects/FIL_{sCategoryName}_scripted_effects.txt"
    with open(sFilePath, "w") as filOutputFile:
        for i in range(0, len(arrEffectTargetNames)) :
            filOutputFile.write("# " + arrEffectTargetDesc[i] + sLineBreakMark)
            sScriptedEffect = GenerateHoI4UpDownEffects(sEffectTargetName=arrEffectTargetNames[i],
                sEffectPrefix="", sEffectSuffix="",
                arrEffectIdeas=arrEffectIdeas[i], arrEffectIdeaTooltips=arrEffectIdeas[i])
            filOutputFile.write(sScriptedEffect)
        #Next
    #End With
    sFilePath = f"common/decisions/FIL_{sCategoryName}_debug_decisions.txt"
    with open(sFilePath, "w") as filOutputFile:
        sDebugDecisions = GenerateHoI4UpDownEffectsDebugDecisions(sCategoryName="FIL_debug_decisions_category", arrEffectTargetNames=arrEffectTargetNames,
            sEffectPrefix="", sEffectSuffix="")
        filOutputFile.write(sDebugDecisions)
    #End With

    # Eco_Development_Degree
    sCategoryName = "Eco_Development_Degree"
    arrEffectTargetNames = [
        "Eco_Development_model",
        "Eco_Development_scale",
        "Eco_Development_infrastructure",
        "Eco_Development_agricultural",
        "Eco_Development_level",
        "Eco_Development_inflation",
    ]
    arrEffectTargetDesc = [
        "生产模式",
        "工业规模",
        "基础设施",
        "农业发展",
        "经济发展",
        "通货膨胀"
    ]
    arrEffectIdeas = [
        [
            "eco_develop_1_7",
            "eco_develop_1_6",
            "eco_develop_1_5",
            "eco_develop_1_4",
            "eco_develop_1_3",
            "eco_develop_1_2",
            "eco_develop_1_1",
        ],
        [
            "eco_develop_2_7",
            "eco_develop_2_6",
            "eco_develop_2_5",
            "eco_develop_2_4",
            "eco_develop_2_3",
            "eco_develop_2_2",
            "eco_develop_2_1",
        ],
        [
            "eco_develop_3_7",
            "eco_develop_3_6",
            "eco_develop_3_5",
            "eco_develop_3_4",
            "eco_develop_3_3",
            "eco_develop_3_2",
            "eco_develop_3_1",
        ],
        [
            "eco_develop_4_7",
            "eco_develop_4_6",
            "eco_develop_4_5",
            "eco_develop_4_4",
            "eco_develop_4_3",
            "eco_develop_4_2",
            "eco_develop_4_1",
        ],
        [
            "eco_develop_5_7",
            "eco_develop_5_6",
            "eco_develop_5_5",
            "eco_develop_5_4",
            "eco_develop_5_3",
            "eco_develop_5_2",
            "eco_develop_5_1",
        ],
        [
            "eco_develop_6_7",
            "eco_develop_6_6",
            "eco_develop_6_5",
            "eco_develop_6_4",
            "eco_develop_6_3",
            "eco_develop_6_2",
            "eco_develop_6_1",
        ],
    ]
    sFilePath = f"common/scripted_effects/FIL_{sCategoryName}_scripted_effects.txt"
    with open(sFilePath, "w") as filOutputFile:
        for i in range(0, len(arrEffectTargetNames)) :
            filOutputFile.write("# " + arrEffectTargetDesc[i] + sLineBreakMark)
            sScriptedEffect = GenerateHoI4UpDownEffects(sEffectTargetName=arrEffectTargetNames[i],
                sEffectPrefix="", sEffectSuffix="",
                arrEffectIdeas=arrEffectIdeas[i], arrEffectIdeaTooltips=arrEffectIdeas[i])
            filOutputFile.write(sScriptedEffect)
        #Next
    #End With
    sFilePath = f"common/decisions/FIL_{sCategoryName}_debug_decisions.txt"
    with open(sFilePath, "w") as filOutputFile:
        sDebugDecisions = GenerateHoI4UpDownEffectsDebugDecisions(sCategoryName="FIL_debug_decisions_category", arrEffectTargetNames=arrEffectTargetNames,
            sEffectPrefix="", sEffectSuffix="")
        filOutputFile.write(sDebugDecisions)
    #End With

    # Mil_Development_Degree
    sCategoryName = "Mil_Development_Degree"
    arrEffectTargetNames = [
        "Mil_Development_facilities",
        "Mil_Development_training",
        "Mil_Development_intelligence",
        "Mil_Development_quality",
        "Mil_Development_miledu",
        "Mil_Development_logistics",
    ]
    arrEffectTargetDesc = [
        "军工设施",
        "训练水平",
        "情报机构",
        "军队素质",
        "军事教育",
        "军队后勤"
    ]
    arrEffectIdeas = [
        [
            "mil_develop_1_7",
            "mil_develop_1_6",
            "mil_develop_1_5",
            "mil_develop_1_4",
            "mil_develop_1_3",
            "mil_develop_1_2",
            "mil_develop_1_1",
        ],
        [
            "mil_develop_2_7",
            "mil_develop_2_6",
            "mil_develop_2_5",
            "mil_develop_2_4",
            "mil_develop_2_3",
            "mil_develop_2_2",
            "mil_develop_2_1",
        ],
        [
            "mil_develop_3_7",
            "mil_develop_3_6",
            "mil_develop_3_5",
            "mil_develop_3_4",
            "mil_develop_3_3",
            "mil_develop_3_2",
            "mil_develop_3_1",
        ],
        [
            "mil_develop_4_7",
            "mil_develop_4_6",
            "mil_develop_4_5",
            "mil_develop_4_4",
            "mil_develop_4_3",
            "mil_develop_4_2",
            "mil_develop_4_1",
        ],
        [
            "mil_develop_5_7",
            "mil_develop_5_6",
            "mil_develop_5_5",
            "mil_develop_5_4",
            "mil_develop_5_3",
            "mil_develop_5_2",
            "mil_develop_5_1",
        ],
        [
            "mil_develop_6_7",
            "mil_develop_6_6",
            "mil_develop_6_5",
            "mil_develop_6_4",
            "mil_develop_6_3",
            "mil_develop_6_2",
            "mil_develop_6_1",
        ],
    ]
    sFilePath = f"common/scripted_effects/FIL_{sCategoryName}_scripted_effects.txt"
    with open(sFilePath, "w") as filOutputFile:
        for i in range(0, len(arrEffectTargetNames)) :
            filOutputFile.write("# " + arrEffectTargetDesc[i] + sLineBreakMark)
            sScriptedEffect = GenerateHoI4UpDownEffects(sEffectTargetName=arrEffectTargetNames[i],
                sEffectPrefix="", sEffectSuffix="",
                arrEffectIdeas=arrEffectIdeas[i], arrEffectIdeaTooltips=arrEffectIdeas[i])
            filOutputFile.write(sScriptedEffect)
        #Next
    #End With
    sFilePath = f"common/decisions/FIL_{sCategoryName}_debug_decisions.txt"
    with open(sFilePath, "w") as filOutputFile:
        sDebugDecisions = GenerateHoI4UpDownEffectsDebugDecisions(sCategoryName="FIL_debug_decisions_category", arrEffectTargetNames=arrEffectTargetNames,
            sEffectPrefix="", sEffectSuffix="")
        filOutputFile.write(sDebugDecisions)
    #End With
    
    # Sci_Development_Degree
    sCategoryName = "Sci_Development_Degree"
    arrEffectTargetNames = [
        "Sci_Development_research",
        "Sci_Development_magic",
        "Sci_Development_medical",
        "Sci_Development_trends",
        "Sci_Development_religion",
    ]
    arrEffectTargetDesc = [
        "研究设施",
        "魔法研究",
        "医疗水平",
        "社会趋势",
        "主流宗教",
    ]
    arrEffectIdeas = [
        [
            "sci_develop_1_7",
            "sci_develop_1_6",
            "sci_develop_1_5",
            "sci_develop_1_4",
            "sci_develop_1_3",
            "sci_develop_1_2",
            "sci_develop_1_1",
        ],
        [
            "sci_develop_2_7",
            "sci_develop_2_6",
            "sci_develop_2_5",
            "sci_develop_2_4",
            "sci_develop_2_3",
            "sci_develop_2_2",
            "sci_develop_2_1",
        ],
        [
            "sci_develop_3_7",
            "sci_develop_3_6",
            "sci_develop_3_5",
            "sci_develop_3_4",
            "sci_develop_3_3",
            "sci_develop_3_2",
            "sci_develop_3_1",
        ],
        [
            "sci_develop_4_7",
            "sci_develop_4_6",
            "sci_develop_4_5",
            "sci_develop_4_4",
            "sci_develop_4_3",
            "sci_develop_4_2",
            "sci_develop_4_1",
        ],
        [
            "sci_develop_5_7",
            "sci_develop_5_6",
            "sci_develop_5_5",
            "sci_develop_5_4",
            "sci_develop_5_3",
            "sci_develop_5_2",
            "sci_develop_5_1",
        ],
    ]
    sFilePath = f"common/scripted_effects/FIL_{sCategoryName}_scripted_effects.txt"
    with open(sFilePath, "w") as filOutputFile:
        for i in range(0, len(arrEffectTargetNames)) :
            filOutputFile.write("# " + arrEffectTargetDesc[i] + sLineBreakMark)
            sScriptedEffect = GenerateHoI4UpDownEffects(sEffectTargetName=arrEffectTargetNames[i],
                sEffectPrefix="", sEffectSuffix="",
                arrEffectIdeas=arrEffectIdeas[i], arrEffectIdeaTooltips=arrEffectIdeas[i])
            filOutputFile.write(sScriptedEffect)
        #Next
    #End With
    sFilePath = f"common/decisions/FIL_{sCategoryName}_debug_decisions.txt"
    with open(sFilePath, "w") as filOutputFile:
        sDebugDecisions = GenerateHoI4UpDownEffectsDebugDecisions(sCategoryName="FIL_debug_decisions_category", arrEffectTargetNames=arrEffectTargetNames,
            sEffectPrefix="", sEffectSuffix="")
        filOutputFile.write(sDebugDecisions)
    #End With

    # Laws_Ideas
    sCategoryName = "Laws_Ideas"
    arrEffectTargetNames = [
        "Laws_Ideas_economic",
        "Laws_Ideas_trade",
        "Laws_Ideas_tax",
        "Laws_Ideas_mobilization",
        "Laws_Ideas_service",
        "Laws_Ideas_conscription",
    ]
    arrEffectTargetDesc = [
        "经济法",
        "贸易法",
        "税法",
        "动员法",
        "兵役法",
        "征募法",
    ]
    arrEffectIdeas = [
        [
            "laws_ideas_1_7",
            "laws_ideas_1_6",
            "laws_ideas_1_5",
            "laws_ideas_1_4",
            "laws_ideas_1_3",
            "laws_ideas_1_2",
            "laws_ideas_1_1",
        ],
        [
            "laws_ideas_2_7",
            "laws_ideas_2_6",
            "laws_ideas_2_5",
            "laws_ideas_2_4",
            "laws_ideas_2_3",
            "laws_ideas_2_2",
            "laws_ideas_2_1",
        ],
        [
            "laws_ideas_3_7",
            "laws_ideas_3_6",
            "laws_ideas_3_5",
            "laws_ideas_3_4",
            "laws_ideas_3_3",
            "laws_ideas_3_2",
            "laws_ideas_3_1",
        ],
        [
            "laws_ideas_4_7",
            "laws_ideas_4_6",
            "laws_ideas_4_5",
            "laws_ideas_4_4",
            "laws_ideas_4_3",
            "laws_ideas_4_2",
            "laws_ideas_4_1",
        ],
        [
            "laws_ideas_5_7",
            "laws_ideas_5_6",
            "laws_ideas_5_5",
            "laws_ideas_5_4",
            "laws_ideas_5_3",
            "laws_ideas_5_2",
            "laws_ideas_5_1",
        ],
        [
            "laws_ideas_6_7",
            "laws_ideas_6_6",
            "laws_ideas_6_5",
            "laws_ideas_6_4",
            "laws_ideas_6_3",
            "laws_ideas_6_2",
            "laws_ideas_6_1",
        ],
    ]
    sFilePath = f"common/scripted_effects/FIL_{sCategoryName}_scripted_effects.txt"
    with open(sFilePath, "w") as filOutputFile:
        for i in range(0, len(arrEffectTargetNames)) :
            filOutputFile.write("# " + arrEffectTargetDesc[i] + sLineBreakMark)
            sScriptedEffect = GenerateHoI4UpDownEffects(sEffectTargetName=arrEffectTargetNames[i],
                sEffectPrefix="", sEffectSuffix="",
                arrEffectIdeas=arrEffectIdeas[i], arrEffectIdeaTooltips=arrEffectIdeas[i])
            filOutputFile.write(sScriptedEffect)
        #Next
    #End With
    sFilePath = f"common/decisions/FIL_{sCategoryName}_debug_decisions.txt"
    with open(sFilePath, "w") as filOutputFile:
        sDebugDecisions = GenerateHoI4UpDownEffectsDebugDecisions(sCategoryName="FIL_debug_decisions_category", arrEffectTargetNames=arrEffectTargetNames,
            sEffectPrefix="", sEffectSuffix="")
        filOutputFile.write(sDebugDecisions)
    #End With

    # Policy_Ideas
    sCategoryName = "Policy_Ideas"
    arrEffectTargetNames = [
        "Policy_Ideas_diplomatic",
        "Policy_Ideas_workhours",
        "Policy_Ideas_welfare",
        "Policy_Ideas_education",
        "Policy_Ideas_publicity",
    ]
    arrEffectTargetDesc = [
        "外交政策",
        "工时政策",
        "福利政策",
        "教育政策",
        "宣传政策",
    ]
    arrEffectIdeas = [
        [
            "policy_ideas_1_7",
            "policy_ideas_1_6",
            "policy_ideas_1_5",
            "policy_ideas_1_4",
            "policy_ideas_1_3",
            "policy_ideas_1_2",
            "policy_ideas_1_1",
        ],
        [
            "policy_ideas_2_7",
            "policy_ideas_2_6",
            "policy_ideas_2_5",
            "policy_ideas_2_4",
            "policy_ideas_2_3",
            "policy_ideas_2_2",
            "policy_ideas_2_1",
        ],
        [
            "policy_ideas_3_7",
            "policy_ideas_3_6",
            "policy_ideas_3_5",
            "policy_ideas_3_4",
            "policy_ideas_3_3",
            "policy_ideas_3_2",
            "policy_ideas_3_1",
        ],
        [
            "policy_ideas_4_7",
            "policy_ideas_4_6",
            "policy_ideas_4_5",
            "policy_ideas_4_4",
            "policy_ideas_4_3",
            "policy_ideas_4_2",
            "policy_ideas_4_1",
        ],
        [
            "policy_ideas_5_7",
            "policy_ideas_5_6",
            "policy_ideas_5_5",
            "policy_ideas_5_4",
            "policy_ideas_5_3",
            "policy_ideas_5_2",
            "policy_ideas_5_1",
        ],
    ]
    sFilePath = f"common/scripted_effects/FIL_{sCategoryName}_scripted_effects.txt"
    with open(sFilePath, "w") as filOutputFile:
        for i in range(0, len(arrEffectTargetNames)) :
            filOutputFile.write("# " + arrEffectTargetDesc[i] + sLineBreakMark)
            sScriptedEffect = GenerateHoI4UpDownEffects(sEffectTargetName=arrEffectTargetNames[i],
                sEffectPrefix="", sEffectSuffix="",
                arrEffectIdeas=arrEffectIdeas[i], arrEffectIdeaTooltips=arrEffectIdeas[i])
            filOutputFile.write(sScriptedEffect)
        #Next
    #End With
    sFilePath = f"common/decisions/FIL_{sCategoryName}_debug_decisions.txt"
    with open(sFilePath, "w") as filOutputFile:
        sDebugDecisions = GenerateHoI4UpDownEffectsDebugDecisions(sCategoryName="FIL_debug_decisions_category", arrEffectTargetNames=arrEffectTargetNames,
            sEffectPrefix="", sEffectSuffix="")
        filOutputFile.write(sDebugDecisions)
    #End With
    
    # Race_Ideas
    sCategoryName = "Race_Ideas"
    arrEffectTargetNames = [
        "race_option_1",
        "race_option_2",
        "race_option_3",
        "race_option_4",
        "race_option_5",
    ]
    arrEffectTargetDesc = [
        "社会态度",
        "政治权利",
        "经济权利",
        "参军权利",
        "文化保留",
    ]
    arrEffectIdeas = [
        [
            "race_ideas_1_4",
            "race_ideas_1_3",
            "race_ideas_1_2",
            "race_ideas_1_1",
        ],
        [
            "race_ideas_2_6",
            "race_ideas_2_5",
            "race_ideas_2_4",
            "race_ideas_2_3",
            "race_ideas_2_2",
            "race_ideas_2_1",
        ],
        [
            "race_ideas_3_6",
            "race_ideas_3_5",
            "race_ideas_3_4",
            "race_ideas_3_3",
            "race_ideas_3_2",
            "race_ideas_3_1",
        ],
        [
            "race_ideas_4_6",
            "race_ideas_4_5",
            "race_ideas_4_4",
            "race_ideas_4_3",
            "race_ideas_4_2",
            "race_ideas_4_1",
        ],
        [
            "race_ideas_5_6",
            "race_ideas_5_5",
            "race_ideas_5_4",
            "race_ideas_5_3",
            "race_ideas_5_2",
            "race_ideas_5_1",
        ],
    ]
    sFilePath = f"common/scripted_effects/FIL_{sCategoryName}_scripted_effects.txt"
    with open(sFilePath, "w") as filOutputFile:
        for i in range(0, len(arrEffectTargetNames)) :
            filOutputFile.write("# " + arrEffectTargetDesc[i] + sLineBreakMark)
            sScriptedEffect = GenerateHoI4UpDownEffects(sEffectTargetName=arrEffectTargetNames[i],
                sEffectPrefix="", sEffectSuffix="",
                arrEffectIdeas=arrEffectIdeas[i], arrEffectIdeaTooltips=arrEffectIdeas[i])
            filOutputFile.write(sScriptedEffect)
        #Next
    #End With
    sFilePath = f"common/decisions/FIL_{sCategoryName}_debug_decisions.txt"
    with open(sFilePath, "w") as filOutputFile:
        sDebugDecisions = GenerateHoI4UpDownEffectsDebugDecisions(sCategoryName="FIL_debug_decisions_category", arrEffectTargetNames=arrEffectTargetNames,
            sEffectPrefix="", sEffectSuffix="")
        filOutputFile.write(sDebugDecisions)
    #End With

#End If