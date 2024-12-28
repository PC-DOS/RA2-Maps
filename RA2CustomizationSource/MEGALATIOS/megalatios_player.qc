// Created by Crowbar 0.67

$modelname "pokemon\latios\megalatios_player.mdl"

$bodygroup "Mega_Latios"
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

$illumposition 0 -2.947 31.264

$cdmaterials "models\pokemon\latios\"

$texturegroup "skinfamilies"
{
	{ "pm0381_51_BodyA1"       "pm0381_51_BodyB1"       "pm0381_51_Eye1"       }
	{ "pm0381_51_BodyA1_shiny" "pm0381_51_BodyB1_shiny" "pm0381_51_Eye1_shiny" }
}

$attachment "forward" "Head" 0 2 0 rotate 90 90 0

$cbox 0 0 0 0 0 0

$bbox -48.699 -79.239 -0.518 54.592 79.239 63.046

$definebone "pm0381_51" "" 0 0 0 0 0 90.000207 0 0 0 0 0 0
$definebone "Origin" "pm0381_51" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "Waist" "Origin" 0 46.751411 -6.080143 -89.999982 89.999982 0 0 0 0 0 0 0
$definebone "Hips" "Waist" -0.000001 -0.000002 0 -0.000458 -179.999978 0 0 0 0 0 0 0
$definebone "RThigh" "Hips" 11.142972 -8.227365 11.679375 -46.526637 -55.128738 63.173984 0 0 0 0 0 0
$definebone "RLeg" "RThigh" 23.022339 0.000032 -0.000042 -0.567744 -0.000345 -0.002237 0 0 0 0 0 0
$definebone "LThigh" "Hips" 11.142941 8.227504 11.679321 -46.526579 55.130285 -63.175193 0 0 0 0 0 0
$definebone "LLeg" "LThigh" 23.022453 -0.000023 -0.000395 -0.566485 0.001429 0.000456 0 0 0 0 0 0
$definebone "Tail" "Hips" 22.822918 0.000047 -0.000008 0 0 0 0 0 0 0 0 0
$definebone "Spine" "Waist" -0.000001 -0.000002 0 0 0 0 0 0 0 0 0 0
$definebone "RShoulder" "Spine" 7.978222 0.200145 0.00005 -0.000172 69.319242 90.00033 0 0 0 0 0 0
$definebone "RArm" "RShoulder" 12.691107 0.000076 -0.00001 20.680624 0.002807 -0.000172 0 0 0 0 0 0
$definebone "RFeelerF1" "RArm" 8.191567 -0.000324 0.000008 -0.001375 89.997865 -0.000057 0 0 0 0 0 0
$definebone "RArm2" "RArm" -0.000012 0.000004 -0.000006 -0.000057 -0.002521 0.001261 0 0 0 0 0 0
$definebone "RForeArm" "RArm" 8.191567 -0.000324 0.000008 -0.001375 89.997865 -0.000057 0 0 0 0 0 0
$definebone "RFeelerB" "RForeArm" 15.575483 -12.654573 -0.000014 0.000057 -89.257711 -0.000115 0 0 0 0 0 0
$definebone "RHand" "RForeArm" 34.453732 -2.25531 -0.00427 0.006761 -3.745196 0 0 0 0 0 0 0
$definebone "RFingerC" "RHand" 3.610286 -0.100889 -3.052035 9.412322 4.486947 -0.000115 0 0 0 0 0 0
$definebone "RFingerB" "RHand" 4.151853 -0.059172 -0.000154 -0.007162 4.487004 0 0 0 0 0 0 0
$definebone "RFingerA" "RHand" 3.610501 -0.100853 3.051637 -9.426587 4.487119 0.000057 0 0 0 0 0 0
$definebone "LShoulder" "Spine" 7.978222 -0.200154 -0.00008 0.000286 -69.319296 -90.000385 0 0 0 0 0 0
$definebone "LArm" "LShoulder" 12.691116 -0.000145 -0.000005 20.680337 -0.000115 -0.000401 0 0 0 0 0 0
$definebone "LFeelerF1" "LArm" 8.191532 0.000004 -0.00004 -0.000057 -89.999982 -0.000286 0 0 0 0 0 0
$definebone "LArm2" "LArm" 0.000002 0.000008 -0.000002 0.000057 0.000172 0.000401 0 0 0 0 0 0
$definebone "LForeArm" "LArm" 8.191532 0.000004 -0.00004 -0.000057 -89.999982 -0.000286 0 0 0 0 0 0
$definebone "LFeelerB" "LForeArm" 15.575697 12.65449 -0.000094 0.000057 89.258463 0.058843 0 0 0 0 0 0
$definebone "LHand" "LForeArm" 34.453838 2.255129 -0.004474 0.007047 3.744508 0.000057 0 0 0 0 0 0
$definebone "LFingerC" "LHand" 3.610269 0.100914 -3.052008 9.412435 -4.486775 -0.000974 0 0 0 0 0 0
$definebone "LFingerB" "LHand" 4.15183 0.059212 -0.000029 -0.007105 -4.487062 0 0 0 0 0 0 0
$definebone "LFingerA" "LHand" 3.610509 0.100906 3.051656 -9.42653 -4.486717 -0.000115 0 0 0 0 0 0
$definebone "Neck1" "Spine" 17.231289 -0.000002 -0.00021 0 0 0 0 0 0 0 0 0
$definebone "Neck2" "Neck1" 7.433805 -0.000001 -0.00005 0 0 0 0 0 0 0 0 0
$definebone "Neck3" "Neck2" 7.359138 -0.000001 -0.000031 0 0 0 0 0 0 0 0 0
$definebone "Head" "Neck3" 7.119984 -0.000001 -0.000023 -31.887851 0 0 0 0 0 0 0 0
$definebone "RFeelerA" "Head" 4.109354 4.12628 -6.098812 56.993421 134.907929 127.378233 0 0 0 0 0 0
$definebone "LFeelerA" "Head" 4.109452 -4.126264 -6.09869 56.99313 -134.908735 -127.379107 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "Head" 12.322554 -0.00014 3.820961 29.451291 -1.447005 89.8682 0 0 0 0 0 0

$bonemerge "pm0381_51"
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
	 "pm0381_51" 0
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
	 "pm0381_51" 0
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
	 "pm0381_51" 0
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
	 "pm0381_51" 0
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
	 "pm0381_51" 0
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
	 "pm0381_51" 0
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

$animation "a_camfix_corrective_animation" "megalatios_player_anims\a_camfix_corrective_animation.smd" {
}

$animation "a_deltastand_corrective_animation" "megalatios_player_anims\a_deltastand_corrective_animation.smd" {
}

$animation "a_deltacrouch_corrective_animation" "megalatios_player_anims\a_deltacrouch_corrective_animation.smd" {
}

$animation "a_idle_delta_corrective_animation" "megalatios_player_anims\a_idle_delta_corrective_animation.smd" {
}

$animation "a_none_corrective_animation" "megalatios_player_anims\a_none_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_up_right_corrective_animation" "megalatios_player_anims\a_normal_HeadMove_up_right_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_up_center_corrective_animation" "megalatios_player_anims\a_normal_HeadMove_up_center_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_up_left_corrective_animation" "megalatios_player_anims\a_normal_HeadMove_up_left_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_mid_right_corrective_animation" "megalatios_player_anims\a_normal_HeadMove_mid_right_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_mid_center_corrective_animation" "megalatios_player_anims\a_normal_HeadMove_mid_center_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_mid_left_corrective_animation" "megalatios_player_anims\a_normal_HeadMove_mid_left_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_down_right_corrective_animation" "megalatios_player_anims\a_normal_HeadMove_down_right_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_down_center_corrective_animation" "megalatios_player_anims\a_normal_HeadMove_down_center_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_down_left_corrective_animation" "megalatios_player_anims\a_normal_HeadMove_down_left_corrective_animation.smd" {
}

$animation "a_camfix" "megalatios_player_anims\a_camfix.smd" {
	fps 30
	loop
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_camfix_corrective_animation" 0
	weightlist "weights_camfix"
}

$animation "a_none" "megalatios_player_anims\a_none.smd" {
	fps 30
	loop
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_none_corrective_animation" 0
	weightlist "weights_jump_delta"
}

$animation "a_deltastand" "megalatios_player_anims\a_deltastand.smd" {
	fps 30
	loop
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_deltastand_corrective_animation" 0
	weightlist "weights_deltastand"
}

$animation "a_deltacrouch" "megalatios_player_anims\a_deltacrouch.smd" {
	fps 30
	loop
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_deltacrouch_corrective_animation" 0
	weightlist "weights_deltastand"
}

$animation "a_basic_idle" "megalatios_player_anims\a_basic_idle.smd" {
	fps 30
	loop
	weightlist "weights_idle_delta"
}

$animation "a_basic_walk" "megalatios_player_anims\a_basic_walk.smd" {
	fps 60
	loop
	weightlist "weights_idle_delta"
}

$animation "a_basic_run" "megalatios_player_anims\a_basic_run.smd" {
	fps 30
	loop
	weightlist "weights_idle_delta"
}

$animation "a_idle" "megalatios_player_anims\a_idle.smd" {
	fps 30
	loop
}

$animation "a_idle_crouch" "megalatios_player_anims\a_idle_crouch.smd" {
	fps 30
	loop
}

$animation "a_idle_swim" "megalatios_player_anims\a_idle_swim.smd" {
	fps 30
	loop
}

$animation "a_idle_noclip" "megalatios_player_anims\a_idle_noclip.smd" {
	fps 30
	loop
}

$animation "a_jump" "megalatios_player_anims\a_jump.smd" {
	fps 30
}

$animation "a_reload" "megalatios_player_anims\a_reload.smd" {
	fps 30
	weightlist "weights_jump_delta"
}

$animation "a_reload_revolver" "megalatios_player_anims\a_reload_revolver.smd" {
	fps 30
	weightlist "weights_jump_delta"
}

$animation "a_reload_pistol" "megalatios_player_anims\a_reload_pistol.smd" {
	fps 30
	weightlist "weights_jump_delta"
}

$animation "a_reload_shotgun" "megalatios_player_anims\a_reload_shotgun.smd" {
	fps 30
	weightlist "weights_jump_delta"
}

$animation "a_normal_HeadMove_neutral" "megalatios_player_anims\a_normal_HeadMove_neutral.smd" {
	fps 30
}

$animation "a_normal_HeadMove_down_left" "megalatios_player_anims\a_normal_HeadMove_down_left.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_down_left_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_down_center" "megalatios_player_anims\a_normal_HeadMove_down_center.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_down_center_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_down_right" "megalatios_player_anims\a_normal_HeadMove_down_right.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_down_right_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_mid_left" "megalatios_player_anims\a_normal_HeadMove_mid_left.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_mid_left_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_mid_center" "megalatios_player_anims\a_normal_HeadMove_mid_center.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_mid_center_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_mid_right" "megalatios_player_anims\a_normal_HeadMove_mid_right.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_mid_right_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_up_left" "megalatios_player_anims\a_normal_HeadMove_up_left.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_up_left_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_up_center" "megalatios_player_anims\a_normal_HeadMove_up_center.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_up_center_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_up_right" "megalatios_player_anims\a_normal_HeadMove_up_right.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_up_right_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_runN" "megalatios_player_anims\a_runN.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_runNW" "megalatios_player_anims\a_runNW.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_runNE" "megalatios_player_anims\a_runNE.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_runS" "megalatios_player_anims\a_runS.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_runSW" "megalatios_player_anims\a_runSW.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_runSE" "megalatios_player_anims\a_runSE.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_runW" "megalatios_player_anims\a_runW.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_runE" "megalatios_player_anims\a_runE.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_walkC" "megalatios_player_anims\a_walkC.smd" {
	fps 30
	loop
	walkframe 54 LX LY
}

$animation "a_crouchC" "megalatios_player_anims\a_crouchC.smd" {
	fps 30
	loop
	walkframe 54 LX LY
}

$animation "a_walkN" "megalatios_player_anims\a_walkN.smd" {
	fps 30
	loop
	walkframe 54 LX LY
}

$animation "a_walkNW" "megalatios_player_anims\a_walkNW.smd" {
	fps 30
	loop
	walkframe 54 LX LY
}

$animation "a_walkNE" "megalatios_player_anims\a_walkNE.smd" {
	fps 30
	loop
	walkframe 54 LX LY
}

$animation "a_walkS" "megalatios_player_anims\a_walkS.smd" {
	fps 30
	loop
	walkframe 54 LX LY
}

$animation "a_walkSW" "megalatios_player_anims\a_walkSW.smd" {
	fps 30
	loop
	walkframe 54 LX LY
}

$animation "a_walkSE" "megalatios_player_anims\a_walkSE.smd" {
	fps 30
	loop
	walkframe 54 LX LY
}

$animation "a_walkW" "megalatios_player_anims\a_walkW.smd" {
	fps 30
	loop
	walkframe 54 LX LY
}

$animation "a_walkE" "megalatios_player_anims\a_walkE.smd" {
	fps 30
	loop
	walkframe 54 LX LY
}

$animation "a_swimN" "megalatios_player_anims\a_swimN.smd" {
	fps 30
	loop
	walkframe 54 LX LY
}

$animation "a_swimNW" "megalatios_player_anims\a_swimNW.smd" {
	fps 30
	loop
	walkframe 54 LX LY
}

$animation "a_swimNE" "megalatios_player_anims\a_swimNE.smd" {
	fps 30
	loop
	walkframe 54 LX LY
}

$animation "a_swimS" "megalatios_player_anims\a_swimS.smd" {
	fps 30
	loop
	walkframe 54 LX LY
}

$animation "a_swimSW" "megalatios_player_anims\a_swimSW.smd" {
	fps 30
	loop
	walkframe 54 LX LY
}

$animation "a_swimSE" "megalatios_player_anims\a_swimSE.smd" {
	fps 30
	loop
	walkframe 54 LX LY
}

$animation "a_swimW" "megalatios_player_anims\a_swimW.smd" {
	fps 30
	loop
	walkframe 54 LX LY
}

$animation "a_swimE" "megalatios_player_anims\a_swimE.smd" {
	fps 30
	loop
	walkframe 54 LX LY
}

$animation "a_crouchN" "megalatios_player_anims\a_crouchN.smd" {
	fps 30
	loop
	walkframe 54 LX LY
}

$animation "a_crouchNW" "megalatios_player_anims\a_crouchNW.smd" {
	fps 30
	loop
	walkframe 54 LX LY
}

$animation "a_crouchNE" "megalatios_player_anims\a_crouchNE.smd" {
	fps 30
	loop
	walkframe 54 LX LY
}

$animation "a_crouchS" "megalatios_player_anims\a_crouchS.smd" {
	fps 30
	loop
	walkframe 54 LX LY
}

$animation "a_crouchSW" "megalatios_player_anims\a_crouchSW.smd" {
	fps 30
	loop
	walkframe 54 LX LY
}

$animation "a_crouchSE" "megalatios_player_anims\a_crouchSE.smd" {
	fps 30
	loop
	walkframe 54 LX LY
}

$animation "a_crouchW" "megalatios_player_anims\a_crouchW.smd" {
	fps 30
	loop
	walkframe 54 LX LY
}

$animation "a_crouchE" "megalatios_player_anims\a_crouchE.smd" {
	fps 30
	loop
	walkframe 54 LX LY
}

$animation "a_noclipN" "megalatios_player_anims\a_noclipN.smd" {
	fps 30
	loop
}

$animation "a_noclipNW" "megalatios_player_anims\a_noclipNW.smd" {
	fps 30
	loop
}

$animation "a_noclipNE" "megalatios_player_anims\a_noclipNE.smd" {
	fps 30
	loop
}

$animation "a_noclipS" "megalatios_player_anims\a_noclipS.smd" {
	fps 30
	loop
}

$animation "a_noclipSW" "megalatios_player_anims\a_noclipSW.smd" {
	fps 30
	loop
}

$animation "a_noclipSE" "megalatios_player_anims\a_noclipSE.smd" {
	fps 30
	loop
}

$animation "a_noclipW" "megalatios_player_anims\a_noclipW.smd" {
	fps 30
	loop
}

$animation "a_noclipE" "megalatios_player_anims\a_noclipE.smd" {
	fps 30
	loop
}

$animation "a_special" "megalatios_player_anims\a_special.smd" {
	fps 30
}

$animation "a_physical" "megalatios_player_anims\a_physical.smd" {
	fps 30
}

$animation "a_idle_delta" "megalatios_player_anims\a_idle_delta.smd" {
	fps 30
	loop
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_idle_delta_corrective_animation" 0
	weightlist "weights_idle_delta"
}

$sequence "ragdoll" {
	"megalatios_player_anims\ragdoll.smd"
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
	"megalatios_player_anims\reference.smd"
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
	"megalatios_player_anims\battle_faint.smd"
	activity "ACT_STARTDYING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_battle_faint"
}

$sequence "gesture_battle_faint" {
	"megalatios_player_anims\gesture_battle_faint.smd"
	activity "ACT_DYINGLOOP" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "battle_faint" 0 5 44 49 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "battle_gesture" {
	"megalatios_player_anims\battle_gesture.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_battle_faint"
}

$sequence "gesture_battle_gesture" {
	"megalatios_player_anims\gesture_battle_gesture.smd"
	activity "ACT_SIGNAL_GROUP" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "battle_gesture" 0 5 86 91 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "battle_flinch" {
	"megalatios_player_anims\battle_flinch.smd"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_battle_faint"
}

$sequence "battle_idle" {
	"megalatios_player_anims\battle_idle.smd"
	activity "ACT_IDLE_ANGRY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_battle_faint"
}

$sequence "battle_entry" {
	"megalatios_player_anims\battle_entry.smd"
	activity "ACT_MP_JUMP_START" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_battle_faint"
}

$sequence "battle_powermove" {
	"megalatios_player_anims\battle_powermove.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_battle_faint"
}

$sequence "gesture_battle_powermove" {
	"megalatios_player_anims\gesture_battle_powermove.smd"
	activity "ACT_GMOD_TAUNT_PERSISTENCE" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "battle_powermove" 0 5 67 73 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "battle_taunt" {
	"megalatios_player_anims\battle_taunt.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_battle_faint"
}

$sequence "gesture_battle_taunt" {
	"megalatios_player_anims\gesture_battle_taunt.smd"
	activity "ACT_GMOD_GESTURE_BECON" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "battle_taunt" 0 5 82 87 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "battle_special" {
	"megalatios_player_anims\battle_special.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_battle_faint"
}

$sequence "gesture_battle_special" {
	"megalatios_player_anims\gesture_battle_special.smd"
	activity "ACT_GESTURE_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.1
	blendlayer "battle_special" 0 5 70 75 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "battle_physical00" {
	"megalatios_player_anims\battle_physical00.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_battle_faint"
}

$sequence "gesture_battle_physical00" {
	"megalatios_player_anims\gesture_battle_physical00.smd"
	activity "ACT_GESTURE_MELEE_ATTACK2" 1
	fadein 0.2
	fadeout 0.1
	blendlayer "battle_physical00" 0 5 74 89 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "battle_physical01" {
	"megalatios_player_anims\battle_physical01.smd"
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
	"megalatios_player_anims\sit.smd"
	activity "ACT_HL2MP_SIT" 1
	fadein 0.3
	fadeout 0.3
	addlayer "Normal_HeadMove"
	fps 30
	loop
}

$sequence "sit_rollercoaster" {
	"megalatios_player_anims\sit_rollercoaster.smd"
	activity "ACT_GMOD_SIT_ROLLERCOASTER" 1
	fadein 0.3
	fadeout 0.3
	addlayer "Normal_HeadMove"
	fps 30
	loop
}

$sequence "drive_airboat" {
	"megalatios_player_anims\drive_airboat.smd"
	activity "ACT_DRIVE_AIRBOAT" 1
	fadein 0.3
	fadeout 0.3
	addlayer "Normal_HeadMove"
	fps 30
	loop
}

$sequence "drive_jeep" {
	"megalatios_player_anims\drive_jeep.smd"
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

$collisionjoints "megalatios_player_physics.smd"
{
	$mass 70
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
