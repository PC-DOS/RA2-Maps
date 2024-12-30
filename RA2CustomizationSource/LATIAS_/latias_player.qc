// Created by Crowbar 0.67

$modelname "pokemon\latias\latias_player.mdl"

$bodygroup "Latias"
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
	studio "LEye6.smd"
	studio "LEye7.smd"
}
$bodygroup "REye"
{
	studio "REye1.smd"
	studio "REye2.smd"
	studio "REye3.smd"
	studio "REye4.smd"
	studio "REye5.smd"
	studio "REye6.smd"
	studio "REye7.smd"
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

$illumposition 0 -6.77 24.15

$cdmaterials "models\pokemon\latias\"

$texturegroup "skinfamilies"
{
	{ "pm0380_00_Body1"       "pm0380_00_Eye1"       }
	{ "pm0380_00_Body1_shiny" "pm0380_00_Eye1_shiny" }
}

$attachment "forward" "Head" 0 2 0 rotate 90 90 0

$cbox 0 0 0 0 0 0

$bbox -21.375 -25.366 0 34.915 25.366 48.3

$definebone "pm0380_00" "" 0 0 0 0 0 90.000207 0 0 0 0 0 0
$definebone "Origin" "pm0380_00" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "Waist" "Origin" 0 22.458803 3.641412 -72.776185 89.999982 0 0 0 0 0 0 0
$definebone "Hips" "Waist" 0 0 -0.000002 17.223572 179.917073 -0.015355 0 0 0 0 0 0
$definebone "RFeeler1" "Hips" 6.588468 -5.860173 -6.654463 44.838529 -82.405256 91.676916 0 0 0 0 0 0
$definebone "RFeeler2" "RFeeler1" 7.546385 -0.000448 0.040351 0.388809 -0.000854 -0.00023 0 0 0 0 0 0
$definebone "LFeeler1" "Hips" 6.578223 5.852823 -6.654522 44.965444 83.329203 -91.114553 0 0 0 0 0 0
$definebone "LFeeler2" "LFeeler1" 7.53252 -0.000433 -0.038984 -0.377407 -0.001035 0.002808 0 0 0 0 0 0
$definebone "Tail" "Hips" 12.329775 0.016067 -0.511316 -0.038962 0.069156 0 0 0 0 0 0 0
$definebone "RFoot" "Tail" 4.492274 -2.720037 1.273092 -21.415671 -58.420206 67.469736 0 0 0 0 0 0
$definebone "LFoot" "Tail" 4.494083 2.726514 1.273058 -20.78542 57.21115 -67.121375 0 0 0 0 0 0
$definebone "Spine" "Waist" 0 0 -0.000002 0 0 0 0 0 0 0 0 0
$definebone "RShoulder" "Spine" 0.596783 -3.609352 0.535833 0.828612 92.674834 79.795031 0 0 0 0 0 0
$definebone "RArm" "RShoulder" 10.606604 -0.000011 0 -2.799931 -0.002693 -0.000055 0 0 0 0 0 0
$definebone "RForeArm" "RArm" 3.851361 0.000175 0.000007 -89.999695 -0.000746 0 0 0 0 0 0 0
$definebone "RFingerC" "RForeArm" 7.002826 0.305313 0.000015 -4.958319 44.512049 -0.000229 0 0 0 0 0 0
$definebone "RFingerB" "RForeArm" 6.984722 -0.344215 0.000017 -4.999974 -42.438298 -0.000172 0 0 0 0 0 0
$definebone "RFingerA" "RForeArm" 7.347854 -0.000011 0.000016 -6.000072 0.000002 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "RForeArm" 4.057259 -0.380543 -0.302938 2.397713 8.265377 -89.03724 0 0 0 0 0 0
$definebone "LShoulder" "Spine" 0.596769 3.60935 0.535854 0.828955 -92.674718 -79.795031 0 0 0 0 0 0
$definebone "LArm" "LShoulder" 10.606606 -0.000065 -0.000019 -2.800103 0.006016 -0.000114 0 0 0 0 0 0
$definebone "LForeArm" "LArm" 3.85133 -0.00041 -0.000009 -89.999579 0.086918 0 0 0 0 0 0 0
$definebone "LFingerC" "LForeArm" 7.002819 -0.305315 0.000022 -4.958433 -44.51126 0 0 0 0 0 0 0
$definebone "LFingerB" "LForeArm" 6.984756 0.344225 0.000019 -4.999056 42.43853 -0.000114 0 0 0 0 0 0
$definebone "LFingerA" "LForeArm" 7.347844 -0.000002 0.000023 -6.000014 -0.002005 0 0 0 0 0 0 0
$definebone "Neck1" "Spine" 6.615015 0.000007 -0.000044 -10.907684 0 0 0 0 0 0 0 0
$definebone "Neck2" "Neck1" 6.32338 0.000002 -0.000013 0.811709 0 0 0 0 0 0 0 0
$definebone "Neck3" "Neck2" 5.859259 0.000002 -0.000017 -2.308046 0 0 0 0 0 0 0 0
$definebone "Head" "Neck3" 6.186188 0.000002 -0.000023 -4.820237 0 0 0 0 0 0 0 0
$definebone "REar1" "Head" -1.018927 2.611712 -3.37092 56.064775 101.851556 99.876914 0 0 0 0 0 0
$definebone "REar2" "REar1" 2.202137 0.000006 -0.551811 23.505703 -0.00005 -0.000114 0 0 0 0 0 0
$definebone "LEar1" "Head" -1.018927 -2.611689 -3.370945 56.064884 -101.85064 -99.876115 0 0 0 0 0 0
$definebone "LEar2" "LEar1" 2.202141 0.000015 -0.55183 23.505937 -0.000007 -0.000001 0 0 0 0 0 0

$bonemerge "pm0380_00"
$bonemerge "Origin"
$bonemerge "Waist"
$bonemerge "Spine"
$bonemerge "RShoulder"
$bonemerge "RArm"
$bonemerge "RForeArm"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "Neck1"
$bonemerge "Neck2"
$bonemerge "Neck3"
$bonemerge "Head"


$sectionframes 30 129

$poseparameter "move_y" -1 1 loop 0
$poseparameter "move_x" -1 1 loop 0
$poseparameter "aim_yaw" -80 80 loop 0
$poseparameter "aim_pitch" -84.49052 81.74136 loop 0
$poseparameter "vertical_velocity" -1 1 loop 0
$poseparameter "vehicle_steer" -1 1 loop 0
$poseparameter "head_yaw" -80 80 loop 0
$poseparameter "head_pitch" -70 70 loop 0

$weightlist "weights_deltastand" {
	 "pm0380_00" 0
	 "Origin" 1
	 "Waist" 0
	 "Hips" 0
	 "RFeeler1" 0
	 "RFeeler2" 0
	 "LFeeler1" 0
	 "LFeeler2" 0
	 "Tail" 0
	 "RFoot" 0
	 "LFoot" 0
	 "Spine" 0
	 "RShoulder" 0
	 "RArm" 0
	 "RForeArm" 0
	 "RFingerC" 0
	 "RFingerB" 0
	 "RFingerA" 0
	 "ValveBiped.Bip01_R_Hand" 0
	 "LShoulder" 0
	 "LArm" 0
	 "LForeArm" 0
	 "LFingerC" 0
	 "LFingerB" 0
	 "LFingerA" 0
	 "Neck1" 0
	 "Neck2" 0
	 "Neck3" 0
	 "Head" 0
	 "REar1" 0
	 "REar2" 0
	 "LEar1" 0
	 "LEar2" 0
}

$weightlist "weights_idle_delta" {
	 "pm0380_00" 0
	 "Origin" 0
	 "Waist" 0
	 "Hips" 1
	 "RFeeler1" 1
	 "RFeeler2" 1
	 "LFeeler1" 1
	 "LFeeler2" 1
	 "Tail" 1
	 "RFoot" 1
	 "LFoot" 1
	 "Spine" 1
	 "RShoulder" 1
	 "RArm" 1
	 "RForeArm" 1
	 "RFingerC" 1
	 "RFingerB" 1
	 "RFingerA" 1
	 "ValveBiped.Bip01_R_Hand" 0
	 "LShoulder" 1
	 "LArm" 1
	 "LForeArm" 1
	 "LFingerC" 1
	 "LFingerB" 1
	 "LFingerA" 1
	 "Neck1" 1
	 "Neck2" 1
	 "Neck3" 1
	 "Head" 1
	 "REar1" 1
	 "REar2" 1
	 "LEar1" 1
	 "LEar2" 1
}

$weightlist "weights_jump_delta" {
	 "pm0380_00" 0
	 "Origin" 0
	 "Waist" 0
	 "Hips" 0
	 "RFeeler1" 0
	 "RFeeler2" 0
	 "LFeeler1" 0
	 "LFeeler2" 0
	 "Tail" 0
	 "RFoot" 0
	 "LFoot" 0
	 "Spine" 0
	 "RShoulder" 0
	 "RArm" 0
	 "RForeArm" 0
	 "RFingerC" 0
	 "RFingerB" 0
	 "RFingerA" 0
	 "ValveBiped.Bip01_R_Hand" 0
	 "LShoulder" 0
	 "LArm" 0
	 "LForeArm" 0
	 "LFingerC" 0
	 "LFingerB" 0
	 "LFingerA" 0
	 "Neck1" 0
	 "Neck2" 0
	 "Neck3" 0
	 "Head" 0
	 "REar1" 0
	 "REar2" 0
	 "LEar1" 0
	 "LEar2" 0
}

$weightlist "weights_amie_angry_layer" {
	 "pm0380_00" 0
	 "Origin" 0
	 "Waist" 1
	 "Hips" 1
	 "RFeeler1" 0
	 "RFeeler2" 0
	 "LFeeler1" 0
	 "LFeeler2" 0
	 "Tail" 0
	 "RFoot" 0
	 "LFoot" 0
	 "Spine" 1
	 "RShoulder" 1
	 "RArm" 1
	 "RForeArm" 1
	 "RFingerC" 1
	 "RFingerB" 1
	 "RFingerA" 1
	 "ValveBiped.Bip01_R_Hand" 0
	 "LShoulder" 1
	 "LArm" 1
	 "LForeArm" 1
	 "LFingerC" 1
	 "LFingerB" 1
	 "LFingerA" 1
	 "Neck1" 1
	 "Neck2" 1
	 "Neck3" 1
	 "Head" 1
	 "REar1" 1
	 "REar2" 1
	 "LEar1" 1
	 "LEar2" 1
}

$weightlist "weights_Normal_HeadMove" {
	 "pm0380_00" 0
	 "Origin" 0
	 "Waist" 0
	 "Hips" 0
	 "RFeeler1" 0
	 "RFeeler2" 0
	 "LFeeler1" 0
	 "LFeeler2" 0
	 "Tail" 0
	 "RFoot" 0
	 "LFoot" 0
	 "Spine" 0
	 "RShoulder" 0
	 "RArm" 0
	 "RForeArm" 0
	 "RFingerC" 0
	 "RFingerB" 0
	 "RFingerA" 0
	 "ValveBiped.Bip01_R_Hand" 0
	 "LShoulder" 0
	 "LArm" 0
	 "LForeArm" 0
	 "LFingerC" 0
	 "LFingerB" 0
	 "LFingerA" 0
	 "Neck1" 1
	 "Neck2" 1
	 "Neck3" 1
	 "Head" 1
	 "REar1" 0
	 "REar2" 0
	 "LEar1" 0
	 "LEar2" 0
}

$animation "a_deltastand_corrective_animation" "latias_player_anims\a_deltastand_corrective_animation.smd" {
}

$animation "a_deltacrouch_corrective_animation" "latias_player_anims\a_deltacrouch_corrective_animation.smd" {
}

$animation "a_idle_delta_corrective_animation" "latias_player_anims\a_idle_delta_corrective_animation.smd" {
}

$animation "a_none_corrective_animation" "latias_player_anims\a_none_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_up_right_corrective_animation" "latias_player_anims\a_normal_HeadMove_up_right_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_up_center_corrective_animation" "latias_player_anims\a_normal_HeadMove_up_center_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_up_left_corrective_animation" "latias_player_anims\a_normal_HeadMove_up_left_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_mid_right_corrective_animation" "latias_player_anims\a_normal_HeadMove_mid_right_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_mid_center_corrective_animation" "latias_player_anims\a_normal_HeadMove_mid_center_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_mid_left_corrective_animation" "latias_player_anims\a_normal_HeadMove_mid_left_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_down_right_corrective_animation" "latias_player_anims\a_normal_HeadMove_down_right_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_down_center_corrective_animation" "latias_player_anims\a_normal_HeadMove_down_center_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_down_left_corrective_animation" "latias_player_anims\a_normal_HeadMove_down_left_corrective_animation.smd" {
}

$animation "a_none" "latias_player_anims\a_none.smd" {
	fps 30
	loop
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_none_corrective_animation" 0
	weightlist "weights_jump_delta"
}

$animation "a_deltastand" "latias_player_anims\a_deltastand.smd" {
	fps 30
	loop
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_deltastand_corrective_animation" 0
	weightlist "weights_deltastand"
}

$animation "a_deltacrouch" "latias_player_anims\a_deltacrouch.smd" {
	fps 30
	loop
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_deltacrouch_corrective_animation" 0
	weightlist "weights_deltastand"
}

$animation "a_basic_idle" "latias_player_anims\a_basic_idle.smd" {
	fps 30
	loop
	weightlist "weights_idle_delta"
}

$animation "a_basic_walk" "latias_player_anims\a_basic_walk.smd" {
	fps 60
	loop
	weightlist "weights_idle_delta"
}

$animation "a_basic_run" "latias_player_anims\a_basic_run.smd" {
	fps 30
	loop
	weightlist "weights_idle_delta"
}

$animation "a_idle" "latias_player_anims\a_idle.smd" {
	fps 30
	loop
}

$animation "a_idle_crouch" "latias_player_anims\a_idle_crouch.smd" {
	fps 30
	loop
}

$animation "a_idle_swim" "latias_player_anims\a_idle_swim.smd" {
	fps 30
	loop
}

$animation "a_idle_noclip" "latias_player_anims\a_idle_noclip.smd" {
	fps 30
	loop
}

$animation "a_jump" "latias_player_anims\a_jump.smd" {
	fps 30
}

$animation "a_reload" "latias_player_anims\a_reload.smd" {
	fps 30
	weightlist "weights_jump_delta"
}

$animation "a_reload_revolver" "latias_player_anims\a_reload_revolver.smd" {
	fps 30
	weightlist "weights_jump_delta"
}

$animation "a_reload_pistol" "latias_player_anims\a_reload_pistol.smd" {
	fps 30
	weightlist "weights_jump_delta"
}

$animation "a_reload_shotgun" "latias_player_anims\a_reload_shotgun.smd" {
	fps 30
	weightlist "weights_jump_delta"
}

$animation "a_normal_HeadMove_neutral" "latias_player_anims\a_normal_HeadMove_neutral.smd" {
	fps 30
}

$animation "a_normal_HeadMove_down_left" "latias_player_anims\a_normal_HeadMove_down_left.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_down_left_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_down_center" "latias_player_anims\a_normal_HeadMove_down_center.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_down_center_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_down_right" "latias_player_anims\a_normal_HeadMove_down_right.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_down_right_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_mid_left" "latias_player_anims\a_normal_HeadMove_mid_left.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_mid_left_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_mid_center" "latias_player_anims\a_normal_HeadMove_mid_center.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_mid_center_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_mid_right" "latias_player_anims\a_normal_HeadMove_mid_right.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_mid_right_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_up_left" "latias_player_anims\a_normal_HeadMove_up_left.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_up_left_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_up_center" "latias_player_anims\a_normal_HeadMove_up_center.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_up_center_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_up_right" "latias_player_anims\a_normal_HeadMove_up_right.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_up_right_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_runN" "latias_player_anims\a_runN.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_runNW" "latias_player_anims\a_runNW.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_runNE" "latias_player_anims\a_runNE.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_runS" "latias_player_anims\a_runS.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_runSW" "latias_player_anims\a_runSW.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_runSE" "latias_player_anims\a_runSE.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_runW" "latias_player_anims\a_runW.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_runE" "latias_player_anims\a_runE.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_walkC" "latias_player_anims\a_walkC.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_crouchC" "latias_player_anims\a_crouchC.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_walkN" "latias_player_anims\a_walkN.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_walkNW" "latias_player_anims\a_walkNW.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_walkNE" "latias_player_anims\a_walkNE.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_walkS" "latias_player_anims\a_walkS.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_walkSW" "latias_player_anims\a_walkSW.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_walkSE" "latias_player_anims\a_walkSE.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_walkW" "latias_player_anims\a_walkW.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_walkE" "latias_player_anims\a_walkE.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_swimN" "latias_player_anims\a_swimN.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_swimNW" "latias_player_anims\a_swimNW.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_swimNE" "latias_player_anims\a_swimNE.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_swimS" "latias_player_anims\a_swimS.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_swimSW" "latias_player_anims\a_swimSW.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_swimSE" "latias_player_anims\a_swimSE.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_swimW" "latias_player_anims\a_swimW.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_swimE" "latias_player_anims\a_swimE.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_crouchN" "latias_player_anims\a_crouchN.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_crouchNW" "latias_player_anims\a_crouchNW.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_crouchNE" "latias_player_anims\a_crouchNE.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_crouchS" "latias_player_anims\a_crouchS.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_crouchSW" "latias_player_anims\a_crouchSW.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_crouchSE" "latias_player_anims\a_crouchSE.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_crouchW" "latias_player_anims\a_crouchW.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_crouchE" "latias_player_anims\a_crouchE.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_noclipN" "latias_player_anims\a_noclipN.smd" {
	fps 30
	loop
}

$animation "a_noclipNW" "latias_player_anims\a_noclipNW.smd" {
	fps 30
	loop
}

$animation "a_noclipNE" "latias_player_anims\a_noclipNE.smd" {
	fps 30
	loop
}

$animation "a_noclipS" "latias_player_anims\a_noclipS.smd" {
	fps 30
	loop
}

$animation "a_noclipSW" "latias_player_anims\a_noclipSW.smd" {
	fps 30
	loop
}

$animation "a_noclipSE" "latias_player_anims\a_noclipSE.smd" {
	fps 30
	loop
}

$animation "a_noclipW" "latias_player_anims\a_noclipW.smd" {
	fps 30
	loop
}

$animation "a_noclipE" "latias_player_anims\a_noclipE.smd" {
	fps 30
	loop
}

$animation "a_special" "latias_player_anims\a_special.smd" {
	fps 30
}

$animation "a_physical" "latias_player_anims\a_physical.smd" {
	fps 30
}

$animation "a_idle_delta" "latias_player_anims\a_idle_delta.smd" {
	fps 30
	loop
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_idle_delta_corrective_animation" 0
	weightlist "weights_idle_delta"
}

$sequence "ragdoll" {
	"latias_player_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
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
	"latias_player_anims\reference.smd"
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

$sequence "amie_angry_layer" {
	"latias_player_anims\amie_angry_layer.smd"
	fadein 0.2
	fadeout 0.1
	hidden
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_amie_angry" {
	"latias_player_anims\gesture_amie_angry.smd"
	activity "ACT_GMOD_GESTURE_DISAGREE" 1
	fadein 0.2
	fadeout 0.1
	blendlayer "amie_angry_layer" 0 5 33 63 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "amie_appeal" {
	"latias_player_anims\amie_appeal.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_amie_appeal" {
	"latias_player_anims\gesture_amie_appeal.smd"
	activity "ACT_GMOD_TAUNT_MUSCLE" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "amie_appeal" 0 5 25 29 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "amie_giggle" {
	"latias_player_anims\amie_giggle.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_amie_giggle" {
	"latias_player_anims\gesture_amie_giggle.smd"
	activity "ACT_GMOD_TAUNT_LAUGH" 1
	fadein 0.2
	fadeout 0.1
	blendlayer "amie_giggle" 0 5 83 89
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "amie_happy_layer" {
	"latias_player_anims\amie_happy_layer.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_amie_happy" {
	"latias_player_anims\gesture_amie_happy.smd"
	activity "ACT_GMOD_GESTURE_AGREE" 1
	fadein 0.2
	fadeout 0.1
	blendlayer "amie_happy_layer" 0 5 83 89
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "amie_eathappy" {
	"latias_player_anims\amie_eathappy.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_amie_eathappy" {
	"latias_player_anims\gesture_amie_eathappy.smd"
	activity "ACT_GMOD_TAUNT_CHEER" 1
	fadein 0.2
	fadeout 0.1
	blendlayer "amie_eathappy" 0 5 74 79
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "amie_lookaround" {
	"latias_player_anims\amie_lookaround.smd"
	fadein 0.2
	fadeout 0.1
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_amie_lookaround" {
	"latias_player_anims\gesture_amie_lookaround.smd"
	activity "ACT_SIGNAL2" 1
	fadein 0.2
	fadeout 0.1
	blendlayer "amie_lookaround" 0 5 54 59
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "amie_hiding" {
	"latias_player_anims\amie_hiding.smd"
	fadein 0.2
	fadeout 0.1
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_amie_hiding" {
	"latias_player_anims\gesture_amie_hiding.smd"
	activity "ACT_SIGNAL3" 1
	fadein 0.2
	fadeout 0.1
	blendlayer "amie_hiding" 0 10 102 108 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "amie_reach" {
	"latias_player_anims\amie_reach.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_amie_reach" {
	"latias_player_anims\gesture_amie_reach.smd"
	activity "ACT_GMOD_GESTURE_WAVE" 1
	fadein 0.2
	fadeout 0.1
	blendlayer "amie_reach" 0 5 24 29
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "amie_reposition1" {
	"latias_player_anims\amie_reposition1.smd"
	fadein 0.2
	fadeout 0.1
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_amie_reposition1" {
	"latias_player_anims\gesture_amie_reposition1.smd"
	activity "ACT_VM_FIDGET" 1
	fadein 0.2
	fadeout 0.1
	blendlayer "amie_reposition1" 0 5 28 33
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "amie_reposition2" {
	"latias_player_anims\amie_reposition2.smd"
	fadein 0.2
	fadeout 0.1
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_amie_reposition2" {
	"latias_player_anims\gesture_amie_reposition2.smd"
	activity "ACT_SIGNAL1" 1
	fadein 0.2
	fadeout 0.1
	blendlayer "amie_reposition2" 0 5 44 49
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "amie_searchplayer" {
	"latias_player_anims\amie_searchplayer.smd"
	fadein 0.2
	fadeout 0.1
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "amie_idle" {
	"latias_player_anims\amie_idle.smd"
	activity "ACT_IDLE_RELAXED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_amie_angry_layer"
}

$sequence "amie_rest" {
	"latias_player_anims\amie_rest.smd"
	activity "ACT_COWER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_amie_angry_layer"
}

$sequence "amie_restwake" {
	"latias_player_anims\amie_restwake.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_idle_delta"
}

$sequence "gesture_amie_restwake" {
	"latias_player_anims\gesture_amie_restwake.smd"
	activity "ACT_ARM" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "amie_restwake" 0 5 64 79 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "amie_sleepwake_layer" {
	"latias_player_anims\amie_sleepwake_layer.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_amie_sleepwake" {
	"latias_player_anims\gesture_amie_sleepwake.smd"
	activity "ACT_GMOD_GESTURE_DISAGREE" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "amie_sleepwake_layer" 0 3 53 58 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "amie_sleep" {
	"latias_player_anims\amie_sleep.smd"
	activity "ACT_IDLE_HURT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_amie_sleep" {
	"latias_player_anims\gesture_amie_sleep.smd"
	activity "ACT_GMOD_GESTURE_BOW" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "amie_sleep" 0 5 54 59 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "amie_eat" {
	"latias_player_anims\amie_eat.smd"
	activity "ACT_BUSY_QUEUE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_amie_angry_layer"
}

$sequence "battle_faint" {
	"latias_player_anims\battle_faint.smd"
	activity "ACT_STARTDYING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_battle_faint" {
	"latias_player_anims\gesture_battle_faint.smd"
	activity "ACT_DYINGLOOP" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "battle_faint" 0 5 44 49 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "battle_gesture" {
	"latias_player_anims\battle_gesture.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_battle_gesture" {
	"latias_player_anims\gesture_battle_gesture.smd"
	activity "ACT_SIGNAL_GROUP" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "battle_gesture" 0 5 66 71 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "battle_flinch" {
	"latias_player_anims\battle_flinch.smd"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "battle_idle" {
	"latias_player_anims\battle_idle.smd"
	activity "ACT_IDLE_ANGRY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_amie_angry_layer"
}

$sequence "battle_entry" {
	"latias_player_anims\battle_entry.smd"
	activity "ACT_MP_JUMP_START" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "battle_powermove" {
	"latias_player_anims\battle_powermove.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_battle_powermove" {
	"latias_player_anims\gesture_battle_powermove.smd"
	activity "ACT_GMOD_TAUNT_PERSISTENCE" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "battle_powermove" 0 5 64 69 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "battle_taunt" {
	"latias_player_anims\battle_taunt.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_battle_taunt" {
	"latias_player_anims\gesture_battle_taunt.smd"
	activity "ACT_GMOD_GESTURE_BECON" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "battle_taunt" 0 5 60 64 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "battle_special" {
	"latias_player_anims\battle_special.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_battle_special" {
	"latias_player_anims\gesture_battle_special.smd"
	activity "ACT_GESTURE_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.1
	blendlayer "battle_special" 0 5 64 69 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "battle_physical" {
	"latias_player_anims\battle_physical.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_battle_physical" {
	"latias_player_anims\gesture_battle_physical.smd"
	activity "ACT_GESTURE_MELEE_ATTACK2" 1
	fadein 0.2
	fadeout 0.1
	blendlayer "battle_physical" 0 5 66 71 spline
	fps 30
	weightlist "weights_jump_delta"
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
	"latias_player_anims\sit.smd"
	activity "ACT_HL2MP_SIT" 1
	fadein 0.3
	fadeout 0.3
	addlayer "Normal_HeadMove"
	fps 30
	loop
}

$sequence "sit_rollercoaster" {
	"latias_player_anims\sit_rollercoaster.smd"
	activity "ACT_GMOD_SIT_ROLLERCOASTER" 1
	fadein 0.3
	fadeout 0.3
	addlayer "Normal_HeadMove"
	fps 30
	loop
}

$sequence "drive_airboat" {
	"latias_player_anims\drive_airboat.smd"
	activity "ACT_DRIVE_AIRBOAT" 1
	fadein 0.3
	fadeout 0.3
	addlayer "Normal_HeadMove"
	fps 30
	loop
}

$sequence "drive_jeep" {
	"latias_player_anims\drive_jeep.smd"
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
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Crouch_CAMERA" {
	"a_idle_crouch"
	activity "ACT_HL2MP_IDLE_CROUCH_CAMERA" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltacrouch"
	addlayer "Normal_HeadMove"
}

$sequence "Idle_Swim_CAMERA" {
	"a_idle_swim"
	activity "ACT_HL2MP_SWIM_IDLE_CAMERA" 1
	fadein 0.4
	fadeout 0.4
	addlayer "deltastand"
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

$collisionjoints "latias_player_physics.smd"
{
	$mass 40
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

	$jointconstrain "LEar1" x limit -15 15 0
	$jointconstrain "LEar1" y limit -35 35 0
	$jointconstrain "LEar1" z limit -15 15 0

	$jointconstrain "LEar2" x limit -15 15 0
	$jointconstrain "LEar2" y limit -35 35 0
	$jointconstrain "LEar2" z limit -35 35 0

	$jointconstrain "REar1" x limit -15 15 0
	$jointconstrain "REar1" y limit -35 35 0
	$jointconstrain "REar1" z limit -15 15 0

	$jointconstrain "LArm" x limit -60 60 0
	$jointconstrain "LArm" y limit -30 30 0
	$jointconstrain "LArm" z limit -10 30 0

	$jointconstrain "RArm" x limit -60 60 0
	$jointconstrain "RArm" y limit -30 30 0
	$jointconstrain "RArm" z limit -10 10 0

	$jointconstrain "RForeArm" x limit 0 0 0
	$jointconstrain "RForeArm" y limit -60 60 0
	$jointconstrain "RForeArm" z limit -60 60 0

	$jointconstrain "LForeArm" x limit 0 0 0
	$jointconstrain "LForeArm" y limit -60 60 0
	$jointconstrain "LForeArm" z limit -60 60 0

	$jointconstrain "Tail" x limit -45 45 0
	$jointconstrain "Tail" y limit -45 45 0
	$jointconstrain "Tail" z limit -35 35 0

	$jointconstrain "RFoot" x limit -45 45 0
	$jointconstrain "RFoot" y limit -55 55 0
	$jointconstrain "RFoot" z limit -75 75 0

	$jointconstrain "LFoot" x limit -45 45 0
	$jointconstrain "LFoot" y limit -55 55 0
	$jointconstrain "LFoot" z limit -75 75 0

	$jointconstrain "LFeeler1" x limit -30 30 0
	$jointconstrain "LFeeler1" y limit -50 50 0
	$jointconstrain "LFeeler1" z limit -50 50 0

	$jointconstrain "LFeeler2" x limit -30 30 0
	$jointconstrain "LFeeler2" y limit -50 50 0
	$jointconstrain "LFeeler2" z limit -50 50 0

	$jointconstrain "RFeeler1" x limit -30 30 0
	$jointconstrain "RFeeler1" y limit -50 50 0
	$jointconstrain "RFeeler1" z limit -50 50 0

	$jointconstrain "RFeeler2" x limit -30 30 0
	$jointconstrain "RFeeler2" y limit -50 50 0
	$jointconstrain "RFeeler2" z limit -50 50 0

	$jointconstrain "REar2" x limit -15 15 0
	$jointconstrain "REar2" y limit -35 35 0
	$jointconstrain "REar2" z limit -35 35 0
}
