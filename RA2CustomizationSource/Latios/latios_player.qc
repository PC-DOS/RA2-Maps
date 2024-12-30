// Created by Crowbar 0.67

$modelname "pokemon\latios\latios_player.mdl"

$bodygroup "Latios"
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
	studio "Mouth7.smd"
}


$surfaceprop "flesh"

$contents "solid"

$illumposition 0 -15.134 31.675

$cdmaterials "models\pokemon\Latios\"

$texturegroup "skinfamilies"
{
	{ "pm0381_00_BodyA1"       "pm0381_00_BodyB1"       "pm0381_00_Eye1"       "pm0381_00_Mouth1"       }
	{ "pm0381_00_BodyA1_shiny" "pm0381_00_BodyB1_shiny" "pm0381_00_Eye1_shiny" "pm0381_00_Mouth1_shiny" }
}

$attachment "forward" "Head" 0 2 0 rotate 90 90 0

$cbox 0 0 0 0 0 0

$bbox -29.285 -4.762 -1.108 7.547 4.762 18.401

$definebone "pm0381_00" "" 0 0 0 0 0 90.000207 0 0 0 0 0 0
$definebone "Origin" "pm0381_00" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "Waist" "Origin" 0 25.932827 -0.001402 -88.618904 -90.000248 -179.999704 0 0 0 0 0 0
$definebone "Hips" "Waist" 0 0 -0.000004 0.484436 -179.999978 0 0 0 0 0 0 0
$definebone "Tail" "Hips" 5.34471 0.000017 0.000002 -1.86555 0 0 0 0 0 0 0 0
$definebone "RFoot" "Tail" 6.807917 -6.850982 -1.560717 0 -0.452121 0 0 0 0 0 0 0
$definebone "LFoot" "Tail" 6.807881 6.851018 -1.560699 0 0.45235 -0.000057 0 0 0 0 0 0
$definebone "Spine1" "Waist" 0 0 -0.000004 0 0 0 0 0 0 0 0 0
$definebone "RFeeler1" "Spine1" 8.564568 5.77888 -8.525795 41.964173 75.388411 81.14486 0 0 0 0 0 0
$definebone "RFeeler2" "RFeeler1" 9.324665 -0.000097 -4.237945 23.000131 0.000519 0.001259 0 0 0 0 0 0
$definebone "LFeeler1" "Spine1" 8.564602 -5.778923 -8.525764 41.963887 -75.388288 -81.144287 0 0 0 0 0 0
$definebone "LFeeler2" "LFeeler1" 9.324642 -0.000051 -4.237937 22.999096 -0.000401 -0.001663 0 0 0 0 0 0
$definebone "Spine2" "Spine1" 11.079391 0.000003 0.00001 12.294183 0 0 0 0 0 0 0 0
$definebone "RShoulder" "Spine2" 4.042084 -4.06821 0.887453 -0.324695 88.315084 79.091562 0 0 0 0 0 0
$definebone "RArm" "RShoulder" 10.63697 -0.000109 0.000031 1.715779 -0.005672 -0.000114 0 0 0 0 0 0
$definebone "RForeArm" "RArm" 5.696299 0.000557 0.000016 -89.999982 0.005787 0 0 0 0 0 0 0
$definebone "RFingerC" "RForeArm" 11.869192 0.591286 -0.274393 -8.430614 45.590259 0.173205 0 0 0 0 0 0
$definebone "RFingerB" "RForeArm" 11.879591 -1.014788 -0.260746 -8.195588 -45.885672 -0.870266 0 0 0 0 0 0
$definebone "RFingerA" "RForeArm" 12.636902 -0.205847 -0.190756 -7.336208 -0.109721 0.861156 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "RForeArm" 9.099144 -0.200762 -0.045569 2.428883 1.260966 -89.366694 0 0 0 0 0 0
$definebone "LShoulder" "Spine2" 4.042088 4.06822 0.887445 -0.324752 -88.315254 -79.091951 0 0 0 0 0 0
$definebone "LArm" "LShoulder" 10.636985 -0.00016 -0.000003 1.715608 -0.000229 0.000287 0 0 0 0 0 0
$definebone "LForeArm" "LArm" 5.696252 0.000006 -0.000015 -89.99975 0.000229 0 0 0 0 0 0 0
$definebone "LFingerC" "LForeArm" 11.869193 -0.591269 -0.274351 -8.430501 -45.585724 -0.173091 0 0 0 0 0 0
$definebone "LFingerB" "LForeArm" 11.879491 1.014809 -0.260723 -8.194786 45.879767 0.869865 0 0 0 0 0 0
$definebone "LFingerA" "LForeArm" 12.636912 0.205853 -0.190705 -7.336094 0.109722 -0.861442 0 0 0 0 0 0
$definebone "Neck1" "Spine2" 10.573805 0 0.000036 -10.912954 0 0 0 0 0 0 0 0
$definebone "Neck2" "Neck1" 7.851236 0.000002 0.000017 0 0 0 0 0 0 0 0 0
$definebone "Neck3" "Neck2" 7.775097 0.000002 0.000011 0 0 0 0 0 0 0 0 0
$definebone "Head" "Neck3" 5.514858 0.000001 0.000008 0 0 0 0 0 0 0 0 0
$definebone "REar1" "Head" 5.460861 4.113617 2.043995 68.286756 147.115499 145.165029 0 0 0 0 0 0
$definebone "REar2" "REar1" 5.221598 -0.000013 0.000011 0 0.000112 -0.000059 0 0 0 0 0 0
$definebone "LEar1" "Head" 5.461052 -4.113595 2.044006 68.286988 -147.114925 -145.16451 0 0 0 0 0 0
$definebone "LEar2" "LEar1" 5.221576 0 -0.000008 0.000055 0.000002 0.000057 0 0 0 0 0 0

$bonemerge "pm0381_00"
$bonemerge "Origin"
$bonemerge "Waist"
$bonemerge "Spine1"
$bonemerge "Spine2"
$bonemerge "RShoulder"
$bonemerge "RArm"
$bonemerge "RForeArm"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "Neck1"
$bonemerge "Neck2"
$bonemerge "Neck3"
$bonemerge "Head"


$sectionframes 30 127

$poseparameter "move_y" -1 1 loop 0
$poseparameter "move_x" -1 1 loop 0
$poseparameter "aim_yaw" -80 80 loop 0
$poseparameter "aim_pitch" -84.49052 81.74136 loop 0
$poseparameter "vertical_velocity" -1 1 loop 0
$poseparameter "vehicle_steer" -1 1 loop 0
$poseparameter "head_yaw" -80 80 loop 0
$poseparameter "head_pitch" -70 70 loop 0

$weightlist "weights_deltastand" {
	 "pm0381_00" 0
	 "Origin" 1
	 "Waist" 0
	 "Hips" 0
	 "Tail" 0
	 "RFoot" 0
	 "LFoot" 0
	 "Spine1" 0
	 "RFeeler1" 0
	 "RFeeler2" 0
	 "LFeeler1" 0
	 "LFeeler2" 0
	 "Spine2" 0
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
	 "pm0381_00" 0
	 "Origin" 1
	 "Waist" 0
	 "Hips" 1
	 "Tail" 1
	 "RFoot" 1
	 "LFoot" 1
	 "Spine1" 1
	 "RFeeler1" 1
	 "RFeeler2" 1
	 "LFeeler1" 1
	 "LFeeler2" 1
	 "Spine2" 1
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
	 "pm0381_00" 0
	 "Origin" 0
	 "Waist" 0
	 "Hips" 0
	 "Tail" 0
	 "RFoot" 0
	 "LFoot" 0
	 "Spine1" 0
	 "RFeeler1" 0
	 "RFeeler2" 0
	 "LFeeler1" 0
	 "LFeeler2" 0
	 "Spine2" 0
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
	 "pm0381_00" 0
	 "Origin" 0
	 "Waist" 1
	 "Hips" 1
	 "Tail" 0
	 "RFoot" 0
	 "LFoot" 0
	 "Spine1" 1
	 "RFeeler1" 0
	 "RFeeler2" 0
	 "LFeeler1" 0
	 "LFeeler2" 0
	 "Spine2" 1
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
	 "pm0381_00" 0
	 "Origin" 0
	 "Waist" 0
	 "Hips" 0
	 "Tail" 0
	 "RFoot" 0
	 "LFoot" 0
	 "Spine1" 0
	 "RFeeler1" 0
	 "RFeeler2" 0
	 "LFeeler1" 0
	 "LFeeler2" 0
	 "Spine2" 0
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

$animation "a_deltastand_corrective_animation" "latios_player_anims\a_deltastand_corrective_animation.smd" {
}

$animation "a_deltacrouch_corrective_animation" "latios_player_anims\a_deltacrouch_corrective_animation.smd" {
}

$animation "a_idle_delta_corrective_animation" "latios_player_anims\a_idle_delta_corrective_animation.smd" {
}

$animation "a_none_corrective_animation" "latios_player_anims\a_none_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_up_right_corrective_animation" "latios_player_anims\a_normal_HeadMove_up_right_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_up_center_corrective_animation" "latios_player_anims\a_normal_HeadMove_up_center_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_up_left_corrective_animation" "latios_player_anims\a_normal_HeadMove_up_left_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_mid_right_corrective_animation" "latios_player_anims\a_normal_HeadMove_mid_right_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_mid_center_corrective_animation" "latios_player_anims\a_normal_HeadMove_mid_center_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_mid_left_corrective_animation" "latios_player_anims\a_normal_HeadMove_mid_left_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_down_right_corrective_animation" "latios_player_anims\a_normal_HeadMove_down_right_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_down_center_corrective_animation" "latios_player_anims\a_normal_HeadMove_down_center_corrective_animation.smd" {
}

$animation "a_normal_HeadMove_down_left_corrective_animation" "latios_player_anims\a_normal_HeadMove_down_left_corrective_animation.smd" {
}

$animation "a_none" "latios_player_anims\a_none.smd" {
	fps 30
	loop
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_none_corrective_animation" 0
	weightlist "weights_jump_delta"
}

$animation "a_deltastand" "latios_player_anims\a_deltastand.smd" {
	fps 30
	loop
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_deltastand_corrective_animation" 0
	weightlist "weights_deltastand"
}

$animation "a_deltacrouch" "latios_player_anims\a_deltacrouch.smd" {
	fps 30
	loop
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_deltacrouch_corrective_animation" 0
	weightlist "weights_deltastand"
}

$animation "a_basic_idle" "latios_player_anims\a_basic_idle.smd" {
	fps 30
	loop
	weightlist "weights_idle_delta"
}

$animation "a_basic_walk" "latios_player_anims\a_basic_walk.smd" {
	fps 60
	loop
	weightlist "weights_idle_delta"
}

$animation "a_basic_run" "latios_player_anims\a_basic_run.smd" {
	fps 30
	loop
	weightlist "weights_idle_delta"
}

$animation "a_idle" "latios_player_anims\a_idle.smd" {
	fps 30
	loop
}

$animation "a_idle_crouch" "latios_player_anims\a_idle_crouch.smd" {
	fps 30
	loop
}

$animation "a_idle_swim" "latios_player_anims\a_idle_swim.smd" {
	fps 30
	loop
}

$animation "a_idle_noclip" "latios_player_anims\a_idle_noclip.smd" {
	fps 30
	loop
}

$animation "a_jump" "latios_player_anims\a_jump.smd" {
	fps 30
}

$animation "a_reload" "latios_player_anims\a_reload.smd" {
	fps 30
	weightlist "weights_jump_delta"
}

$animation "a_reload_revolver" "latios_player_anims\a_reload_revolver.smd" {
	fps 30
	weightlist "weights_jump_delta"
}

$animation "a_reload_pistol" "latios_player_anims\a_reload_pistol.smd" {
	fps 30
	weightlist "weights_jump_delta"
}

$animation "a_reload_shotgun" "latios_player_anims\a_reload_shotgun.smd" {
	fps 30
	weightlist "weights_jump_delta"
}

$animation "a_normal_HeadMove_neutral" "latios_player_anims\a_normal_HeadMove_neutral.smd" {
	fps 30
}

$animation "a_normal_HeadMove_down_left" "latios_player_anims\a_normal_HeadMove_down_left.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_down_left_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_down_center" "latios_player_anims\a_normal_HeadMove_down_center.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_down_center_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_down_right" "latios_player_anims\a_normal_HeadMove_down_right.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_down_right_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_mid_left" "latios_player_anims\a_normal_HeadMove_mid_left.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_mid_left_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_mid_center" "latios_player_anims\a_normal_HeadMove_mid_center.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_mid_center_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_mid_right" "latios_player_anims\a_normal_HeadMove_mid_right.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_mid_right_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_up_left" "latios_player_anims\a_normal_HeadMove_up_left.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_up_left_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_up_center" "latios_player_anims\a_normal_HeadMove_up_center.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_up_center_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_normal_HeadMove_up_right" "latios_player_anims\a_normal_HeadMove_up_right.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_normal_HeadMove_up_right_corrective_animation" 0
	weightlist "weights_Normal_HeadMove"
}

$animation "a_runN" "latios_player_anims\a_runN.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_runNW" "latios_player_anims\a_runNW.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_runNE" "latios_player_anims\a_runNE.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_runS" "latios_player_anims\a_runS.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_runSW" "latios_player_anims\a_runSW.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_runSE" "latios_player_anims\a_runSE.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_runW" "latios_player_anims\a_runW.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_runE" "latios_player_anims\a_runE.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_walkC" "latios_player_anims\a_walkC.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_crouchC" "latios_player_anims\a_crouchC.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_walkN" "latios_player_anims\a_walkN.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_walkNW" "latios_player_anims\a_walkNW.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_walkNE" "latios_player_anims\a_walkNE.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_walkS" "latios_player_anims\a_walkS.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_walkSW" "latios_player_anims\a_walkSW.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_walkSE" "latios_player_anims\a_walkSE.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_walkW" "latios_player_anims\a_walkW.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_walkE" "latios_player_anims\a_walkE.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_swimN" "latios_player_anims\a_swimN.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_swimNW" "latios_player_anims\a_swimNW.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_swimNE" "latios_player_anims\a_swimNE.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_swimS" "latios_player_anims\a_swimS.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_swimSW" "latios_player_anims\a_swimSW.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_swimSE" "latios_player_anims\a_swimSE.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_swimW" "latios_player_anims\a_swimW.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_swimE" "latios_player_anims\a_swimE.smd" {
	fps 30
	loop
	walkframe 9 LX LY
}

$animation "a_crouchN" "latios_player_anims\a_crouchN.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_crouchNW" "latios_player_anims\a_crouchNW.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_crouchNE" "latios_player_anims\a_crouchNE.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_crouchS" "latios_player_anims\a_crouchS.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_crouchSW" "latios_player_anims\a_crouchSW.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_crouchSE" "latios_player_anims\a_crouchSE.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_crouchW" "latios_player_anims\a_crouchW.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_crouchE" "latios_player_anims\a_crouchE.smd" {
	fps 30
	loop
	walkframe 39 LX LY
}

$animation "a_noclipN" "latios_player_anims\a_noclipN.smd" {
	fps 30
	loop
}

$animation "a_noclipNW" "latios_player_anims\a_noclipNW.smd" {
	fps 30
	loop
}

$animation "a_noclipNE" "latios_player_anims\a_noclipNE.smd" {
	fps 30
	loop
}

$animation "a_noclipS" "latios_player_anims\a_noclipS.smd" {
	fps 30
	loop
}

$animation "a_noclipSW" "latios_player_anims\a_noclipSW.smd" {
	fps 30
	loop
}

$animation "a_noclipSE" "latios_player_anims\a_noclipSE.smd" {
	fps 30
	loop
}

$animation "a_noclipW" "latios_player_anims\a_noclipW.smd" {
	fps 30
	loop
}

$animation "a_noclipE" "latios_player_anims\a_noclipE.smd" {
	fps 30
	loop
}

$animation "a_special" "latios_player_anims\a_special.smd" {
	fps 30
}

$animation "a_physical" "latios_player_anims\a_physical.smd" {
	fps 30
}

$animation "a_idle_delta" "latios_player_anims\a_idle_delta.smd" {
	fps 30
	loop
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_idle_delta_corrective_animation" 0
	weightlist "weights_idle_delta"
}

$sequence "ragdoll" {
	"latios_player_anims\ragdoll.smd"
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
	"latios_player_anims\reference.smd"
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
	"latios_player_anims\amie_angry_layer.smd"
	fadein 0.2
	fadeout 0.1
	hidden
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_amie_angry" {
	"latios_player_anims\gesture_amie_angry.smd"
	activity "ACT_GMOD_GESTURE_DISAGREE" 1
	fadein 0.2
	fadeout 0.1
	blendlayer "amie_angry_layer" 0 5 54 59 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "amie_appeal" {
	"latios_player_anims\amie_appeal.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_amie_appeal" {
	"latios_player_anims\gesture_amie_appeal.smd"
	activity "ACT_GMOD_TAUNT_MUSCLE" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "amie_appeal" 0 5 28 33 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "amie_giggle" {
	"latios_player_anims\amie_giggle.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_amie_giggle" {
	"latios_player_anims\gesture_amie_giggle.smd"
	activity "ACT_GMOD_TAUNT_LAUGH" 1
	fadein 0.2
	fadeout 0.1
	blendlayer "amie_giggle" 0 5 24 29
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "amie_happy_layer" {
	"latios_player_anims\amie_happy_layer.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_amie_happy" {
	"latios_player_anims\gesture_amie_happy.smd"
	activity "ACT_GMOD_GESTURE_AGREE" 1
	fadein 0.2
	fadeout 0.1
	blendlayer "amie_happy_layer" 0 5 57 62
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "amie_eathappy" {
	"latios_player_anims\amie_eathappy.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_amie_eathappy" {
	"latios_player_anims\gesture_amie_eathappy.smd"
	activity "ACT_GMOD_TAUNT_CHEER" 1
	fadein 0.2
	fadeout 0.1
	blendlayer "amie_eathappy" 0 5 70 75
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "amie_lookaround" {
	"latios_player_anims\amie_lookaround.smd"
	fadein 0.2
	fadeout 0.1
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_amie_lookaround" {
	"latios_player_anims\gesture_amie_lookaround.smd"
	activity "ACT_SIGNAL2" 1
	fadein 0.2
	fadeout 0.1
	blendlayer "amie_lookaround" 0 5 54 59
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "amie_hiding" {
	"latios_player_anims\amie_hiding.smd"
	fadein 0.2
	fadeout 0.1
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_amie_hiding" {
	"latios_player_anims\gesture_amie_hiding.smd"
	activity "ACT_SIGNAL3" 1
	fadein 0.2
	fadeout 0.1
	blendlayer "amie_hiding" 0 5 94 89 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "amie_reach" {
	"latios_player_anims\amie_reach.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_amie_reach" {
	"latios_player_anims\gesture_amie_reach.smd"
	activity "ACT_GMOD_GESTURE_WAVE" 1
	fadein 0.2
	fadeout 0.1
	blendlayer "amie_reach" 0 5 24 29
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "amie_reposition1" {
	"latios_player_anims\amie_reposition1.smd"
	fadein 0.2
	fadeout 0.1
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_amie_reposition1" {
	"latios_player_anims\gesture_amie_reposition1.smd"
	activity "ACT_VM_FIDGET" 1
	fadein 0.2
	fadeout 0.1
	blendlayer "amie_reposition1" 0 5 54 56
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "amie_reposition2" {
	"latios_player_anims\amie_reposition2.smd"
	fadein 0.2
	fadeout 0.1
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_amie_reposition2" {
	"latios_player_anims\gesture_amie_reposition2.smd"
	activity "ACT_SIGNAL1" 1
	fadein 0.2
	fadeout 0.1
	blendlayer "amie_reposition2" 0 5 123 128
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "amie_idle" {
	"latios_player_anims\amie_idle.smd"
	activity "ACT_IDLE_RELAXED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_amie_angry_layer"
}

$sequence "amie_rest" {
	"latios_player_anims\amie_rest.smd"
	activity "ACT_COWER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_amie_angry_layer"
}

$sequence "amie_restwake" {
	"latios_player_anims\amie_restwake.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_idle_delta"
}

$sequence "gesture_amie_restwake" {
	"latios_player_anims\gesture_amie_restwake.smd"
	activity "ACT_ARM" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "amie_restwake" 0 5 74 79 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "amie_sleepwake_layer" {
	"latios_player_anims\amie_sleepwake_layer.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_amie_sleepwake" {
	"latios_player_anims\gesture_amie_sleepwake.smd"
	activity "ACT_GMOD_GESTURE_DISAGREE" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "amie_sleepwake_layer" 0 3 56 61 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "amie_sleep" {
	"latios_player_anims\amie_sleep.smd"
	activity "ACT_IDLE_HURT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_amie_sleep" {
	"latios_player_anims\gesture_amie_sleep.smd"
	activity "ACT_GMOD_GESTURE_BOW" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "amie_sleep" 0 10 77 82 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "amie_eat" {
	"latios_player_anims\amie_eat.smd"
	activity "ACT_BUSY_QUEUE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_amie_angry_layer"
}

$sequence "battle_faint" {
	"latios_player_anims\battle_faint.smd"
	activity "ACT_STARTDYING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_battle_faint" {
	"latios_player_anims\gesture_battle_faint.smd"
	activity "ACT_DYINGLOOP" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "battle_faint" 0 5 44 49 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "battle_gesture" {
	"latios_player_anims\battle_gesture.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_battle_gesture" {
	"latios_player_anims\gesture_battle_gesture.smd"
	activity "ACT_SIGNAL_GROUP" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "battle_gesture" 0 5 70 75 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "battle_flinch" {
	"latios_player_anims\battle_flinch.smd"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "battle_idle" {
	"latios_player_anims\battle_idle.smd"
	activity "ACT_IDLE_ANGRY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_amie_angry_layer"
}

$sequence "battle_entry" {
	"latios_player_anims\battle_entry.smd"
	activity "ACT_MP_JUMP_START" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "battle_powermove" {
	"latios_player_anims\battle_powermove.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_battle_powermove" {
	"latios_player_anims\gesture_battle_powermove.smd"
	activity "ACT_GMOD_TAUNT_PERSISTENCE" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "battle_powermove" 0 5 64 69 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "battle_taunt" {
	"latios_player_anims\battle_taunt.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_battle_taunt" {
	"latios_player_anims\gesture_battle_taunt.smd"
	activity "ACT_GMOD_GESTURE_BECON" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "battle_taunt" 0 5 67 72 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "battle_special" {
	"latios_player_anims\battle_special.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_battle_special" {
	"latios_player_anims\gesture_battle_special.smd"
	activity "ACT_GESTURE_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.1
	blendlayer "battle_special" 0 5 64 69 spline
	fps 30
	weightlist "weights_jump_delta"
}

$sequence "battle_physical" {
	"latios_player_anims\battle_physical.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_amie_angry_layer"
}

$sequence "gesture_battle_physical" {
	"latios_player_anims\gesture_battle_physical.smd"
	activity "ACT_GESTURE_MELEE_ATTACK2" 1
	fadein 0.2
	fadeout 0.1
	blendlayer "battle_physical" 0 5 82 87 spline
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
	"latios_player_anims\sit.smd"
	activity "ACT_HL2MP_SIT" 1
	fadein 0.3
	fadeout 0.3
	addlayer "Normal_HeadMove"
	fps 30
	loop
}

$sequence "sit_rollercoaster" {
	"latios_player_anims\sit_rollercoaster.smd"
	activity "ACT_GMOD_SIT_ROLLERCOASTER" 1
	fadein 0.3
	fadeout 0.3
	addlayer "Normal_HeadMove"
	fps 30
	loop
}

$sequence "drive_airboat" {
	"latios_player_anims\drive_airboat.smd"
	activity "ACT_DRIVE_AIRBOAT" 1
	fadein 0.3
	fadeout 0.3
	addlayer "Normal_HeadMove"
	fps 30
	loop
}

$sequence "drive_jeep" {
	"latios_player_anims\drive_jeep.smd"
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

$collisionjoints "latios_player_physics.smd"
{
	$mass 60
	$inertia 10
	$damping 0
	$rotdamping 4
	$rootbone "Waist"


	$jointconstrain "Spine1" x limit -30 30 0
	$jointconstrain "Spine1" y limit -30 30 0
	$jointconstrain "Spine1" z limit -30 30 0

	$jointconstrain "Spine2" x limit -30 30 0
	$jointconstrain "Spine2" y limit -30 30 0
	$jointconstrain "Spine2" z limit -30 30 0

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

	$jointconstrain "LEar1" x limit -10 10 0
	$jointconstrain "LEar1" y limit -35 35 0
	$jointconstrain "LEar1" z limit -10 10 0

	$jointconstrain "REar1" x limit -10 10 0
	$jointconstrain "REar1" y limit -35 35 0
	$jointconstrain "REar1" z limit -10 10 0

	$jointconstrain "LEar2" x limit -15 15 0
	$jointconstrain "LEar2" y limit -35 35 0
	$jointconstrain "LEar2" z limit -35 35 0

	$jointconstrain "RArm" x limit -60 60 0
	$jointconstrain "RArm" y limit -30 30 0
	$jointconstrain "RArm" z limit -10 10 0

	$jointconstrain "RForeArm" x limit 0 0 0
	$jointconstrain "RForeArm" y limit -60 60 0
	$jointconstrain "RForeArm" z limit -60 60 0

	$jointconstrain "LArm" x limit -60 60 0
	$jointconstrain "LArm" y limit -30 30 0
	$jointconstrain "LArm" z limit -10 30 0

	$jointconstrain "LForeArm" x limit 0 0 0
	$jointconstrain "LForeArm" y limit -60 60 0
	$jointconstrain "LForeArm" z limit -60 60 0

	$jointconstrain "LFeeler1" x limit -30 30 0
	$jointconstrain "LFeeler1" y limit -50 50 0
	$jointconstrain "LFeeler1" z limit -50 50 0

	$jointconstrain "RFeeler1" x limit -30 30 0
	$jointconstrain "RFeeler1" y limit -50 50 0
	$jointconstrain "RFeeler1" z limit -50 50 0

	$jointconstrain "RFeeler2" x limit -30 30 0
	$jointconstrain "RFeeler2" y limit -50 50 0
	$jointconstrain "RFeeler2" z limit -50 50 0

	$jointconstrain "REar2" x limit -15 15 0
	$jointconstrain "REar2" y limit -35 35 0
	$jointconstrain "REar2" z limit -35 35 0

	$jointconstrain "Tail" x limit -30 30 0
	$jointconstrain "Tail" y limit -30 30 0
	$jointconstrain "Tail" z limit -30 30 0

	$jointconstrain "RFoot" x limit -45 45 0
	$jointconstrain "RFoot" y limit -60 60 0
	$jointconstrain "RFoot" z limit -50 50 0

	$jointconstrain "LFoot" x limit -45 45 0
	$jointconstrain "LFoot" y limit -60 60 0
	$jointconstrain "LFoot" z limit -50 50 0

	$jointconstrain "LFeeler2" x limit -30 30 0
	$jointconstrain "LFeeler2" y limit -50 50 0
	$jointconstrain "LFeeler2" z limit -50 50 0
}
