// Created by Crowbar 0.67

$modelname "pokemon\latias\megalatias_player.mdl"

$bodygroup "Mega_Latias"
{
	studio "reference.smd"
}
$bodygroup "LEye"
{
	studio "LEye1.smd"
	studio "LEye2.smd"
	studio "LEye3.smd"
	studio "LEye4.smd"
	studio "LEye5.smd"
}
$bodygroup "REye"
{
	studio "REye1.smd"
	studio "REye2.smd"
	studio "REye3.smd"
	studio "REye4.smd"
	studio "REye5.smd"
}
$bodygroup "Mouth"
{
	studio "Mouth1.smd"
	studio "Mouth2.smd"
	studio "Mouth3.smd"
	studio "Mouth4.smd"
	studio "Mouth5.smd"
	studio "Mouth6.smd"
}


$surfaceprop "flesh"

$contents "solid"

$illumposition 0 -2.328 24.698

$cdmaterials "models\pokemon\latias\"

$texturegroup "skinfamilies"
{
	{ "pm0380_51_BodyA1"       "pm0380_51_BodyB1"       "pm0380_51_Eye1"       }
	{ "pm0380_51_BodyA1_shiny" "pm0380_51_BodyB1_shiny" "pm0380_51_Eye1_shiny" }
}

$attachment "forward" "Head" 0 2 0 rotate 90 90 0

$cbox 0 0 0 0 0 0

$bbox -38.472 -62.599 -0.409 43.128 62.599 49.806

$definebone "pm0380_51" "" 0 0 0 0 0 90.000207 0 0 0 0 0 0
$definebone "Origin" "pm0380_51" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "Waist" "Origin" 0 36.933613 -4.80331 -89.999982 89.999982 0 0 0 0 0 0 0
$definebone "Hips" "Waist" 0 -0.000003 0 -0.000458 -179.999978 0 0 0 0 0 0 0
$definebone "RThigh" "Hips" 8.802915 -6.49965 9.226608 -46.526409 -55.128858 63.174216 0 0 0 0 0 0
$definebone "RLeg" "RThigh" 18.187603 0.000048 -0.000051 -0.569517 -0.000002 0.001088 0 0 0 0 0 0
$definebone "LThigh" "Hips" 8.802901 6.499742 9.226566 -46.526234 55.128909 -63.173868 0 0 0 0 0 0
$definebone "LLeg" "LThigh" 18.187706 0.000004 0.000065 -0.567626 0.001315 -0.001776 0 0 0 0 0 0
$definebone "Tail" "Hips" 18.030087 0.000046 -0.000076 0 0 0 0 0 0 0 0 0
$definebone "Spine" "Waist" 0 -0.000003 0 0 0 0 0 0 0 0 0 0
$definebone "RShoulder" "Spine" 6.302828 0.158114 0.000072 -0.000172 69.319242 90.000385 0 0 0 0 0 0
$definebone "RArm" "RShoulder" 10.026004 -0.000275 -0.000006 20.680624 -0.000057 -0.000115 0 0 0 0 0 0
$definebone "RFeelerF1" "RArm" 6.471311 0.000011 0.000007 0.000115 90.00061 -0.000115 0 0 0 0 0 0
$definebone "RArm2" "RArm" 0.000001 0 0 0.000057 -0.000057 0.000286 0 0 0 0 0 0
$definebone "RForeArm" "RArm" 6.471311 0.000011 0.000007 0.000115 90.00061 -0.000115 0 0 0 0 0 0
$definebone "RFeelerB" "RForeArm" 12.304752 -9.997181 0.000068 0.000172 -89.257943 0.000344 0 0 0 0 0 0
$definebone "RHand" "RForeArm" 27.218616 -1.781794 -0.003176 0.006646 -3.74468 0 0 0 0 0 0 0
$definebone "RFingerC" "RHand" 2.852118 -0.07976 -2.411084 9.412377 4.486489 0.000802 0 0 0 0 0 0
$definebone "RFingerB" "RHand" 3.279958 -0.046812 -0.000002 -0.007105 4.486432 0 0 0 0 0 0 0
$definebone "RFingerA" "RHand" 2.852287 -0.079735 2.410815 -9.426588 4.487348 0.000057 0 0 0 0 0 0
$definebone "LShoulder" "Spine" 6.302828 -0.158125 0.000072 0.000229 -69.319296 -90.000269 0 0 0 0 0 0
$definebone "LArm" "LShoulder" 10.025968 -0.000221 -0.000002 20.680454 -0.00338 0.000458 0 0 0 0 0 0
$definebone "LFeelerF1" "LArm" 6.471353 0.000359 -0.000003 -0.001891 -89.996943 -0.000115 0 0 0 0 0 0
$definebone "LArm2" "LArm" 0.000014 0 0.000008 -0.000057 0.003266 -0.001719 0 0 0 0 0 0
$definebone "LForeArm" "LArm" 6.471353 0.000359 -0.000003 -0.001891 -89.996943 -0.000115 0 0 0 0 0 0
$definebone "LFeelerB" "LForeArm" 12.304832 9.997032 -0.000027 -0.000516 89.257943 0.058671 0 0 0 0 0 0
$definebone "LHand" "LForeArm" 27.218605 1.781546 -0.003409 0.007219 3.745082 0 0 0 0 0 0 0
$definebone "LFingerC" "LHand" 2.852125 0.079687 -2.411077 9.412148 -4.487234 0.001547 0 0 0 0 0 0
$definebone "LFingerB" "LHand" 3.279943 0.046736 0.000002 -0.007334 -4.487692 0 0 0 0 0 0 0
$definebone "LFingerA" "LHand" 2.85228 0.079685 2.410827 -9.426761 -4.487634 0.001719 0 0 0 0 0 0
$definebone "Neck1" "Spine" 13.612886 -0.000009 0.000042 0 0 0 0 0 0 0 0 0
$definebone "Neck2" "Neck1" 5.872711 -0.000003 -0.000027 0 0 0 0 0 0 0 0 0
$definebone "Neck3" "Neck2" 5.813713 -0.000003 -0.000023 0 0 0 0 0 0 0 0 0
$definebone "Head" "Neck3" 5.624784 -0.000003 -0.000027 -31.887793 0 0 0 0 0 0 0 0
$definebone "RFeelerA" "Head" 3.2464 3.259775 -4.81805 56.993011 134.907888 127.377892 0 0 0 0 0 0
$definebone "LFeelerA" "Head" 3.24647 -3.259756 -4.817966 56.993349 -134.909937 -127.379558 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "Head" 8.740113 -0.000005 3.635273 31.931513 0.305329 90.794272 0 0 0 0 0 0

$bonemerge "pm0380_51"
$bonemerge "Origin"
$bonemerge "Waist"
$bonemerge "Spine"
$bonemerge "Neck1"
$bonemerge "Neck2"
$bonemerge "Neck3"
$bonemerge "Head"
$bonemerge "ValveBiped.Bip01_R_Hand"


$poseparameter "move_y" -1 1 loop 0
$poseparameter "move_x" -1 1 loop 0
$poseparameter "aim_yaw" -80 80 loop 0
$poseparameter "aim_pitch" -84.49052 81.74136 loop 0
$poseparameter "vertical_velocity" -1 1 loop 0
$poseparameter "vehicle_steer" -1 1 loop 0
$poseparameter "head_yaw" -80 80 loop 0
$poseparameter "head_pitch" -70 70 loop 0

$weightlist "weights_camfix" {
	 "pm0380_51" 0
	 "Origin" 0
	 "Waist" 0
	 "Hips" 0
	 "RThigh" 0
	 "RLeg" 0
	 "LThigh" 0
	 "LLeg" 0
	 "Tail" 0
	 "Spine" 0
	 "RShoulder" 0
	 "RArm" 0
	 "RFeelerF1" 0
	 "RArm2" 0
	 "RForeArm" 0
	 "RFeelerB" 0
	 "RHand" 0
	 "RFingerC" 0
	 "RFingerB" 0
	 "RFingerA" 0
	 "LShoulder" 0
	 "LArm" 0
	 "LFeelerF1" 0
	 "LArm2" 0
	 "LForeArm" 0
	 "LFeelerB" 0
	 "LHand" 0
	 "LFingerC" 0
	 "LFingerB" 0
	 "LFingerA" 0
	 "Neck1" 0
	 "Neck2" 0
	 "Neck3" 0
	 "Head" 0
	 "RFeelerA" 0
	 "LFeelerA" 0
	 "ValveBiped.Bip01_R_Hand" 1
}

$weightlist "weights_deltastand" {
	 "pm0380_51" 0
	 "Origin" 1
	 "Waist" 0
	 "Hips" 0
	 "RThigh" 0
	 "RLeg" 0
	 "LThigh" 0
	 "LLeg" 0
	 "Tail" 0
	 "Spine" 0
	 "RShoulder" 0
	 "RArm" 0
	 "RFeelerF1" 0
	 "RArm2" 0
	 "RForeArm" 0
	 "RFeelerB" 0
	 "RHand" 0
	 "RFingerC" 0
	 "RFingerB" 0
	 "RFingerA" 0
	 "LShoulder" 0
	 "LArm" 0
	 "LFeelerF1" 0
	 "LArm2" 0
	 "LForeArm" 0
	 "LFeelerB" 0
	 "LHand" 0
	 "LFingerC" 0
	 "LFingerB" 0
	 "LFingerA" 0
	 "Neck1" 0
	 "Neck2" 0
	 "Neck3" 0
	 "Head" 0
	 "RFeelerA" 0
	 "LFeelerA" 0
	 "ValveBiped.Bip01_R_Hand" 0
}

$weightlist "weights_idle_delta" {
	 "pm0380_51" 0
	 "Origin" 0
	 "Waist" 0
	 "Hips" 1
	 "RThigh" 1
	 "RLeg" 1
	 "LThigh" 1
	 "LLeg" 1
	 "Tail" 1
	 "Spine" 1
	 "RShoulder" 1
	 "RArm" 1
	 "RFeelerF1" 1
	 "RArm2" 1
	 "RForeArm" 1
	 "RFeelerB" 1
	 "RHand" 1
	 "RFingerC" 1
	 "RFingerB" 1
	 "RFingerA" 1
	 "LShoulder" 1
	 "LArm" 1
	 "LFeelerF1" 1
	 "LArm2" 1
	 "LForeArm" 1
	 "LFeelerB" 1
	 "LHand" 1
	 "LFingerC" 1
	 "LFingerB" 1
	 "LFingerA" 1
	 "Neck1" 1
	 "Neck2" 1
	 "Neck3" 1
	 "Head" 1
	 "RFeelerA" 1
	 "LFeelerA" 1
	 "ValveBiped.Bip01_R_Hand" 0
}

$weightlist "weights_jump_delta" {
	 "pm0380_51" 0
	 "Origin" 0
	 "Waist" 0
	 "Hips" 0
	 "RThigh" 0
	 "RLeg" 0
	 "LThigh" 0
	 "LLeg" 0
	 "Tail" 0
	 "Spine" 0
	 "RShoulder" 0
	 "RArm" 0
	 "RFeelerF1" 0
	 "RArm2" 0
	 "RForeArm" 0
	 "RFeelerB" 0
	 "RHand" 0
	 "RFingerC" 0
	 "RFingerB" 0
	 "RFingerA" 0
	 "LShoulder" 0
	 "LArm" 0
	 "LFeelerF1" 0
	 "LArm2" 0
	 "LForeArm" 0
	 "LFeelerB" 0
	 "LHand" 0
	 "LFingerC" 0
	 "LFingerB" 0
	 "LFingerA" 0
	 "Neck1" 0
	 "Neck2" 0
	 "Neck3" 0
	 "Head" 0
	 "RFeelerA" 0
	 "LFeelerA" 0
	 "ValveBiped.Bip01_R_Hand" 0
}

$weightlist "weights_battle_faint" {
	 "pm0380_51" 0
	 "Origin" 0
	 "Waist" 1
	 "Hips" 1
	 "RThigh" 0
	 "RLeg" 0
	 "LThigh" 0
	 "LLeg" 0
	 "Tail" 0
	 "Spine" 1
	 "RShoulder" 1
	 "RArm" 1
	 "RFeelerF1" 1
	 "RArm2" 1
	 "RForeArm" 1
	 "RFeelerB" 1
	 "RHand" 1
	 "RFingerC" 1
	 "RFingerB" 1
	 "RFingerA" 1
	 "LShoulder" 1
	 "LArm" 1
	 "LFeelerF1" 1
	 "LArm2" 1
	 "LForeArm" 1
	 "LFeelerB" 1
	 "LHand" 1
	 "LFingerC" 1
	 "LFingerB" 1
	 "LFingerA" 1
	 "Neck1" 1
	 "Neck2" 1
	 "Neck3" 1
	 "Head" 1
	 "RFeelerA" 1
	 "LFeelerA" 1
	 "ValveBiped.Bip01_R_Hand" 0
}

$weightlist "weights_Normal_HeadMove" {
	 "pm0380_51" 0
	 "Origin" 0
	 "Waist" 0
	 "Hips" 0
	 "RThigh" 0
	 "RLeg" 0
	 "LThigh" 0
	 "LLeg" 0
	 "Tail" 0
	 "Spine" 0
	 "RShoulder" 0
	 "RArm" 0
	 "RFeelerF1" 0
	 "RArm2" 0
	 "RForeArm" 0
	 "RFeelerB" 0
	 "RHand" 0
	 "RFingerC" 0
	 "RFingerB" 0
	 "RFingerA" 0
	 "LShoulder" 0
	 "LArm" 0
	 "LFeelerF1" 0
	 "LArm2" 0
	 "LForeArm" 0
	 "LFeelerB" 0
	 "LHand" 0
	 "LFingerC" 0
	 "LFingerB" 0
	 "LFingerA" 0
	 "Neck1" 1
	 "Neck2" 1
	 "Neck3" 1
	 "Head" 1
	 "RFeelerA" 0
	 "LFeelerA" 0
	 "ValveBiped.Bip01_R_Hand" 0
}

$animation "a_camfix_corrective_animation" "megalatias_player_anims\a_camfix_corrective_animation.smd" {
}

$animation "a_deltastand_corrective_animation" "megalatias_player_anims\a_deltastand_corrective_animation.smd" {
}

$animation "a_deltacrouch_corrective_animation" "megalatias_player_anims\a_deltacrouch_corrective_animation.smd" {
}

$animation "a_idle_delta_corrective_animation" "megalatias_player_anims\a_idle_delta_corrective_animation.smd" {
}

$animation "a_none_corrective_animation" "megalatias_player_anims\a_none_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_up_right_corrective_animation" "megalatias_player_anims\a_normal_HeadMove_up_right_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_up_center_corrective_animation" "megalatias_player_anims\a_normal_HeadMove_up_center_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_up_left_corrective_animation" "megalatias_player_anims\a_normal_HeadMove_up_left_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_mid_right_corrective_animation" "megalatias_player_anims\a_normal_HeadMove_mid_right_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_mid_center_corrective_animation" "megalatias_player_anims\a_normal_HeadMove_mid_center_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_mid_left_corrective_animation" "megalatias_player_anims\a_normal_HeadMove_mid_left_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_down_right_corrective_animation" "megalatias_player_anims\a_normal_HeadMove_down_right_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_down_center_corrective_animation" "megalatias_player_anims\a_normal_HeadMove_down_center_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_down_left_corrective_animation" "megalatias_player_anims\a_normal_HeadMove_down_left_corrective_animation.smd" {
}

$animation "a_camfix" "megalatias_player_anims\a_camfix.smd" {
	fps 30
	loop
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_camfix_corrective_animation" 0
	weightlist "weights_camfix"
}

$animation "a_none" "megalatias_player_anims\a_none.smd" {
	fps 30
	loop
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_none_corrective_animation" 0
	weightlist "weights_jump_delta"
}

$animation "a_deltastand" "megalatias_player_anims\a_deltastand.smd" {
	fps 30
	loop
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_deltastand_corrective_animation" 0
	weightlist "weights_deltastand"
}

$animation "a_deltacrouch" "megalatias_player_anims\a_deltacrouch.smd" {
	fps 30
	loop
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_deltacrouch_corrective_animation" 0
	weightlist "weights_deltastand"
}

$animation "a_basic_idle" "megalatias_player_anims\a_basic_idle.smd" {
	fps 30
	loop
	weightlist "weights_idle_delta"
}

$animation "a_basic_walk" "megalatias_player_anims\a_basic_walk.smd" {
	fps 60
	loop
	weightlist "weights_idle_delta"
}

$animation "a_basic_run" "megalatias_player_anims\a_basic_run.smd" {
	fps 30
	loop
	weightlist "weights_idle_delta"
}

$animation "a_idle" "megalatias_player_anims\a_idle.smd" {
	fps 30
	loop
}

$animation "a_idle_crouch" "megalatias_player_anims\a_idle_crouch.smd" {
	fps 30
	loop
}

$animation "a_idle_swim" "megalatias_player_anims\a_idle_swim.smd" {
	fps 30
	loop
}

$animation "a_idle_noclip" "megalatias_player_anims\a_idle_noclip.smd" {
	fps 30
	loop
}

$animation "a_jump" "megalatias_player_anims\a_jump.smd" {
	fps 30
}

$animation "a_reload" "megalatias_player_anims\a_reload.smd" {
	fps 30
	weightlist "weights_jump_delta"
}

$animation "a_reload_revolver" "megalatias_player_anims\a_reload_revolver.smd" {
	fps 30
	weightlist "weights_jump_delta"
}

$animation "a_reload_pistol" "megalatias_player_anims\a_reload_pistol.smd" {
	fps 30
	weightlist "weights_jump_delta"
}

$animation "a_reload_shotgun" "megalatias_player_anims\a_reload_shotgun.smd" {
	fps 30
	weightlist "weights_jump_delta"
}

$animation "a_normal_HeadMove_neutral" "megalatias_player_anims\a_normal_HeadMove_neutral.smd" {
	fps 30
}

$animation "a_normal_HeadMove_down_left" "megalatias_player_anims\a_normal_HeadMove_down_left.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_down_left_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_down_center" "megalatias_player_anims\a_normal_HeadMove_down_center.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_down_center_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_down_right" "megalatias_player_anims\a_normal_HeadMove_down_right.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_down_right_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_mid_left" "megalatias_player_anims\a_normal_HeadMove_mid_left.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_mid_left_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_mid_center" "megalatias_player_anims\a_normal_HeadMove_mid_center.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_mid_center_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_mid_right" "megalatias_player_anims\a_normal_HeadMove_mid_right.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_mid_right_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_up_left" "megalatias_player_anims\a_normal_HeadMove_up_left.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_up_left_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_up_center" "megalatias_player_anims\a_normal_HeadMove_up_center.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_up_center_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_up_right" "megalatias_player_anims\a_normal_HeadMove_up_right.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_up_right_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_runN" "megalatias_player_anims\a_runN.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_runNW" "megalatias_player_anims\a_runNW.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_runNE" "megalatias_player_anims\a_runNE.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_runS" "megalatias_player_anims\a_runS.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_runSW" "megalatias_player_anims\a_runSW.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_runSE" "megalatias_player_anims\a_runSE.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_runW" "megalatias_player_anims\a_runW.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_runE" "megalatias_player_anims\a_runE.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_walkC" "megalatias_player_anims\a_walkC.smd" {
	fps 30
	loop
	walkframe 42 LX LY
}

$animation "a_crouchC" "megalatias_player_anims\a_crouchC.smd" {
	fps 30
	loop
	walkframe 42 LX LY
}

$animation "a_walkN" "megalatias_player_anims\a_walkN.smd" {
	fps 30
	loop
	walkframe 42 LX LY
}

$animation "a_walkNW" "megalatias_player_anims\a_walkNW.smd" {
	fps 30
	loop
	walkframe 42 LX LY
}

$animation "a_walkNE" "megalatias_player_anims\a_walkNE.smd" {
	fps 30
	loop
	walkframe 42 LX LY
}

$animation "a_walkS" "megalatias_player_anims\a_walkS.smd" {
	fps 30
	loop
	walkframe 42 LX LY
}

$animation "a_walkSW" "megalatias_player_anims\a_walkSW.smd" {
	fps 30
	loop
	walkframe 42 LX LY
}

$animation "a_walkSE" "megalatias_player_anims\a_walkSE.smd" {
	fps 30
	loop
	walkframe 42 LX LY
}

$animation "a_walkW" "megalatias_player_anims\a_walkW.smd" {
	fps 30
	loop
	walkframe 42 LX LY
}

$animation "a_walkE" "megalatias_player_anims\a_walkE.smd" {
	fps 30
	loop
	walkframe 42 LX LY
}

$animation "a_swimN" "megalatias_player_anims\a_swimN.smd" {
	fps 30
	loop
	walkframe 42 LX LY
}

$animation "a_swimNW" "megalatias_player_anims\a_swimNW.smd" {
	fps 30
	loop
	walkframe 42 LX LY
}

$animation "a_swimNE" "megalatias_player_anims\a_swimNE.smd" {
	fps 30
	loop
	walkframe 42 LX LY
}

$animation "a_swimS" "megalatias_player_anims\a_swimS.smd" {
	fps 30
	loop
	walkframe 42 LX LY
}

$animation "a_swimSW" "megalatias_player_anims\a_swimSW.smd" {
	fps 30
	loop
	walkframe 42 LX LY
}

$animation "a_swimSE" "megalatias_player_anims\a_swimSE.smd" {
	fps 30
	loop
	walkframe 42 LX LY
}

$animation "a_swimW" "megalatias_player_anims\a_swimW.smd" {
	fps 30
	loop
	walkframe 42 LX LY
}

$animation "a_swimE" "megalatias_player_anims\a_swimE.smd" {
	fps 30
	loop
	walkframe 42 LX LY
}

$animation "a_crouchN" "megalatias_player_anims\a_crouchN.smd" {
	fps 30
	loop
	walkframe 42 LX LY
}

$animation "a_crouchNW" "megalatias_player_anims\a_crouchNW.smd" {
	fps 30
	loop
	walkframe 42 LX LY
}

$animation "a_crouchNE" "megalatias_player_anims\a_crouchNE.smd" {
	fps 30
	loop
	walkframe 42 LX LY
}

$animation "a_crouchS" "megalatias_player_anims\a_crouchS.smd" {
	fps 30
	loop
	walkframe 42 LX LY
}

$animation "a_crouchSW" "megalatias_player_anims\a_crouchSW.smd" {
	fps 30
	loop
	walkframe 42 LX LY
}

$animation "a_crouchSE" "megalatias_player_anims\a_crouchSE.smd" {
	fps 30
	loop
	walkframe 42 LX LY
}

$animation "a_crouchW" "megalatias_player_anims\a_crouchW.smd" {
	fps 30
	loop
	walkframe 42 LX LY
}

$animation "a_crouchE" "megalatias_player_anims\a_crouchE.smd" {
	fps 30
	loop
	walkframe 42 LX LY
}

$animation "a_noclipN" "megalatias_player_anims\a_noclipN.smd" {
	fps 30
	loop
}

$animation "a_noclipNW" "megalatias_player_anims\a_noclipNW.smd" {
	fps 30
	loop
}

$animation "a_noclipNE" "megalatias_player_anims\a_noclipNE.smd" {
	fps 30
	loop
}

$animation "a_noclipS" "megalatias_player_anims\a_noclipS.smd" {
	fps 30
	loop
}

$animation "a_noclipSW" "megalatias_player_anims\a_noclipSW.smd" {
	fps 30
	loop
}

$animation "a_noclipSE" "megalatias_player_anims\a_noclipSE.smd" {
	fps 30
	loop
}

$animation "a_noclipW" "megalatias_player_anims\a_noclipW.smd" {
	fps 30
	loop
}

$animation "a_noclipE" "megalatias_player_anims\a_noclipE.smd" {
	fps 30
	loop
}

$animation "a_special" "megalatias_player_anims\a_special.smd" {
	fps 30
}

$animation "a_physical" "megalatias_player_anims\a_physical.smd" {
	fps 30
}

$animation "a_idle_delta" "megalatias_player_anims\a_idle_delta.smd" {
	fps 30
	loop
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_idle_delta_corrective_animation" 0
	weightlist "weights_idle_delta"
}

$sequence "ragdoll" {
	"megalatias_player_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "camfix" {
	"a_camfix"
	delta
	fadein 0.3
	fadeout 0.3
}

$sequence "deltastand" {
	"a_deltastand"
	delta
	fadein 0.3
	fadeout 0.3
}

$sequence "deltacrouch" {
	"a_deltacrouch"
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "reference" {
	"megalatias_player_anims\reference.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle_delta" {
	"a_idle_delta"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
}

$sequence "jump_delta" {
	"a_none"
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
}

$sequence "basic_idle" {
	"a_basic_idle"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
}

$sequence "basic_walk" {
	"a_basic_walk"
	activity "ACT_WALK" 1
	fadein 0.2
	fadeout 0.2
}

$sequence "basic_run" {
	"a_basic_run"
	activity "ACT_RUN" 1
	fadein 0.2
	fadeout 0.2
}

$sequence "battle_faint" {
	"megalatias_player_anims\battle_faint.smd"
	activity "ACT_STARTDYING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_battle_faint"
}

$sequence "gesture_battle_faint" {
	"megalatias_player_anims\gesture_battle_faint.smd"
	activity "ACT_DYINGLOOP" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "battle_faint" 0 5 44 49 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "battle_gesture" {
	"megalatias_player_anims\battle_gesture.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_battle_faint"
}

$sequence "gesture_battle_gesture" {
	"megalatias_player_anims\gesture_battle_gesture.smd"
	activity "ACT_SIGNAL_GROUP" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "battle_gesture" 0 5 86 91 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "battle_flinch" {
	"megalatias_player_anims\battle_flinch.smd"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_battle_faint"
}

$sequence "battle_idle" {
	"megalatias_player_anims\battle_idle.smd"
	activity "ACT_IDLE_ANGRY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_battle_faint"
}

$sequence "battle_entry" {
	"megalatias_player_anims\battle_entry.smd"
	activity "ACT_MP_JUMP_START" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_battle_faint"
}

$sequence "battle_powermove" {
	"megalatias_player_anims\battle_powermove.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_battle_faint"
}

$sequence "gesture_battle_powermove" {
	"megalatias_player_anims\gesture_battle_powermove.smd"
	activity "ACT_GMOD_TAUNT_PERSISTENCE" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "battle_powermove" 0 5 67 73 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "battle_taunt" {
	"megalatias_player_anims\battle_taunt.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_battle_faint"
}

$sequence "gesture_battle_taunt" {
	"megalatias_player_anims\gesture_battle_taunt.smd"
	activity "ACT_GMOD_GESTURE_BECON" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "battle_taunt" 0 5 82 87 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "battle_special" {
	"megalatias_player_anims\battle_special.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_battle_faint"
}

$sequence "gesture_battle_special" {
	"megalatias_player_anims\gesture_battle_special.smd"
	activity "ACT_GESTURE_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.1
	blendlayer "battle_special" 0 5 70 75 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "battle_physical00" {
	"megalatias_player_anims\battle_physical00.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_battle_faint"
}

$sequence "gesture_battle_physical00" {
	"megalatias_player_anims\gesture_battle_physical00.smd"
	activity "ACT_GESTURE_MELEE_ATTACK2" 1
	fadein 0.2
	fadeout 0.1
	blendlayer "battle_physical00" 0 5 64 69 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "battle_physical01" {
	"megalatias_player_anims\battle_physical01.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_battle_faint"
}

$sequence "Normal_HeadMove" {
	"a_normal_HeadMove_up_right"
	"a_normal_HeadMove_up_center"
	"a_normal_HeadMove_up_left"
	"a_normal_HeadMove_mid_right"
	"a_normal_HeadMove_mid_center"
	"a_normal_HeadMove_mid_left"
	"a_normal_HeadMove_down_right"
	"a_normal_HeadMove_down_center"
	"a_normal_HeadMove_down_left"
	blend "aim_yaw" -80 80
	blend "aim_pitch" -70 70
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "sit" {
	"megalatias_player_anims\sit.smd"
	activity "ACT_HL2MP_SIT" 1
	fadein 0.3
	fadeout 0.3
	addlayer "Normal_HeadMove"
	fps 30
	loop
}

$sequence "sit_rollercoaster" {
	"megalatias_player_anims\sit_rollercoaster.smd"
	activity "ACT_GMOD_SIT_ROLLERCOASTER" 1
	fadein 0.3
	fadeout 0.3
	addlayer "Normal_HeadMove"
	fps 30
	loop
}

$sequence "drive_airboat" {
	"megalatias_player_anims\drive_airboat.smd"
	activity "ACT_DRIVE_AIRBOAT" 1
	fadein 0.3
	fadeout 0.3
	addlayer "Normal_HeadMove"
	fps 30
	loop
}

$sequence "drive_jeep" {
	"megalatias_player_anims\drive_jeep.smd"
	activity "ACT_DRIVE_JEEP" 1
	fadein 0.3
	fadeout 0.3
	addlayer "Normal_HeadMove"
	fps 30
	loop
}

$sequence "Idle" {
	"a_idle"
	activity "ACT_HL2MP_IDLE" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Crouch" {
	"a_idle_crouch"
	activity "ACT_HL2MP_IDLE_CROUCH" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Swim" {
	"a_idle_swim"
	activity "ACT_HL2MP_SWIM_IDLE" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Jump" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_JUMP" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Run" {
	"a_runNW"
	"a_runN"
	"a_runNE"
	"a_runW"
	"a_walkC"
	"a_runE"
	"a_runSW"
	"a_runS"
	"a_runSE"
	activity "ACT_HL2MP_RUN" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Crouch" {
	"a_crouchNW"
	"a_crouchN"
	"a_crouchNE"
	"a_crouchW"
	"a_crouchC"
	"a_crouchE"
	"a_crouchSW"
	"a_crouchS"
	"a_crouchSE"
	activity "ACT_HL2MP_WALK_CROUCH" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Walk" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_WALK" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Swim" {
	"a_swimNW"
	"a_swimN"
	"a_swimNE"
	"a_swimW"
	"a_idle_swim"
	"a_swimE"
	"a_swimSW"
	"a_swimS"
	"a_swimSE"
	activity "ACT_HL2MP_SWIM" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Noclip" {
	"a_noclipNW"
	"a_noclipN"
	"a_noclipNE"
	"a_noclipW"
	"a_idle_noclip"
	"a_noclipE"
	"a_noclipSW"
	"a_noclipS"
	"a_noclipSE"
	activity "ACT_GMOD_NOCLIP_LAYER" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_AR2" {
	"a_idle"
	activity "ACT_HL2MP_IDLE_AR2" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Crouch_AR2" {
	"a_idle_crouch"
	activity "ACT_HL2MP_IDLE_CROUCH_AR2" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Swim_AR2" {
	"a_idle_swim"
	activity "ACT_HL2MP_SWIM_IDLE_AR2" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Jump_AR2" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_JUMP_AR2" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Reload_AR2" {
	"a_reload"
	activity "ACT_HL2MP_GESTURE_RELOAD_AR2" 1
	fadein 0.4
	fadeout 0.4
}

$sequence "Run_AR2" {
	"a_runNW"
	"a_runN"
	"a_runNE"
	"a_runW"
	"a_walkC"
	"a_runE"
	"a_runSW"
	"a_runS"
	"a_runSE"
	activity "ACT_HL2MP_RUN_AR2" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Crouch_AR2" {
	"a_crouchNW"
	"a_crouchN"
	"a_crouchNE"
	"a_crouchW"
	"a_crouchC"
	"a_crouchE"
	"a_crouchSW"
	"a_crouchS"
	"a_crouchSE"
	activity "ACT_HL2MP_WALK_CROUCH_AR2" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Walk_AR2" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_WALK_AR2" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Swim_AR2" {
	"a_swimNW"
	"a_swimN"
	"a_swimNE"
	"a_swimW"
	"a_idle_swim"
	"a_swimE"
	"a_swimSW"
	"a_swimS"
	"a_swimSE"
	activity "ACT_HL2MP_SWIM_AR2" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_CAMERA" {
	"a_idle"
	activity "ACT_HL2MP_IDLE_CAMERA" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "camfix"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Crouch_CAMERA" {
	"a_idle_crouch"
	activity "ACT_HL2MP_IDLE_CROUCH_CAMERA" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "camfix"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Swim_CAMERA" {
	"a_idle_swim"
	activity "ACT_HL2MP_SWIM_IDLE_CAMERA" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "camfix"
	addlayer "Normal_HeadMove"
}

$sequence "Jump_CAMERA" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_JUMP_CAMERA" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "camfix"
	addlayer "Normal_HeadMove"
}

$sequence "Reload_CAMERA" {
	"a_reload"
	activity "ACT_HL2MP_GESTURE_RELOAD_CAMERA" 1
	fadein 0.4
	fadeout 0.4
}

$sequence "Run_CAMERA" {
	"a_runNW"
	"a_runN"
	"a_runNE"
	"a_runW"
	"a_walkC"
	"a_runE"
	"a_runSW"
	"a_runS"
	"a_runSE"
	activity "ACT_HL2MP_RUN_CAMERA" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "camfix"
	addlayer "Normal_HeadMove"
}

$sequence "Crouch_CAMERA" {
	"a_crouchNW"
	"a_crouchN"
	"a_crouchNE"
	"a_crouchW"
	"a_crouchC"
	"a_crouchE"
	"a_crouchSW"
	"a_crouchS"
	"a_crouchSE"
	activity "ACT_HL2MP_WALK_CROUCH_CAMERA" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "camfix"
	addlayer "Normal_HeadMove"
}

$sequence "Walk_CAMERA" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_WALK_CAMERA" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "camfix"
	addlayer "Normal_HeadMove"
}

$sequence "Swim_CAMERA" {
	"a_swimNW"
	"a_swimN"
	"a_swimNE"
	"a_swimW"
	"a_idle_swim"
	"a_swimE"
	"a_swimSW"
	"a_swimS"
	"a_swimSE"
	activity "ACT_HL2MP_SWIM_CAMERA" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "camfix"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_CROSSBOW" {
	"a_idle"
	activity "ACT_HL2MP_IDLE_CROSSBOW" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Crouch_CROSSBOW" {
	"a_idle_crouch"
	activity "ACT_HL2MP_IDLE_CROUCH_CROSSBOW" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Swim_CROSSBOW" {
	"a_idle_swim"
	activity "ACT_HL2MP_SWIM_IDLE_CROSSBOW" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Jump_CROSSBOW" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_JUMP_CROSSBOW" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Reload_CROSSBOW" {
	"a_reload"
	activity "ACT_HL2MP_GESTURE_RELOAD_CROSSBOW" 1
	fadein 0.4
	fadeout 0.4
}

$sequence "Run_CROSSBOW" {
	"a_runNW"
	"a_runN"
	"a_runNE"
	"a_runW"
	"a_walkC"
	"a_runE"
	"a_runSW"
	"a_runS"
	"a_runSE"
	activity "ACT_HL2MP_RUN_CROSSBOW" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Crouch_CROSSBOW" {
	"a_crouchNW"
	"a_crouchN"
	"a_crouchNE"
	"a_crouchW"
	"a_crouchC"
	"a_crouchE"
	"a_crouchSW"
	"a_crouchS"
	"a_crouchSE"
	activity "ACT_HL2MP_WALK_CROUCH_CROSSBOW" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Walk_CROSSBOW" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_WALK_CROSSBOW" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Swim_CROSSBOW" {
	"a_swimNW"
	"a_swimN"
	"a_swimNE"
	"a_swimW"
	"a_idle_swim"
	"a_swimE"
	"a_swimSW"
	"a_swimS"
	"a_swimSE"
	activity "ACT_HL2MP_SWIM_CROSSBOW" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_DUEL" {
	"a_idle"
	activity "ACT_HL2MP_IDLE_DUEL" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Crouch_DUEL" {
	"a_idle_crouch"
	activity "ACT_HL2MP_IDLE_CROUCH_DUEL" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Swim_DUEL" {
	"a_idle_swim"
	activity "ACT_HL2MP_SWIM_IDLE_DUEL" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Jump_DUEL" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_JUMP_DUEL" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Reload_DUEL" {
	"a_reload"
	activity "ACT_HL2MP_GESTURE_RELOAD_DUEL" 1
	fadein 0.4
	fadeout 0.4
}

$sequence "Run_DUEL" {
	"a_runNW"
	"a_runN"
	"a_runNE"
	"a_runW"
	"a_walkC"
	"a_runE"
	"a_runSW"
	"a_runS"
	"a_runSE"
	activity "ACT_HL2MP_RUN_DUEL" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Crouch_DUEL" {
	"a_crouchNW"
	"a_crouchN"
	"a_crouchNE"
	"a_crouchW"
	"a_crouchC"
	"a_crouchE"
	"a_crouchSW"
	"a_crouchS"
	"a_crouchSE"
	activity "ACT_HL2MP_WALK_CROUCH_DUEL" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Walk_DUEL" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_WALK_DUEL" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Swim_DUEL" {
	"a_swimNW"
	"a_swimN"
	"a_swimNE"
	"a_swimW"
	"a_idle_swim"
	"a_swimE"
	"a_swimSW"
	"a_swimS"
	"a_swimSE"
	activity "ACT_HL2MP_SWIM_DUEL" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_FIST" {
	"a_idle"
	activity "ACT_HL2MP_IDLE_FIST" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Crouch_FIST" {
	"a_idle_crouch"
	activity "ACT_HL2MP_IDLE_CROUCH_FIST" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Swim_FIST" {
	"a_idle_swim"
	activity "ACT_HL2MP_SWIM_IDLE_FIST" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Jump_FIST" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_JUMP_FIST" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Reload_FIST" {
	"a_reload"
	activity "ACT_HL2MP_GESTURE_RELOAD_FIST" 1
	fadein 0.4
	fadeout 0.4
}

$sequence "Run_FIST" {
	"a_runNW"
	"a_runN"
	"a_runNE"
	"a_runW"
	"a_walkC"
	"a_runE"
	"a_runSW"
	"a_runS"
	"a_runSE"
	activity "ACT_HL2MP_RUN_FIST" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Crouch_FIST" {
	"a_crouchNW"
	"a_crouchN"
	"a_crouchNE"
	"a_crouchW"
	"a_crouchC"
	"a_crouchE"
	"a_crouchSW"
	"a_crouchS"
	"a_crouchSE"
	activity "ACT_HL2MP_WALK_CROUCH_FIST" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Walk_FIST" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_WALK_FIST" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Swim_FIST" {
	"a_swimNW"
	"a_swimN"
	"a_swimNE"
	"a_swimW"
	"a_idle_swim"
	"a_swimE"
	"a_swimSW"
	"a_swimS"
	"a_swimSE"
	activity "ACT_HL2MP_SWIM_FIST" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_GRENADE" {
	"a_idle"
	activity "ACT_HL2MP_IDLE_GRENADE" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Crouch_GRENADE" {
	"a_idle_crouch"
	activity "ACT_HL2MP_IDLE_CROUCH_GRENADE" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Swim_GRENADE" {
	"a_idle_swim"
	activity "ACT_HL2MP_SWIM_IDLE_GRENADE" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Jump_GRENADE" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_JUMP_GRENADE" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Reload_GRENADE" {
	"a_reload"
	activity "ACT_HL2MP_GESTURE_RELOAD_GRENADE" 1
	fadein 0.4
	fadeout 0.4
}

$sequence "Run_GRENADE" {
	"a_runNW"
	"a_runN"
	"a_runNE"
	"a_runW"
	"a_walkC"
	"a_runE"
	"a_runSW"
	"a_runS"
	"a_runSE"
	activity "ACT_HL2MP_RUN_GRENADE" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Crouch_GRENADE" {
	"a_crouchNW"
	"a_crouchN"
	"a_crouchNE"
	"a_crouchW"
	"a_crouchC"
	"a_crouchE"
	"a_crouchSW"
	"a_crouchS"
	"a_crouchSE"
	activity "ACT_HL2MP_WALK_CROUCH_GRENADE" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Walk_GRENADE" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_WALK_GRENADE" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Swim_GRENADE" {
	"a_swimNW"
	"a_swimN"
	"a_swimNE"
	"a_swimW"
	"a_idle_swim"
	"a_swimE"
	"a_swimSW"
	"a_swimS"
	"a_swimSE"
	activity "ACT_HL2MP_SWIM_GRENADE" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_KNIFE" {
	"a_idle"
	activity "ACT_HL2MP_IDLE_KNIFE" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Crouch_KNIFE" {
	"a_idle_crouch"
	activity "ACT_HL2MP_IDLE_CROUCH_KNIFE" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Swim_KNIFE" {
	"a_idle_swim"
	activity "ACT_HL2MP_SWIM_IDLE_KNIFE" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Jump_KNIFE" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_JUMP_KNIFE" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Reload_KNIFE" {
	"a_reload"
	activity "ACT_HL2MP_GESTURE_RELOAD_KNIFE" 1
	fadein 0.4
	fadeout 0.4
}

$sequence "Run_KNIFE" {
	"a_runNW"
	"a_runN"
	"a_runNE"
	"a_runW"
	"a_walkC"
	"a_runE"
	"a_runSW"
	"a_runS"
	"a_runSE"
	activity "ACT_HL2MP_RUN_KNIFE" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Crouch_KNIFE" {
	"a_crouchNW"
	"a_crouchN"
	"a_crouchNE"
	"a_crouchW"
	"a_crouchC"
	"a_crouchE"
	"a_crouchSW"
	"a_crouchS"
	"a_crouchSE"
	activity "ACT_HL2MP_WALK_CROUCH_KNIFE" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Walk_KNIFE" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_WALK_KNIFE" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Swim_KNIFE" {
	"a_swimNW"
	"a_swimN"
	"a_swimNE"
	"a_swimW"
	"a_idle_swim"
	"a_swimE"
	"a_swimSW"
	"a_swimS"
	"a_swimSE"
	activity "ACT_HL2MP_SWIM_KNIFE" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_MELEE" {
	"a_idle"
	activity "ACT_HL2MP_IDLE_MELEE" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Crouch_MELEE" {
	"a_idle_crouch"
	activity "ACT_HL2MP_IDLE_CROUCH_MELEE" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Swim_MELEE" {
	"a_idle_swim"
	activity "ACT_HL2MP_SWIM_IDLE_MELEE" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Jump_MELEE" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_JUMP_MELEE" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Reload_MELEE" {
	"a_reload"
	activity "ACT_HL2MP_GESTURE_RELOAD_MELEE" 1
	fadein 0.4
	fadeout 0.4
}

$sequence "Run_MELEE" {
	"a_runNW"
	"a_runN"
	"a_runNE"
	"a_runW"
	"a_walkC"
	"a_runE"
	"a_runSW"
	"a_runS"
	"a_runSE"
	activity "ACT_HL2MP_RUN_MELEE" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Crouch_MELEE" {
	"a_crouchNW"
	"a_crouchN"
	"a_crouchNE"
	"a_crouchW"
	"a_crouchC"
	"a_crouchE"
	"a_crouchSW"
	"a_crouchS"
	"a_crouchSE"
	activity "ACT_HL2MP_WALK_CROUCH_MELEE" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Walk_MELEE" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_WALK_MELEE" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Swim_MELEE" {
	"a_swimNW"
	"a_swimN"
	"a_swimNE"
	"a_swimW"
	"a_idle_swim"
	"a_swimE"
	"a_swimSW"
	"a_swimS"
	"a_swimSE"
	activity "ACT_HL2MP_SWIM_MELEE" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_MELEE2" {
	"a_idle"
	activity "ACT_HL2MP_IDLE_MELEE2" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Crouch_MELEE2" {
	"a_idle_crouch"
	activity "ACT_HL2MP_IDLE_CROUCH_MELEE2" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Swim_MELEE2" {
	"a_idle_swim"
	activity "ACT_HL2MP_SWIM_IDLE_MELEE2" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Jump_MELEE2" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_JUMP_MELEE2" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Reload_MELEE2" {
	"a_reload"
	activity "ACT_HL2MP_GESTURE_RELOAD_MELEE2" 1
	fadein 0.4
	fadeout 0.4
}

$sequence "Run_MELEE2" {
	"a_runNW"
	"a_runN"
	"a_runNE"
	"a_runW"
	"a_walkC"
	"a_runE"
	"a_runSW"
	"a_runS"
	"a_runSE"
	activity "ACT_HL2MP_RUN_MELEE2" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Crouch_MELEE2" {
	"a_crouchNW"
	"a_crouchN"
	"a_crouchNE"
	"a_crouchW"
	"a_crouchC"
	"a_crouchE"
	"a_crouchSW"
	"a_crouchS"
	"a_crouchSE"
	activity "ACT_HL2MP_WALK_CROUCH_MELEE2" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Walk_MELEE2" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_WALK_MELEE2" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Swim_MELEE2" {
	"a_swimNW"
	"a_swimN"
	"a_swimNE"
	"a_swimW"
	"a_idle_swim"
	"a_swimE"
	"a_swimSW"
	"a_swimS"
	"a_swimSE"
	activity "ACT_HL2MP_SWIM_MELEE2" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_PASSIVE" {
	"a_idle"
	activity "ACT_HL2MP_IDLE_PASSIVE" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Crouch_PASSIVE" {
	"a_idle_crouch"
	activity "ACT_HL2MP_IDLE_CROUCH_PASSIVE" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Swim_PASSIVE" {
	"a_idle_swim"
	activity "ACT_HL2MP_SWIM_IDLE_PASSIVE" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Jump_PASSIVE" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_JUMP_PASSIVE" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Reload_PASSIVE" {
	"a_reload"
	activity "ACT_HL2MP_GESTURE_RELOAD_PASSIVE" 1
	fadein 0.4
	fadeout 0.4
}

$sequence "Run_PASSIVE" {
	"a_runNW"
	"a_runN"
	"a_runNE"
	"a_runW"
	"a_walkC"
	"a_runE"
	"a_runSW"
	"a_runS"
	"a_runSE"
	activity "ACT_HL2MP_RUN_PASSIVE" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Crouch_PASSIVE" {
	"a_crouchNW"
	"a_crouchN"
	"a_crouchNE"
	"a_crouchW"
	"a_crouchC"
	"a_crouchE"
	"a_crouchSW"
	"a_crouchS"
	"a_crouchSE"
	activity "ACT_HL2MP_WALK_CROUCH_PASSIVE" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Walk_PASSIVE" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_WALK_PASSIVE" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Swim_PASSIVE" {
	"a_swimNW"
	"a_swimN"
	"a_swimNE"
	"a_swimW"
	"a_idle_swim"
	"a_swimE"
	"a_swimSW"
	"a_swimS"
	"a_swimSE"
	activity "ACT_HL2MP_SWIM_PASSIVE" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_PISTOL" {
	"a_idle"
	activity "ACT_HL2MP_IDLE_PISTOL" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Crouch_PISTOL" {
	"a_idle_crouch"
	activity "ACT_HL2MP_IDLE_CROUCH_PISTOL" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Swim_PISTOL" {
	"a_idle_swim"
	activity "ACT_HL2MP_SWIM_IDLE_PISTOL" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Jump_PISTOL" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_JUMP_PISTOL" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Reload_PISTOL" {
	"a_reload_pistol"
	activity "ACT_HL2MP_GESTURE_RELOAD_PISTOL" 1
	fadein 0.4
	fadeout 0.4
}

$sequence "Run_PISTOL" {
	"a_runNW"
	"a_runN"
	"a_runNE"
	"a_runW"
	"a_walkC"
	"a_runE"
	"a_runSW"
	"a_runS"
	"a_runSE"
	activity "ACT_HL2MP_RUN_PISTOL" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Crouch_PISTOL" {
	"a_crouchNW"
	"a_crouchN"
	"a_crouchNE"
	"a_crouchW"
	"a_crouchC"
	"a_crouchE"
	"a_crouchSW"
	"a_crouchS"
	"a_crouchSE"
	activity "ACT_HL2MP_WALK_CROUCH_PISTOL" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Walk_PISTOL" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_WALK_PISTOL" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Swim_PISTOL" {
	"a_swimNW"
	"a_swimN"
	"a_swimNE"
	"a_swimW"
	"a_idle_swim"
	"a_swimE"
	"a_swimSW"
	"a_swimS"
	"a_swimSE"
	activity "ACT_HL2MP_SWIM_PISTOL" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_PHYSGUN" {
	"a_idle"
	activity "ACT_HL2MP_IDLE_PHYSGUN" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Crouch_PHYSGUN" {
	"a_idle_crouch"
	activity "ACT_HL2MP_IDLE_CROUCH_PHYSGUN" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Swim_PHYSGUN" {
	"a_idle_swim"
	activity "ACT_HL2MP_SWIM_IDLE_PHYSGUN" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Jump_PHYSGUN" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_JUMP_PHYSGUN" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Reload_PHYSGUN" {
	"a_reload"
	activity "ACT_HL2MP_GESTURE_RELOAD_PHYSGUN" 1
	fadein 0.4
	fadeout 0.4
}

$sequence "Run_PHYSGUN" {
	"a_runNW"
	"a_runN"
	"a_runNE"
	"a_runW"
	"a_walkC"
	"a_runE"
	"a_runSW"
	"a_runS"
	"a_runSE"
	activity "ACT_HL2MP_RUN_PHYSGUN" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Crouch_PHYSGUN" {
	"a_crouchNW"
	"a_crouchN"
	"a_crouchNE"
	"a_crouchW"
	"a_crouchC"
	"a_crouchE"
	"a_crouchSW"
	"a_crouchS"
	"a_crouchSE"
	activity "ACT_HL2MP_WALK_CROUCH_PHYSGUN" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Walk_PHYSGUN" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_WALK_PHYSGUN" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Swim_PHYSGUN" {
	"a_swimNW"
	"a_swimN"
	"a_swimNE"
	"a_swimW"
	"a_idle_swim"
	"a_swimE"
	"a_swimSW"
	"a_swimS"
	"a_swimSE"
	activity "ACT_HL2MP_SWIM_PHYSGUN" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_REVOLVER" {
	"a_idle"
	activity "ACT_HL2MP_IDLE_REVOLVER" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Crouch_REVOLVER" {
	"a_idle_crouch"
	activity "ACT_HL2MP_IDLE_CROUCH_REVOLVER" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Swim_REVOLVER" {
	"a_idle_swim"
	activity "ACT_HL2MP_SWIM_IDLE_REVOLVER" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Jump_REVOLVER" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_JUMP_REVOLVER" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Reload_REVOLVER" {
	"a_reload_revolver"
	activity "ACT_HL2MP_GESTURE_RELOAD_REVOLVER" 1
	fadein 0.4
	fadeout 0.4
}

$sequence "Run_REVOLVER" {
	"a_runNW"
	"a_runN"
	"a_runNE"
	"a_runW"
	"a_walkC"
	"a_runE"
	"a_runSW"
	"a_runS"
	"a_runSE"
	activity "ACT_HL2MP_RUN_REVOLVER" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Crouch_REVOLVER" {
	"a_crouchNW"
	"a_crouchN"
	"a_crouchNE"
	"a_crouchW"
	"a_crouchC"
	"a_crouchE"
	"a_crouchSW"
	"a_crouchS"
	"a_crouchSE"
	activity "ACT_HL2MP_WALK_CROUCH_REVOLVER" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Walk_REVOLVER" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_WALK_REVOLVER" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Swim_REVOLVER" {
	"a_swimNW"
	"a_swimN"
	"a_swimNE"
	"a_swimW"
	"a_idle_swim"
	"a_swimE"
	"a_swimSW"
	"a_swimS"
	"a_swimSE"
	activity "ACT_HL2MP_SWIM_REVOLVER" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_RPG" {
	"a_idle"
	activity "ACT_HL2MP_IDLE_RPG" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Crouch_RPG" {
	"a_idle_crouch"
	activity "ACT_HL2MP_IDLE_CROUCH_RPG" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Swim_RPG" {
	"a_idle_swim"
	activity "ACT_HL2MP_SWIM_IDLE_RPG" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Jump_RPG" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_JUMP_RPG" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Reload_RPG" {
	"a_reload"
	activity "ACT_HL2MP_GESTURE_RELOAD_RPG" 1
	fadein 0.4
	fadeout 0.4
}

$sequence "Run_RPG" {
	"a_runNW"
	"a_runN"
	"a_runNE"
	"a_runW"
	"a_walkC"
	"a_runE"
	"a_runSW"
	"a_runS"
	"a_runSE"
	activity "ACT_HL2MP_RUN_RPG" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Crouch_RPG" {
	"a_crouchNW"
	"a_crouchN"
	"a_crouchNE"
	"a_crouchW"
	"a_crouchC"
	"a_crouchE"
	"a_crouchSW"
	"a_crouchS"
	"a_crouchSE"
	activity "ACT_HL2MP_WALK_CROUCH_RPG" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Walk_RPG" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_WALK_RPG" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Swim_RPG" {
	"a_swimNW"
	"a_swimN"
	"a_swimNE"
	"a_swimW"
	"a_idle_swim"
	"a_swimE"
	"a_swimSW"
	"a_swimS"
	"a_swimSE"
	activity "ACT_HL2MP_SWIM_RPG" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_SHOTGUN" {
	"a_idle"
	activity "ACT_HL2MP_IDLE_SHOTGUN" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Crouch_SHOTGUN" {
	"a_idle_crouch"
	activity "ACT_HL2MP_IDLE_CROUCH_SHOTGUN" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Swim_SHOTGUN" {
	"a_idle_swim"
	activity "ACT_HL2MP_SWIM_IDLE_SHOTGUN" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Jump_SHOTGUN" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_JUMP_SHOTGUN" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Reload_SHOTGUN" {
	"a_reload_shotgun"
	activity "ACT_HL2MP_GESTURE_RELOAD_SHOTGUN" 1
	fadein 0.4
	fadeout 0.4
}

$sequence "Run_SHOTGUN" {
	"a_runNW"
	"a_runN"
	"a_runNE"
	"a_runW"
	"a_walkC"
	"a_runE"
	"a_runSW"
	"a_runS"
	"a_runSE"
	activity "ACT_HL2MP_RUN_SHOTGUN" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Crouch_SHOTGUN" {
	"a_crouchNW"
	"a_crouchN"
	"a_crouchNE"
	"a_crouchW"
	"a_crouchC"
	"a_crouchE"
	"a_crouchSW"
	"a_crouchS"
	"a_crouchSE"
	activity "ACT_HL2MP_WALK_CROUCH_SHOTGUN" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Walk_SHOTGUN" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_WALK_SHOTGUN" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Swim_SHOTGUN" {
	"a_swimNW"
	"a_swimN"
	"a_swimNE"
	"a_swimW"
	"a_idle_swim"
	"a_swimE"
	"a_swimSW"
	"a_swimS"
	"a_swimSE"
	activity "ACT_HL2MP_SWIM_SHOTGUN" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_SLAM" {
	"a_idle"
	activity "ACT_HL2MP_IDLE_SLAM" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Crouch_SLAM" {
	"a_idle_crouch"
	activity "ACT_HL2MP_IDLE_CROUCH_SLAM" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Swim_SLAM" {
	"a_idle_swim"
	activity "ACT_HL2MP_SWIM_IDLE_SLAM" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Jump_SLAM" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_JUMP_SLAM" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Reload_SLAM" {
	"a_reload"
	activity "ACT_HL2MP_GESTURE_RELOAD_SLAM" 1
	fadein 0.4
	fadeout 0.4
}

$sequence "Run_SLAM" {
	"a_runNW"
	"a_runN"
	"a_runNE"
	"a_runW"
	"a_walkC"
	"a_runE"
	"a_runSW"
	"a_runS"
	"a_runSE"
	activity "ACT_HL2MP_RUN_SLAM" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Crouch_SLAM" {
	"a_crouchNW"
	"a_crouchN"
	"a_crouchNE"
	"a_crouchW"
	"a_crouchC"
	"a_crouchE"
	"a_crouchSW"
	"a_crouchS"
	"a_crouchSE"
	activity "ACT_HL2MP_WALK_CROUCH_SLAM" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Walk_SLAM" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_WALK_SLAM" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Swim_SLAM" {
	"a_swimNW"
	"a_swimN"
	"a_swimNE"
	"a_swimW"
	"a_idle_swim"
	"a_swimE"
	"a_swimSW"
	"a_swimS"
	"a_swimSE"
	activity "ACT_HL2MP_SWIM_SLAM" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_SMG1" {
	"a_idle"
	activity "ACT_HL2MP_IDLE_SMG1" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Crouch_SMG1" {
	"a_idle_crouch"
	activity "ACT_HL2MP_IDLE_CROUCH_SMG1" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Swim_SMG1" {
	"a_idle_swim"
	activity "ACT_HL2MP_SWIM_IDLE_SMG1" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Jump_SMG1" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_JUMP_SMG1" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Reload_SMG1" {
	"a_reload"
	activity "ACT_HL2MP_GESTURE_RELOAD_SMG1" 1
	fadein 0.4
	fadeout 0.4
}

$sequence "Run_SMG1" {
	"a_runNW"
	"a_runN"
	"a_runNE"
	"a_runW"
	"a_walkC"
	"a_runE"
	"a_runSW"
	"a_runS"
	"a_runSE"
	activity "ACT_HL2MP_RUN_SMG1" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Crouch_SMG1" {
	"a_crouchNW"
	"a_crouchN"
	"a_crouchNE"
	"a_crouchW"
	"a_crouchC"
	"a_crouchE"
	"a_crouchSW"
	"a_crouchS"
	"a_crouchSE"
	activity "ACT_HL2MP_WALK_CROUCH_SMG1" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Walk_SMG1" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_WALK_SMG1" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Swim_SMG1" {
	"a_swimNW"
	"a_swimN"
	"a_swimNE"
	"a_swimW"
	"a_idle_swim"
	"a_swimE"
	"a_swimSW"
	"a_swimS"
	"a_swimSE"
	activity "ACT_HL2MP_SWIM_SMG1" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_MAGIC" {
	"a_idle"
	activity "ACT_HL2MP_IDLE_MAGIC" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Crouch_MAGIC" {
	"a_idle_crouch"
	activity "ACT_HL2MP_IDLE_CROUCH_MAGIC" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Swim_MAGIC" {
	"a_idle_swim"
	activity "ACT_HL2MP_SWIM_IDLE_MAGIC" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Jump_MAGIC" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_JUMP_MAGIC" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Reload_MAGIC" {
	"a_reload"
	activity "ACT_HL2MP_GESTURE_RELOAD_MAGIC" 1
	fadein 0.4
	fadeout 0.4
}

$sequence "Run_MAGIC" {
	"a_runNW"
	"a_runN"
	"a_runNE"
	"a_runW"
	"a_walkC"
	"a_runE"
	"a_runSW"
	"a_runS"
	"a_runSE"
	activity "ACT_HL2MP_RUN_MAGIC" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Crouch_MAGIC" {
	"a_crouchNW"
	"a_crouchN"
	"a_crouchNE"
	"a_crouchW"
	"a_crouchC"
	"a_crouchE"
	"a_crouchSW"
	"a_crouchS"
	"a_crouchSE"
	activity "ACT_HL2MP_WALK_CROUCH_MAGIC" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Walk_MAGIC" {
	"a_walkNW"
	"a_walkN"
	"a_walkNE"
	"a_walkW"
	"a_walkC"
	"a_walkE"
	"a_walkSW"
	"a_walkS"
	"a_walkSE"
	activity "ACT_HL2MP_WALK_MAGIC" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$sequence "Swim_MAGIC" {
	"a_swimNW"
	"a_swimN"
	"a_swimNE"
	"a_swimW"
	"a_idle_swim"
	"a_swimE"
	"a_swimSW"
	"a_swimS"
	"a_swimSE"
	activity "ACT_HL2MP_SWIM_MAGIC" 1
	blend "move_y" -1 1
	blend "move_x" 1 -1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
	addlayer "Normal_HeadMove"
}

$collisionjoints "megalatias_player_physics.smd"
{
	$mass 52
	$inertia 10
	$damping 0
	$rotdamping 4
	$rootbone "Waist"


	$jointconstrain "Spine" x limit -30 30 0
	$jointconstrain "Spine" y limit -30 30 0
	$jointconstrain "Spine" z limit -30 30 0

	$jointconstrain "Neck1" x limit -30 30 0
	$jointconstrain "Neck1" y limit -30 30 0
	$jointconstrain "Neck1" z limit -30 30 0

	$jointconstrain "Neck2" x limit -30 30 0
	$jointconstrain "Neck2" y limit -30 30 0
	$jointconstrain "Neck2" z limit -30 30 0

	$jointconstrain "Neck3" x limit -30 30 0
	$jointconstrain "Neck3" y limit -30 30 0
	$jointconstrain "Neck3" z limit -30 30 0

	$jointconstrain "Head" x limit -30 30 0
	$jointconstrain "Head" y limit -30 30 0
	$jointconstrain "Head" z limit -30 30 0

	$jointconstrain "LArm" x limit -75 75 0
	$jointconstrain "LArm" y limit 0 0 0
	$jointconstrain "LArm" z limit -75 75 0

	$jointconstrain "LForeArm" x limit -60 60 0
	$jointconstrain "LForeArm" y limit -60 60 0
	$jointconstrain "LForeArm" z limit -60 60 0

	$jointconstrain "LHand" x limit 0 0 0
	$jointconstrain "LHand" y limit -75 75 0
	$jointconstrain "LHand" z limit 0 0 0

	$jointconstrain "LFeelerB" x limit -15 15 0
	$jointconstrain "LFeelerB" y limit -60 60 0
	$jointconstrain "LFeelerB" z limit -45 45 0

	$jointconstrain "RArm" x limit -75 75 0
	$jointconstrain "RArm" y limit 0 0 0
	$jointconstrain "RArm" z limit -75 75 0

	$jointconstrain "RForeArm" x limit -60 60 0
	$jointconstrain "RForeArm" y limit -60 60 0
	$jointconstrain "RForeArm" z limit -60 60 0

	$jointconstrain "RHand" x limit 0 0 0
	$jointconstrain "RHand" y limit -75 75 0
	$jointconstrain "RHand" z limit 0 0 0

	$jointconstrain "RFeelerB" x limit -15 15 0
	$jointconstrain "RFeelerB" y limit -60 60 0
	$jointconstrain "RFeelerB" z limit -45 45 0

	$jointconstrain "LFeelerA" x limit -20 20 0
	$jointconstrain "LFeelerA" y limit -45 45 0
	$jointconstrain "LFeelerA" z limit -45 45 0

	$jointconstrain "RFeelerA" x limit -20 20 0
	$jointconstrain "RFeelerA" y limit -45 45 0
	$jointconstrain "RFeelerA" z limit -45 45 0

	$jointconstrain "LThigh" x limit -30 30 0
	$jointconstrain "LThigh" y limit -30 30 0
	$jointconstrain "LThigh" z limit -50 50 0

	$jointconstrain "LLeg" x limit -20 20 0
	$jointconstrain "LLeg" y limit -30 30 0
	$jointconstrain "LLeg" z limit -20 20 0

	$jointconstrain "RThigh" x limit -30 30 0
	$jointconstrain "RThigh" y limit -30 30 0
	$jointconstrain "RThigh" z limit -50 50 0

	$jointconstrain "RLeg" x limit -20 20 0
	$jointconstrain "RLeg" y limit -30 30 0
	$jointconstrain "RLeg" z limit -20 20 0

	$jointconstrain "Tail" x limit -30 30 0
	$jointconstrain "Tail" y limit -30 30 0
	$jointconstrain "Tail" z limit -30 30 0
}
