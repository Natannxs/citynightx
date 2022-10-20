DP = {}

DP.Expressions = {
   ["Enervé"] = {"Expression", "mood_angry_1"},
   ["Bourré"] = {"Expression", "mood_drunk_1"},
   ["Débile"] = {"Expression", "pose_injured_1"},
   ["Electrocuté"] = {"Expression", "electrocuted_1"},
   ["Gricheux"] = {"Expression", "effort_1"},
   ["Gricheux2"] = {"Expression", "mood_drivefast_1"},
   ["Gricheux3"] = {"Expression", "pose_angry_1"},
   ["Heureux"] = {"Expression", "mood_happy_1"},
   ["Blessé"] = {"Expression", "mood_injured_1"},
   ["Joyeux"] = {"Expression", "mood_dancing_low_1"},
   ["Bouche bé"] = {"Expression", "smoking_hold_1"},
   ["Jamais Cligné des yeux"] = {"Expression", "pose_normal_1"},
   ["Un oeil"] = {"Expression", "pose_aiming_1"},
   ["Choqué"] = {"Expression", "shocked_1"},
   ["Choqué2"] = {"Expression", "shocked_2"},
   ["Endormit"] = {"Expression", "mood_sleeping_1"},
   ["Endormit2"] = {"Expression", "dead_1"},
   ["Endormit3"] = {"Expression", "dead_2"},
   ["Chic"] = {"Expression", "mood_smug_1"},
   ["Speculatif"] = {"Expression", "mood_aiming_1"},
   ["Stressé"] = {"Expression", "mood_stressed_1"},
   ["Bouder"] = {"Expression", "mood_sulk_1"},
   ["Bizard"] = {"Expression", "effort_2"},
   ["Bizard2"] = {"Expression", "effort_3"},
}

DP.Walks = {
  ["Alien"] = {"move_m@alien"},
  ["Blindé"] = {"anim_group_move_ballistic"},
  ["Arrogant"] = {"move_f@arrogant@a"},
  ["Brave"] = {"move_m@brave"},
  ["Normal"] = {"move_m@casual@a"},
  ["Normal2"] = {"move_m@casual@b"},
  ["Normal3"] = {"move_m@casual@c"},
  ["Normal4"] = {"move_m@casual@d"},
  ["Normal5"] = {"move_m@casual@e"},
  ["Normal6"] = {"move_m@casual@f"},
  ["Chichi"] = {"move_f@chichi"},
  ["Confident"] = {"move_m@confident"},
  ["Police"] = {"move_m@business@a"},
  ["Police2"] = {"move_m@business@b"},
  ["Police3"] = {"move_m@business@c"},
  ["Normal Femme"] = {"move_f@multiplayer"},
  ["Normal Homme"] = {"move_m@multiplayer"},
  ["Bourré"] = {"move_m@drunk@a"},
  ["Bourré2"] = {"move_m@drunk@slightlydrunk"},
  ["Bourré3"] = {"move_m@buzzed"},
  ["Bourré4"] = {"move_m@drunk@verydrunk"},
  ["Femme"] = {"move_f@femme@"},
  ["Feux"] = {"move_characters@franklin@fire"},
  ["Feux2"] = {"move_characters@michael@fire"},
  ["Feux3"] = {"move_m@fire"},
  ["Fuir"] = {"move_f@flee@a"},
  ["Franklin"] = {"move_p_m_one"},
  ["Gangster"] = {"move_m@gangster@generic"},
  ["Gangster2"] = {"move_m@gangster@ng"},
  ["Gangster3"] = {"move_m@gangster@var_e"},
  ["Gangster4"] = {"move_m@gangster@var_f"},
  ["Gangster5"] = {"move_m@gangster@var_i"},
  ["Grooving"] = {"anim@move_m@grooving@"},
  ["Garde"] = {"move_m@prison_gaurd"},
  ["Mennoté"] = {"move_m@prisoner_cuffed"},
  ["Talons"] = {"move_f@heels@c"},
  ["Talons2"] = {"move_f@heels@d"},
  ["Randonné"] = {"move_m@hiking"},
  ["Hipster"] = {"move_m@hipster@a"},
  ["SDF"] = {"move_m@hobo@a"},
  ["Pressé"] = {"move_f@hurry@a"},
  ["Agent d'entretient"] = {"move_p_m_zero_janitor"},
  ["Agent d'entretient2"] = {"move_p_m_zero_slow"},
  ["Jogging"] = {"move_m@jog@"},
  ["Lemar"] = {"anim_group_move_lemar_alley"},
  ["Lester"] = {"move_heist_lester"},
  ["Lester2"] = {"move_lester_caneup"},
  ["Mangeuse d'homme"] = {"move_f@maneater"},
  ["Michael"] = {"move_ped_bucket"},
  ["Argent"] = {"move_m@money"},
  ["Muscle"] = {"move_m@muscle@a"},
  ["Chic"] = {"move_m@posh@"},
  ["Chic2"] = {"move_f@posh@"},
  ["Rapide"] = {"move_m@quick"},
  ["Course"] = {"female_fast_runner"},
  ["Triste"] = {"move_m@sad@a"},
  ["Impertinent"] = {"move_m@sassy"},
  ["Impertinent2"] = {"move_f@sassy"},
  ["Appeuré"] = {"move_f@scared"},
  ["Sexy"] = {"move_f@sexy@a"},
  ["Louche"] = {"move_m@shadyped@a"},
  ["Lent"] = {"move_characters@jimmy@slow@"},
  ["Fanfaron"] = {"move_m@swagger"},
  ["Dur"] = {"move_m@tough_guy@"},
  ["Dur2"] = {"move_f@tough_guy@"},
  ["Ordure"] = {"clipset@move@trash_fast_turn"},
  ["Ordure2"] = {"missfbi4prepp1_garbageman"},
  ["Trevor"] = {"move_p_m_two"},
  ["Gros"] = {"move_m@bag"},
  -- I cant get these to work for some reason, if anyone knows a fix lmk
  --["Caution"] = {"move_m@caution"},
  --["Chubby"] = {"anim@move_m@chubby@a"},
  --["Crazy"] = {"move_m@crazy"},
  --["Joy"] = {"move_m@joy@a"},
  --["Power"] = {"move_m@power"},
  --["Sad2"] = {"anim@move_m@depression@a"},
  --["Sad3"] = {"move_m@depression@b"},
  --["Sad4"] = {"move_m@depression@d"},
  --["Wading"] = {"move_m@wading"},
}

DP.Shared = {
   --[emotename] = {dictionary, animation, displayname, targetemotename, additionalanimationoptions}
   -- you dont have to specify targetemoteanem, if you do dont it will just play the same animation on both.
   -- targetemote is used for animations that have a corresponding animation to the other player.
   ["serrerlamain"] = {"mp_ped_interaction", "handshake_guy_a", "Serrer la main", "serrerlamain2", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 3000,
       SyncOffsetFront = 0.9
   }},
   ["serrerlamain2"] = {"mp_ped_interaction", "handshake_guy_b", "Serrer la main 2", "serrerlamain", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 3000
   }},
   ["calin"] = {"mp_ped_interaction", "kisses_guy_a", "Calin", "calin2", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteDuration = 5000,
       SyncOffsetFront = 1.05,
   }},
   ["calin2"] = {"mp_ped_interaction", "kisses_guy_b", "Calin 2", "calin", AnimationOptions =
   {
       EmoteMoving = false,
       EmoteDuration = 5000,
       SyncOffsetFront = 1.13
   }},
   ["bro"] = {"mp_ped_interaction", "hugs_guy_a", "Bro", "bro2", AnimationOptions =
   {
        SyncOffsetFront = 1.14
   }},
   ["bro2"] = {"mp_ped_interaction", "hugs_guy_b", "Bro 2", "bro", AnimationOptions =
   {
        SyncOffsetFront = 1.14
   }},
   ["donner"] = {"mp_common", "givetake1_a", "Donner", "donner2", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 2000
   }},
   ["donner2"] = {"mp_common", "givetake1_b", "Donner 2", "donner", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 2000
   }},
   ["baseball"] = {"anim@arena@celeb@flat@paired@no_props@", "baseball_a_player_a", "Baseball", "baseballlancer"},
   ["baseballlancer"] = {"anim@arena@celeb@flat@paired@no_props@", "baseball_a_player_b", "Baseball Lancer", "baseball"},
   ["braquer"] = {"random@countryside_gang_fight", "biker_02_stickup_loop", "Braquer", "peurbraquage", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["peurbraquage"] = {"missminuteman_1ig_2", "handsup_base", "Peur Braquage", "braquer", AnimationOptions =
   {
      EmoteMoving = true,
      EmoteLoop = true,
   }},
   ["coupdepoing"] = {"melee@unarmed@streamed_variations", "plyr_takedown_rear_lefthook", "Coup de poing", "sefairetapé"},
   ["sefairetapé"] = {"melee@unarmed@streamed_variations", "victim_takedown_front_cross_r", "Se faire tapé", "coupdepoing"},
   ["coupdeboule"] = {"melee@unarmed@streamed_variations", "plyr_takedown_front_headbutt", "Coup de boule", "seprendreuncoupdeboule"},
   ["seprendreuncoupdeboule"] = {"melee@unarmed@streamed_variations", "victim_takedown_front_headbutt", "Se prendre un coup de boule", "coupdeboule"},
   ["claque2"] = {"melee@unarmed@streamed_variations", "plyr_takedown_front_backslap", "Claque 2", "claque2", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
       EmoteDuration = 2000,
   }},
   ["claque"] = {"melee@unarmed@streamed_variations", "plyr_takedown_front_slap", "Claque", "claque", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
       EmoteDuration = 2000,
   }},
   ["seprendreuneclaque"] = {"melee@unarmed@streamed_variations", "victim_takedown_front_slap", "Se prendre une claque", "seprendreuneclaque"},
   ["seprendreuneclaque2"] = {"melee@unarmed@streamed_variations", "victim_takedown_front_backslap", "Se prendre une claque 2", "seprendreuneclaque2"},
}

DP.Dances = {
   ["dancef"] = {"anim@amb@nightclub@dancers@solomun_entourage@", "mi_dance_facedj_17_v1_female^1", "Dance F", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["dancef2"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "high_center", "Dance F2", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["dancef3"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "high_center_up", "Dance F3", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["dancef4"] = {"anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", "hi_dance_facedj_09_v2_female^1", "Dance F4", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["dancef5"] = {"anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", "hi_dance_facedj_09_v2_female^3", "Dance F5", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["dancef6"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "high_center_up", "Dance F6", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["danceslow2"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "low_center", "Dance Slow 2", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["danceslow3"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "low_center_down", "Dance Slow 3", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["danceslow4"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_b@", "low_center", "Dance Slow 4", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["dance"] = {"anim@amb@nightclub@dancers@podium_dancers@", "hi_dance_facedj_17_v2_male^5", "Dance", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["dance2"] = {"anim@amb@nightclub@mini@dance@dance_solo@male@var_b@", "high_center_down", "Dance 2", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["dance3"] = {"anim@amb@nightclub@mini@dance@dance_solo@male@var_a@", "high_center", "Dance 3", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["dance4"] = {"anim@amb@nightclub@mini@dance@dance_solo@male@var_b@", "high_center_up", "Dance 4", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["danceupper"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_b@", "high_center", "Dance Upper", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["danceupper2"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_b@", "high_center_up", "Dance Upper 2", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["danceshy"] = {"anim@amb@nightclub@mini@dance@dance_solo@male@var_a@", "low_center", "Dance Shy", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["danceshy2"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_b@", "low_center_down", "Dance Shy 2", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["danceslow"] = {"anim@amb@nightclub@mini@dance@dance_solo@male@var_b@", "low_center", "Dance Slow", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["dancesilly9"] = {"rcmnigel1bnmt_1b", "dance_loop_tyler", "Dance Silly 9", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["dance6"] = {"misschinese2_crystalmazemcs1_cs", "dance_loop_tao", "Dance 6", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["dance7"] = {"misschinese2_crystalmazemcs1_ig", "dance_loop_tao", "Dance 7", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["dance8"] = {"missfbi3_sniping", "dance_m_default", "Dance 8", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["dancesilly"] = {"special_ped@mountain_dancer@monologue_3@monologue_3a", "mnt_dnc_buttwag", "Dance Silly", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["dancesilly2"] = {"move_clown@p_m_zero_idles@", "fidget_short_dance", "Dance Silly 2", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["dancesilly3"] = {"move_clown@p_m_two_idles@", "fidget_short_dance", "Dance Silly 3", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["dancesilly4"] = {"anim@amb@nightclub@lazlow@hi_podium@", "danceidle_hi_11_buttwiggle_b_laz", "Dance Silly 4", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["dancesilly5"] = {"timetable@tracy@ig_5@idle_a", "idle_a", "Dance Silly 5", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["dancesilly6"] = {"timetable@tracy@ig_8@idle_b", "idle_d", "Dance Silly 6", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["dance9"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "med_center_up", "Dance 9", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["dancesilly8"] = {"anim@mp_player_intcelebrationfemale@the_woogie", "the_woogie", "Dance Silly 8", AnimationOptions =
   {
       EmoteLoop = true
   }},
   ["dancesilly7"] = {"anim@amb@casino@mini@dance@dance_solo@female@var_b@", "high_center", "Dance Silly 7", AnimationOptions =
   {
       EmoteLoop = true
   }},
   ["dance5"] = {"anim@amb@casino@mini@dance@dance_solo@female@var_a@", "med_center", "Dance 5", AnimationOptions =
   {
       EmoteLoop = true
   }},
   ["danceglowstick"] = {"anim@amb@nightclub@lazlow@hi_railing@", "ambclub_13_mi_hi_sexualgriding_laz", "Dance Glowsticks", AnimationOptions =
   {
       Prop = 'ba_prop_battle_glowstick_01',
       PropBone = 28422,
       PropPlacement = {0.0700,0.1400,0.0,-80.0,20.0},
       SecondProp = 'ba_prop_battle_glowstick_01',
       SecondPropBone = 60309,
       SecondPropPlacement = {0.0700,0.0900,0.0,-120.0,-20.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["danceglowstick2"] = {"anim@amb@nightclub@lazlow@hi_railing@", "ambclub_12_mi_hi_bootyshake_laz", "Dance Glowsticks 2", AnimationOptions =
   {
       Prop = 'ba_prop_battle_glowstick_01',
       PropBone = 28422,
       PropPlacement = {0.0700,0.1400,0.0,-80.0,20.0},
       SecondProp = 'ba_prop_battle_glowstick_01',
       SecondPropBone = 60309,
       SecondPropPlacement = {0.0700,0.0900,0.0,-120.0,-20.0},
       EmoteLoop = true,
   }},
   ["danceglowstick3"] = {"anim@amb@nightclub@lazlow@hi_railing@", "ambclub_09_mi_hi_bellydancer_laz", "Dance Glowsticks 3", AnimationOptions =
   {
       Prop = 'ba_prop_battle_glowstick_01',
       PropBone = 28422,
       PropPlacement = {0.0700,0.1400,0.0,-80.0,20.0},
       SecondProp = 'ba_prop_battle_glowstick_01',
       SecondPropBone = 60309,
       SecondPropPlacement = {0.0700,0.0900,0.0,-120.0,-20.0},
       EmoteLoop = true,
   }},
   ["dancehorse"] = {"anim@amb@nightclub@lazlow@hi_dancefloor@", "dancecrowd_li_15_handup_laz", "Dance Horse", AnimationOptions =
   {
       Prop = "ba_prop_battle_hobby_horse",
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["dancehorse2"] = {"anim@amb@nightclub@lazlow@hi_dancefloor@", "crowddance_hi_11_handup_laz", "Dance Horse 2", AnimationOptions =
   {
       Prop = "ba_prop_battle_hobby_horse",
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteLoop = true,
   }},
   ["dancehorse3"] = {"anim@amb@nightclub@lazlow@hi_dancefloor@", "dancecrowd_li_11_hu_shimmy_laz", "Dance Horse 3", AnimationOptions =
   {
       Prop = "ba_prop_battle_hobby_horse",
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteLoop = true,
   }},
}

DP.Emotes = {
   ["boire"] = {"mp_player_inteat@pnq", "loop", "Drink", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 2500,
   }},
   ["bête"] = {"anim@mp_fm_event@intro", "beast_transform", "Beast", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 5000,
   }},
   ["chill"] = {"switch@trevor@scares_tramp", "trev_scares_tramp_idle_tramp", "Chill", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["latêtedanslesnuages"] = {"switch@trevor@annoys_sunbathers", "trev_annoys_sunbathers_loop_girl", "La tête dans les nuages", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["latêtedanslesnuages2"] = {"switch@trevor@annoys_sunbathers", "trev_annoys_sunbathers_loop_guy", "La tête dans les nuages 2", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["allonger"] = {"missfbi3_sniping", "prone_dave", "Allonger", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["mettresurlecôté"] = {"misscarsteal3pullover", "pull_over_right", "Mettre sur le côté", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 1300,
   }},
   ["fainéanter"] = {"anim@heists@heist_corona@team_idles@male_a", "idle", "Fainéanter", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["fainéanter8"] = {"amb@world_human_hang_out_street@male_b@idle_a", "idle_b", "Fainéanter 8"},
   ["fainéanter9"] = {"friends@fra@ig_1", "base_idle", "Fainéanter 9", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["fainéanter10"] = {"mp_move@prostitute@m@french", "idle", "Fainéanter 10", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["fainéanter11"] = {"random@countrysiderobbery", "idle_a", "Fainéanter 11", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["fainéanter2"] = {"anim@heists@heist_corona@team_idles@female_a", "idle", "Fainéanter 2", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["fainéanter3"] = {"anim@heists@humane_labs@finale@strip_club", "ped_b_celebrate_loop", "Fainéanter 3", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["fainéanter4"] = {"anim@mp_celebration@idles@female", "celebration_idle_f_a", "Fainéanter 4", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["fainéanter5"] = {"anim@mp_corona_idles@female_b@idle_a", "idle_a", "Fainéanter 5", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["fainéanter6"] = {"anim@mp_corona_idles@male_c@idle_a", "idle_a", "Fainéanter 6", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["fainéanter7"] = {"anim@mp_corona_idles@male_d@idle_a", "idle_a", "Fainéanter 7", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["attendre3"] = {"amb@world_human_hang_out_street@female_hold_arm@idle_a", "idle_a", "Attendre 3", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["êtrebourré"] = {"random@drunk_driver_1", "drunk_driver_stand_loop_dd1", "Etre bourré", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["êtrebourré2"] = {"random@drunk_driver_1", "drunk_driver_stand_loop_dd2", "Etre bourré 2", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["êtrebourré3"] = {"missarmenian2", "standing_idle_loop_drunk", "Etre bourré 3", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["airguitar"] = {"anim@mp_player_intcelebrationfemale@air_guitar", "air_guitar", "Air Guitar"},
   ["airsynth"] = {"anim@mp_player_intcelebrationfemale@air_synth", "air_synth", "Air Synth"},
   ["sedisputer"] = {"misscarsteal4@actor", "actor_berating_loop", "Se disputer", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["sedisputer2"] = {"oddjobs@assassinate@vice@hooker", "argue_a", "Se disputer 2", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["barman"] = {"anim@amb@clubhouse@bar@drink@idle_a", "idle_a_bartender", "Barman", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["fellation"] = {"anim@mp_player_intcelebrationfemale@blow_kiss", "blow_kiss", "Fellation"},
   ["fellation2"] = {"anim@mp_player_intselfieblow_kiss", "exit", "Fellation 2", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 2000

   }},
   ["révérence"] = {"anim@mp_player_intcelebrationpaired@f_f_sarcastic", "sarcastic_left", "Révérence"},
   ["amener"] = {"misscommon@response", "bring_it_on", "Amener", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 3000
   }},
   ["appeller"] = {"mini@triathlon", "want_some_of_this", "Appeller quelqu'un", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 2000
   }},
   ["police2"] = {"anim@amb@nightclub@peds@", "rcmme_amanda1_stand_loop_cop", "Police 2", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["police3"] = {"amb@code_human_police_investigate@idle_a", "idle_b", "Police 3", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["brascroisés"] = {"amb@world_human_hang_out_street@female_arms_crossed@idle_a", "idle_a", "Bras Croisés", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["brascroisés2"] = {"amb@world_human_hang_out_street@male_c@idle_a", "idle_b", "Bras Croisés 2", AnimationOptions =
   {
       EmoteMoving = true,
   }},
   ["brascroisés3"] = {"anim@heists@heist_corona@single_team", "single_team_loop_boss", "Bras Croisés 3", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["brascroisés4"] = {"random@street_race", "_car_b_lookout", "Bras Croisés 4", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["brascroisés5"] = {"anim@amb@nightclub@peds@", "rcmme_amanda1_stand_loop_cop", "Bras Croisés 5", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["foldarms2"] = {"anim@amb@nightclub@peds@", "rcmme_amanda1_stand_loop_cop", "Fold Arms 2", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["brascroisés6"] = {"random@shop_gunstore", "_idle", "Bras Croisés 6", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["foldarms"] = {"anim@amb@business@bgen@bgen_no_work@", "stand_phone_phoneputdown_idle_nowork", "Fold Arms", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["brascroiséssurlecôté"] = {"rcmnigel1a_band_groupies", "base_m2", "Bras Croisés sur le côté", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["damn"] = {"gestures@m@standing@casual", "gesture_damn", "Damn", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 1000
   }},
   ["damn2"] = {"anim@am_hold_up@male", "shoplift_mid", "Damn 2", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 1000
   }},
   ["pointerverslebas"] = {"gestures@f@standing@casual", "gesture_hand_down", "Pointer vers le bas", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 1000
   }},
   ["serendre"] = {"random@arrests@busted", "idle_a", "Se Rendre", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["êtredépité2"] = {"anim@mp_player_intcelebrationfemale@face_palm", "face_palm", "Etre Dépité 2", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 8000
   }},
   ["êtredépité"] = {"random@car_thief@agitated@idle_a", "agitated_idle_a", "Etre Dépité", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 8000
   }},
   ["êtredépité3"] = {"missminuteman_1ig_2", "tasered_2", "Etre Dépité 3", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 8000
   }},
   ["êtredépité4"] = {"anim@mp_player_intupperface_palm", "idle_a", "Etre Dépité 4", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteLoop = true,
   }},
   ["tombé"] = {"random@drunk_driver_1", "drunk_fall_over", "Tombé"},
   ["tombé2"] = {"mp_suicide", "pistol", "Tombé 2"},
   ["tombé3"] = {"mp_suicide", "pill", "Tombé 3"},
   ["tombé4"] = {"friends@frf@ig_2", "knockout_plyr", "Tombé 4"},
   ["tombé5"] = {"anim@gangops@hostage@", "victim_fail", "Tombé 5"},
   ["tomberendormit"] = {"mp_sleep", "sleep_loop", "Tomber Endormit", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteLoop = true,
   }},
   ["proposeruncombat"] = {"anim@deathmatch_intros@unarmed", "intro_male_unarmed_c", "Proposer un Combat"},
   ["proposeruncombat2"] = {"anim@deathmatch_intros@unarmed", "intro_male_unarmed_e", "Proposer un Combat 2"},
   ["doigt"] = {"anim@mp_player_intselfiethe_bird", "idle_a", "Doigt", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["doigt2"] = {"anim@mp_player_intupperfinger", "idle_a_fp", "Doigt 2", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["serrerlamain"] = {"mp_ped_interaction", "handshake_guy_a", "Serrer la Main", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 3000
   }},
   ["serrerlamain2"] = {"mp_ped_interaction", "handshake_guy_b", "Serrer la Main 2", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 3000
   }},
   ["attendre4"] = {"amb@world_human_hang_out_street@Female_arm_side@idle_a", "idle_a", "Attendre 4", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["attendre5"] = {"missclothing", "idle_storeclerk", "Attendre 5", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["attendre6"] = {"timetable@amanda@ig_2", "ig_2_base_amanda", "Attendre 6", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["attendre7"] = {"rcmnigel1cnmt_1c", "base", "Attendre 7", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["attendre8"] = {"rcmjosh1", "idle", "Attendre 8", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["attnedre9"] = {"rcmjosh2", "josh_2_intp1_base", "Attendre 9", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["attendre10"] = {"timetable@amanda@ig_3", "ig_3_base_tracy", "Attendre 10", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["attendre11"] = {"misshair_shop@hair_dressers", "keeper_base", "Attendre 11", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["randonné"] = {"move_m@hiking", "idle", "Randonné", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["calin"] = {"mp_ped_interaction", "kisses_guy_a", "Calin"},
   ["calin2"] = {"mp_ped_interaction", "kisses_guy_b", "Calin 2"},
   ["calin3"] = {"mp_ped_interaction", "hugs_guy_a", "Calin 3"},
   ["inspecter"] = {"random@train_tracks", "idle_e", "Inspecter"},
   ["jazzhands"] = {"anim@mp_player_intcelebrationfemale@jazz_hands", "jazz_hands", "Jazzhands", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 6000,
   }},
   ["courrir2"] = {"amb@world_human_jog_standing@male@idle_a", "idle_a", "Courrir 2", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["courrir3"] = {"amb@world_human_jog_standing@female@idle_a", "idle_a", "Courrir 3", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["courrir4"] = {"amb@world_human_power_walker@female@idle_a", "idle_a", "Courrir 4", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["courrir5"] = {"move_m@joy@a", "walk", "Courrir 5", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["sautétoile"] = {"timetable@reunited@ig_2", "jimmy_getknocked", "Saut Etoile", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["agenouiller2"] = {"rcmextreme3", "idle", "S'Agenouiller 2", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["agenouiller3"] = {"amb@world_human_bum_wash@male@low@idle_a", "idle_a", "S'Agenouiller 3", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["toquer"] = {"timetable@jimmy@doorknock@", "knockdoor_idle", "Toquer", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteLoop = true,
   }},
   ["toquer2"] = {"missheistfbi3b_ig7", "lift_fibagent_loop", "Toquer 2", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["coupdepoing"] = {"anim@mp_player_intcelebrationfemale@knuckle_crunch", "knuckle_crunch", "Coup de Poing", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["dancepoteau"] = {"mp_safehouse", "lap_dance_girl", "Dance Poteau"},
   ["incliner2"] = {"amb@world_human_leaning@female@wall@back@hand_up@idle_a", "idle_a", "S'incliner 2", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["incliner3"] = {"amb@world_human_leaning@female@wall@back@holding_elbow@idle_a", "idle_a", "S'incliner 3", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["incliner4"] = {"amb@world_human_leaning@male@wall@back@foot_up@idle_a", "idle_a", "S'incliner 4", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["incliner5"] = {"amb@world_human_leaning@male@wall@back@hands_together@idle_b", "idle_b", "S'incliner 5", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["draguer"] = {"random@street_race", "_car_a_flirt_girl", "Draguer", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["accouder2"] = {"amb@prop_human_bum_shopping_cart@male@idle_a", "idle_c", "S'accouder 2", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["accouder3"] = {"anim@amb@nightclub@lazlow@ig1_vip@", "clubvip_base_laz", "S'accouder 3", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["accouder4"] = {"anim@heists@prison_heist", "ped_b_loop_a", "S'accouder 4", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["accouderenhauteur"] = {"anim@mp_ferris_wheel", "idle_a_player_one", "S'accouder en hauteur", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["accouderenhauteur2"] = {"anim@mp_ferris_wheel", "idle_a_player_two", "S'accouder en hauteur 2", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["accoudercôté"] = {"timetable@mime@01_gc", "idle_a", "S'accouder d'un côté", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["accoudercôté2"] = {"misscarstealfinale", "packer_idle_1_trevor", "S'accouder d'un côté 2", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["accoudercôté3"] = {"misscarstealfinalecar_5_ig_1", "waitloop_lamar", "S'accouder d'un côté 3", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["accoudercôté4"] = {"misscarstealfinalecar_5_ig_1", "waitloop_lamar", "S'accouder d'un côté 4", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = false,
   }},
   ["accoudercôté5"] = {"rcmjosh2", "josh_2_intp1_base", "S'accouder d'un côté 5", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = false,
   }},
   ["moi"] = {"gestures@f@standing@casual", "gesture_me_hard", "Moi", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 1000
   }},
   ["mechanique"] = {"mini@repair", "fixing_a_ped", "Mechanique", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["mechanique2"] = {"amb@world_human_vehicle_mechanic@male@base", "idle_a", "Mechanique 2", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["mechanique3"] = {"anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", "Mechanique 3", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["mechanique4"] = {"anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", "Mechanique 4", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["medecin2"] = {"amb@medic@standing@tendtodead@base", "base", "Medecin 2", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["méditer"] = {"rcmcollect_paperleadinout@", "meditiate_idle", "Méditer", AnimationOptions = -- CHANGE ME
   {
       EmoteLoop = true,
   }},
   ["méditer2"] = {"rcmepsilonism3", "ep_3_rcm_marnie_meditating", "Méditer 2", AnimationOptions = -- CHANGE ME
   {
       EmoteLoop = true,
   }},
   ["méditer2"] = {"rcmepsilonism3", "base_loop", "Méditer 3", AnimationOptions = -- CHANGE ME
   {
       EmoteLoop = true,
   }},
   ["metal"] = {"anim@mp_player_intincarrockstd@ps@", "idle_a", "Metal", AnimationOptions = -- CHANGE ME
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["non"] = {"anim@heists@ornate_bank@chat_manager", "fail", "Non", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["non2"] = {"mp_player_int_upper_nod", "mp_player_int_nod_no", "Non 2", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["piquerlenez"] = {"anim@mp_player_intcelebrationfemale@nose_pick", "nose_pick", "Piquer le Nez", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["jamaisdelavie"] = {"gestures@m@standing@casual", "gesture_no_way", "Jamais de la Vie", AnimationOptions =
   {
       EmoteDuration = 1500,
       EmoteMoving = true,
   }},
   ["ok"] = {"anim@mp_player_intselfiedock", "idle_a", "OK", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["essouflé"] = {"re@construction", "out_of_breath", "Essouflé", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["ramasser"] = {"random@domestic", "pickup_low", "Ramasser"},
   ["pousser"] = {"missfinale_c2ig_11", "pushcar_offcliff_f", "Pousser", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["pousser2"] = {"missfinale_c2ig_11", "pushcar_offcliff_m", "Pousser 2", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["pointer"] = {"gestures@f@standing@casual", "gesture_point", "Pointer", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["pushup"] = {"amb@world_human_push_ups@male@idle_a", "idle_d", "Pushup", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["compteàreboure"] = {"random@street_race", "grid_girl_race_start", "Compte à reboure", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["pointerdroite"] = {"mp_gun_shop_tut", "indicate_right", "Pointer a Droite", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["salute"] = {"anim@mp_player_intincarsalutestd@ds@", "idle_a", "Saluer", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["saluer2"] = {"anim@mp_player_intincarsalutestd@ps@", "idle_a", "Saluer 2", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["saluer3"] = {"anim@mp_player_intuppersalute", "idle_a", "Saluer 3", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["avoirpeur"] = {"random@domestic", "f_distressed_loop", "Avoir Peur", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["avoirpeur2"] = {"random@homelandsecurity", "knees_loop_girl", "Avoir Peur 2", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["fuckoff"] = {"misscommon@response", "screw_you", "Fuck Off", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["sedébarasser"] = {"move_m@_idles@shake_off", "shakeoff_1", "Se Débarasser", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 3500,
   }},
   ["tirer"] = {"random@dealgonewrong", "idle_a", "Tirer", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["dormir"] = {"timetable@tracy@sleep@", "idle_c", "Dormir", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["hausserlesépaules"] = {"gestures@f@standing@casual", "gesture_shrug_hard", "Hausser les Epaules", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 1000,
   }},
   ["hausserlesépaules2"] = {"gestures@m@standing@casual", "gesture_shrug_hard", "Hausser les Epaules 2", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 1000,
   }},
   ["asseoir"] = {"anim@amb@business@bgen@bgen_no_work@", "sit_phone_phoneputdown_idle_nowork", "S'Asseoir", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["asseoir2"] = {"rcm_barry3", "barry_3_sit_loop", "S'Asseoir 2", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["asseoir3"] = {"amb@world_human_picnic@male@idle_a", "idle_a", "S'Asseoir 3", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["asseoir4"] = {"amb@world_human_picnic@female@idle_a", "idle_a", "S'Asseoir 4", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["asseoir5"] = {"anim@heists@fleeca_bank@ig_7_jetski_owner", "owner_idle", "S'Asseoir 5", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["asseoir6"] = {"timetable@jimmy@mics3_ig_15@", "idle_a_jimmy", "S'Asseoir 6", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["asseoir7"] = {"anim@amb@nightclub@lazlow@lo_alone@", "lowalone_base_laz", "S'Asseoir 7", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["asseoir8"] = {"timetable@jimmy@mics3_ig_15@", "mics3_15_base_jimmy", "S'Asseoir 8", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["asseoir9"] = {"amb@world_human_stupor@male@idle_a", "idle_a", "S'Asseoir 9", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["asseoirpenché"] = {"timetable@tracy@ig_14@", "ig_14_base_tracy", "S'Asseoir Penché", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["asseoirtriste"] = {"anim@amb@business@bgen@bgen_no_work@", "sit_phone_phoneputdown_sleeping-noworkfemale", "S'Asseoir Triste", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["asseoirpeur"] = {"anim@heists@ornate_bank@hostages@hit", "hit_loop_ped_b", "S'Asseoir Peur", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["asseoirpeur2"] = {"anim@heists@ornate_bank@hostages@ped_c@", "flinch_loop", "S'Asseoir Peur 2", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["asseoirpeur3"] = {"anim@heists@ornate_bank@hostages@ped_e@", "flinch_loop", "S'Asseoir Peur 3", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["bourré"] = {"timetable@amanda@drunk@base", "base", "S'Asseoir Bourré", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["chaise2"] = {"timetable@ron@ig_5_p3", "ig_5_p3_base", "S'Asseoir Chaise 2", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["chaise3"] = {"timetable@reunited@ig_10", "base_amanda", "S'Asseoir Chaise 3", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["chaise4"] = {"timetable@ron@ig_3_couch", "base", "S'Asseoir Chaise 4", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["chaise5"] = {"timetable@jimmy@mics3_ig_15@", "mics3_15_base_tracy", "S'Asseoir Chaise 5", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["chaise6"] = {"timetable@maid@couch@", "base", "S'Asseoir Chaise 6", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["chaisecôté"] = {"timetable@ron@ron_ig_2_alt1", "ig_2_alt1_base", "S'Asseoir Chaise Côté", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["selever"] = {"amb@world_human_sit_ups@male@idle_a", "idle_a", "Se Lever", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["applaudirenervé"] = {"anim@arena@celeb@flat@solo@no_props@", "angry_clap_a_player_a", "Applaudir Enervé", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["applaudirdoucement3"] = {"anim@mp_player_intupperslow_clap", "idle_a", "Applaudir Doucement 3", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["applaudir"] = {"amb@world_human_cheering@male_a", "base", "Applaudir", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["aplaudirdoucement"] = {"anim@mp_player_intcelebrationfemale@slow_clap", "slow_clap", "Applaudir Doucement", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["applaudirdoucement2"] = {"anim@mp_player_intcelebrationmale@slow_clap", "slow_clap", "Applaudir Doucement 2", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["sentir"] = {"move_p_m_two_idles@generic", "fidget_sniff_fingers", "Sentir", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["stickup"] = {"random@countryside_gang_fight", "biker_02_stickup_loop", "Stick Up", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["trébucher"] = {"misscarsteal4@actor", "stumble", "Trébucher", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["étourdie"] = {"stungun@standing", "damage", "Etourdie", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["bronzé"] = {"amb@world_human_sunbathe@male@back@base", "base", "Bronzé", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["bronzé2"] = {"amb@world_human_sunbathe@female@back@base", "base", "Bronzé 2", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["t"] = {"missfam5_yoga", "a2_pose", "T", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["t2"] = {"mp_sleep", "bind_pose_180", "T 2", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["penser5"] = {"mp_cp_welcome_tutthink", "b_think", "Penser 5", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 2000,
   }},
   ["penser"] = {"misscarsteal4@aliens", "rehearsal_base_idle_director", "Penser", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["penser3"] = {"timetable@tracy@ig_8@base", "base", "Penser 3", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},

   ["penser2"] = {"missheist_jewelleadinout", "jh_int_outro_loop_a", "Penser 2", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["pouceair3"] = {"anim@mp_player_intincarthumbs_uplow@ds@", "enter", "Pouce en l'air 3", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 3000,
   }},
   ["pouceair2"] = {"anim@mp_player_intselfiethumbs_up", "idle_a", "Pouce en l'air 2", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["pouceair"] = {"anim@mp_player_intupperthumbs_up", "idle_a", "Pouce en l'air", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["écrire"] = {"anim@heists@prison_heiststation@cop_reactions", "cop_b_idle", "Ecrire", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["écrire2"] = {"anim@heists@prison_heistig1_p1_guard_checks_bus", "loop", "Ecrire 2", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["écrire3"] = {"mp_prison_break", "hack_loop", "Ecrire 3", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["écrire4"] = {"mp_fbi_heist", "loop", "Ecrire 4", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["chaleur"] = {"amb@world_human_stand_fire@male@idle_a", "idle_a", "Chaleur", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["saluer4"] = {"random@mugging5", "001445_01_gangintimidation_1_female_idle_b", "Saluer 4", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 3000,
   }},
   ["saluer2"] = {"anim@mp_player_intcelebrationfemale@wave", "wave", "Saluer 2", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["saluer3"] = {"friends@fra@ig_1", "over_here_idle_a", "Saluer 3", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["saluer"] = {"friends@frj@ig_1", "wave_a", "Saluer", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["saluer5"] = {"friends@frj@ig_1", "wave_b", "Saluer 5", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["saluer6"] = {"friends@frj@ig_1", "wave_c", "Saluer 6", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["saluer7"] = {"friends@frj@ig_1", "wave_d", "Saluer 7", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["saluer8"] = {"friends@frj@ig_1", "wave_e", "Saluer 8", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["saluer9"] = {"gestures@m@standing@casual", "gesture_hello", "Saluer 9", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["siffler"] = {"taxi_hail", "hail_taxi", "Siffler", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 1300,
   }},
   ["siffler2"] = {"rcmnigel1c", "hailing_whistle_waive_a", "Siffler 2", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 2000,
   }},
   ["yeah"] = {"anim@mp_player_intupperair_shagging", "idle_a", "Yeah", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["soulever"] = {"random@hitch_lift", "idle_f", "Soulever", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["lol"] = {"anim@arena@celeb@flat@paired@no_props@", "laugh_a_player_b", "LOL", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["lol2"] = {"anim@arena@celeb@flat@solo@no_props@", "giggle_a_player_b", "LOL 2", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["statue2"] = {"fra_0_int-1", "cs_lamardavis_dual-1", "Statue 2", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["statue3"] = {"club_intro2-0", "csb_englishdave_dual-0", "Statue 3", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["gangsign"] = {"mp_player_int_uppergang_sign_a", "mp_player_int_gang_sign_a", "Gang Sign", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["gangsign2"] = {"mp_player_int_uppergang_sign_b", "mp_player_int_gang_sign_b", "Gang Sign 2", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["malaise"] = {"missarmenian2", "drunk_loop", "Malaise", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["malaise2"] = {"missarmenian2", "corpse_search_exit_ped", "Malaise 2", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["malaise3"] = {"anim@gangops@morgue@table@", "body_search", "Malaise 3", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["malaise4"] = {"mini@cpr@char_b@cpr_def", "cpr_pumpchest_idle", "Malaise 4", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["malaise5"] = {"random@mugging4", "flee_backward_loop_shopkeeper", "Malaise 5", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["caresser"] = {"creatures@rottweiler@tricks@", "petting_franklin", "Caresser", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["ramper"] = {"move_injured_ground", "front_loop", "Ramper", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["seretourner2"] = {"anim@arena@celeb@flat@solo@no_props@", "cap_a_player_a", "Se Retourner 2"},
   ["seretourner"] = {"anim@arena@celeb@flat@solo@no_props@", "flip_a_player_a", "Se Retourner"},
   ["glisser"] = {"anim@arena@celeb@flat@solo@no_props@", "slide_a_player_a", "Glisser"},
   ["glisser2"] = {"anim@arena@celeb@flat@solo@no_props@", "slide_b_player_a", "Glisser 2"},
   ["glisser3"] = {"anim@arena@celeb@flat@solo@no_props@", "slide_c_player_a", "Glisser 3"},
   ["secogner"] = {"anim@arena@celeb@flat@solo@no_props@", "slugger_a_player_a", "Se Cogner"},
   ["flipoff"] = {"anim@arena@celeb@podium@no_prop@", "flip_off_a_1st", "Flip Off", AnimationOptions =
   {
       EmoteMoving = true,
   }},
   ["flipoff2"] = {"anim@arena@celeb@podium@no_prop@", "flip_off_c_1st", "Flip Off 2", AnimationOptions =
   {
       EmoteMoving = true,
   }},
   ["arc"] = {"anim@arena@celeb@podium@no_prop@", "regal_c_1st", "Arc", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["arc2"] = {"anim@arena@celeb@podium@no_prop@", "regal_a_1st", "Arc 2", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["porteclés"] = {"anim@mp_player_intmenu@key_fob@", "fob_click", "Porte-Clés", AnimationOptions =
   {
       EmoteLoop = false,
       EmoteMoving = true,
       EmoteDuration = 1000,
   }},
   ["swinggolf"] = {"rcmnigel1d", "swing_a_mark", "Swing de Golf"},
   ["manger"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Manger", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 3000,
   }},
   ["holster"] = {"move_m@intimidation@cop@unarmed", "idle", "Holster", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["attendre"] = {"random@shop_tattoo", "_idle_a", "Attendre", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["attendre2"] = {"missbigscore2aig_3", "wait_for_van_c", "Attendre 2", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["attendre12"] = {"rcmjosh1", "idle", "Attendre 12", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["attendre13"] = {"rcmnigel1a", "base", "Attendre 13", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["streapstease"] = {"mini@strip_club@private_dance@idle", "priv_dance_idle", "Streaptease 2", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["streapstease2"] = {"mini@strip_club@private_dance@part2", "priv_dance_p2", "Streaptease 3", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["streapstease3"] = {"mini@strip_club@private_dance@part3", "priv_dance_p3", "Streaptease 3", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["twerk"] = {"switch@trevor@mocks_lapdance", "001443_01_trvs_28_idle_stripper", "Twerk", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["donnerclaque"] = {"melee@unarmed@streamed_variations", "plyr_takedown_front_slap", "Donner une Claque", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
       EmoteDuration = 2000,
   }},
   ["coupdeboule"] = {"melee@unarmed@streamed_variations", "plyr_takedown_front_headbutt", "Coup de Boule"},
   ["dancepoisson"] = {"anim@mp_player_intupperfind_the_fish", "idle_a", "Dance Poisson", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["peace"] = {"mp_player_int_upperpeace_sign", "mp_player_int_peace_sign", "Peace", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["peace2"] = {"anim@mp_player_intupperpeace", "idle_a", "Peace 2", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["cpr"] = {"mini@cpr@char_a@cpr_str", "cpr_pumpchest", "CPR", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["cpr2"] = {"mini@cpr@char_a@cpr_str", "cpr_pumpchest", "CPR 2", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["rebord"] = {"missfbi1", "ledge_loop", "Rebord", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["avion"] = {"missfbi1", "ledge_loop", "Avion", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["coupoeil"] = {"random@paparazzi@peek", "left_peek_a", "Jeter un Coup D'Oeil", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["tousser"] = {"timetable@gardener@smoking_joint", "idle_cough", "Tousser", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["ettirer"] = {"mini@triathlon", "idle_e", "S'Ettirer", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["ettirer2"] = {"mini@triathlon", "idle_f", "S'Ettirer 2", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["ettirer3"] = {"mini@triathlon", "idle_d", "S'Ettirer 3", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["ettirer4"] = {"rcmfanatic1maryann_stretchidle_b", "idle_e", "S'Ettirer 4", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["celebrer"] = {"rcmfanatic1celebrate", "celebrate", "Celebrer", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["donnercoup"] = {"rcmextreme2", "loop_punching", "Donner un Coup", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["superhero"] = {"rcmbarry", "base", "Superhero", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["superhero2"] = {"rcmbarry", "base", "Superhero 2", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["médium"] = {"rcmbarry", "mind_control_b_loop", "Médium", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["médium2"] = {"rcmbarry", "bar_1_attack_idle_aln", "Médium 2", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["clown"] = {"rcm_barry2", "clown_idle_0", "Clown", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["clown2"] = {"rcm_barry2", "clown_idle_1", "Clown 2", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["clown3"] = {"rcm_barry2", "clown_idle_2", "Clown 3", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["clown4"] = {"rcm_barry2", "clown_idle_3", "Clown 4", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["clown5"] = {"rcm_barry2", "clown_idle_6", "Clown 5", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["essayerhabits"] = {"mp_clothing@female@trousers", "try_trousers_neutral_a", "Essayer des Habits", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["essayerhabits2"] = {"mp_clothing@female@shirt", "try_shirt_positive_a", "Essayer des Habits 2", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["essayerhabits3"] = {"mp_clothing@female@shoes", "try_shoes_positive_a", "Essayer des Habits 3", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["nerveux2"] = {"mp_missheist_countrybank@nervous", "nervous_idle", "Nerveux 2", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["nerveux"] = {"amb@world_human_bum_standing@twitchy@idle_a", "idle_c", "Nerveux", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["nerveux3"] = {"rcmme_tracey1", "nervous_loop", "Nerveux 3", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["démenotter"] = {"mp_arresting", "a_uncuff", "Démenotter", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["namaste"] = {"timetable@amanda@ig_4", "ig_4_base", "Namaste", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["dj"] = {"anim@amb@nightclub@djs@dixon@", "dixn_dance_cntr_open_dix", "DJ", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["menacer"] = {"random@atmrobberygen", "b_atm_mugging", "Menacer", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["radio"] = {"random@arrests", "generic_radio_chatter", "Radio", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["tirer"] = {"random@mugging4", "struggle_loop_b_thief", "Tirer", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["oiseau"] = {"random@peyote@bird", "wakeup", "Oiseau"},
   ["poulet"] = {"random@peyote@chicken", "wakeup", "Poulet", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["aboyer"] = {"random@peyote@dog", "wakeup", "Aboyer"},
   ["lapin"] = {"random@peyote@rabbit", "wakeup", "Lapin"},
   ["spiderman"] = {"missexile3", "ex03_train_roof_idle", "Spider-Man", AnimationOptions =
   {
       EmoteLoop = true,
   }},
   ["boi"] = {"special_ped@jane@monologue_5@monologue_5c", "brotheradrianhasshown_2", "BOI", AnimationOptions =
   {
      EmoteMoving = true,
      EmoteDuration = 3000,
   }},
   ["ajuster"] = {"missmic4", "michael_tux_fidget", "Ajuster", AnimationOptions =
   {
      EmoteMoving = true,
      EmoteDuration = 4000,
   }},
   ["mainair"] = {"missminuteman_1ig_2", "handsup_base", "Main en l'Air", AnimationOptions =
   {
      EmoteMoving = true,
      EmoteLoop = true,
   }},
   ["pisser"] = {"misscarsteal2peeing", "peeing_loop", "Pisser", AnimationOptions =
   {
       EmoteStuck = true,
       PtfxAsset = "scr_amb_chop",
       PtfxName = "ent_anim_dog_peeing",
       PtfxNoProp = true,
       PtfxPlacement = {-0.05, 0.3, 0.0, 0.0, 90.0, 90.0, 1.0},
       PtfxInfo = Config.Languages[Config.MenuLanguage]['pee'],
       PtfxWait = 3000,
   }},

-----------------------------------------------------------------------------------------------------------
------ These are Scenarios, some of these dont work on women and some other issues, but still good to have.
-----------------------------------------------------------------------------------------------------------

   ["atm"] = {"Scenario", "PROP_HUMAN_ATM", "ATM"},
   ["bbq"] = {"MaleScenario", "PROP_HUMAN_BBQ", "BBQ"},
   ["bumbin"] = {"Scenario", "PROP_HUMAN_BUM_BIN", "Bum Bin"},
   ["endormie"] = {"Scenario", "WORLD_HUMAN_BUM_SLUMPED", "Endormoe"},
   ["trinquer"] = {"Scenario", "WORLD_HUMAN_CHEERING", "Trinquer"},
   ["têtehaute"] = {"Scenario", "PROP_HUMAN_MUSCLE_CHIN_UPS", "Tête Haute"},
   ["prendrenotes2"] = {"MaleScenario", "WORLD_HUMAN_CLIPBOARD", "Prendre des Notes 2"},
   ["police"] = {"Scenario", "WORLD_HUMAN_COP_IDLES", "Police"},
   ["policebaton"] = {"MaleScenario", "WORLD_HUMAN_CAR_PARK_ATTENDANT", "Policier Baton"},
   ["êtrechoqué"] = {"Scenario", "WORLD_HUMAN_MOBILE_FILM_SHOCKING", "Etre Choqué"},
   ["fléchir"] = {"Scenario", "WORLD_HUMAN_MUSCLE_FLEX", "Fléchir"},
   ["garde"] = {"Scenario", "WORLD_HUMAN_GUARD_STAND", "Garde"},
   ["marteau"] = {"Scenario", "WORLD_HUMAN_HAMMERING", "Marteau"},
   ["sortir"] = {"Scenario", "WORLD_HUMAN_HANG_OUT_STREET", "Sortir"},
   ["impatient"] = {"Scenario", "WORLD_HUMAN_STAND_IMPATIENT", "Impatient"},
   ["concierge"] = {"Scenario", "WORLD_HUMAN_JANITOR", "Concierge"},
   ["footing"] = {"Scenario", "WORLD_HUMAN_JOG_STANDING", "Footing"},
   ["agenouiller"] = {"Scenario", "CODE_HUMAN_MEDIC_KNEEL", "S'Agenouiller"},
   ["souffleurfeuilles"] = {"MaleScenario", "WORLD_HUMAN_GARDENER_LEAF_BLOWER", "Souffleur de Feuilles"},
   ["sepencher"] = {"Scenario", "WORLD_HUMAN_LEANING", "Se Pencher"},
   ["sepencher2"] = {"Scenario", "PROP_HUMAN_BUM_SHOPPING_CART", "Se Pencher Rembarde"},
   ["faireattention"] = {"Scenario", "CODE_HUMAN_CROSS_ROAD_WAIT", "Faire Attention"},
   ["Femmeménage"] = {"Scenario", "WORLD_HUMAN_MAID_CLEAN", "Femme de Ménage"},
   ["medecin"] = {"Scenario", "CODE_HUMAN_MEDIC_TEND_TO_DEAD", "Medecin"},
   ["musicien"] = {"MaleScenario", "WORLD_HUMAN_MUSICIAN", "Musicien"},
   ["carnetdenote2"] = {"Scenario", "CODE_HUMAN_MEDIC_TIME_OF_DEATH", "Carnet de Note 2"},
   ["parcmètre"] = {"Scenario", "PROP_HUMAN_PARKING_METER", "Parc Mètre"},
   ["fête"] = {"Scenario", "WORLD_HUMAN_PARTYING", "Fête"},
   ["sms"] = {"Scenario", "WORLD_HUMAN_STAND_MOBILE", "SMS"},
   ["prosthigh"] = {"Scenario", "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS", "Prostitue High"},
   ["prostlow"] = {"Scenario", "WORLD_HUMAN_PROSTITUTE_LOW_CLASS", "Prostitue Low"},
   ["flaque"] = {"Scenario", "WORLD_HUMAN_BUM_WASH", "Glisser sur une Flaque"},
   ["enregistrer"] = {"Scenario", "WORLD_HUMAN_MOBILE_FILM_SHOCKING", "Enregistrer"},
   -- Sitchair is a litte special, since you want the player to be seated correctly.
   -- So we set it as "ScenarioObject" and do TaskStartScenarioAtPosition() instead of "AtPlace"
   ["asseoirchaise"] = {"ScenarioObject", "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER", "S'Asseoir sur une Chaise"},
   ["fumer"] = {"Scenario", "WORLD_HUMAN_SMOKING", "Fumer"},
   ["fumerweed"] = {"MaleScenario", "WORLD_HUMAN_DRUG_DEALER", "Fumer Weed"},
   ["statue"] = {"Scenario", "WORLD_HUMAN_HUMAN_STATUE", "Statue"},
   ["bronzé3"] = {"Scenario", "WORLD_HUMAN_SUNBATHE", "Bronzé 3"},
   ["bronzéventre"] = {"Scenario", "WORLD_HUMAN_SUNBATHE_BACK", "Bronzé sur le Ventre"},
   ["souder"] = {"Scenario", "WORLD_HUMAN_WELDING", "Weld"},
   ["regardervitrine"] = {"Scenario", "WORLD_HUMAN_WINDOW_SHOP_BROWSE", "Regarder une Vitrine"},
   ["yoga"] = {"Scenario", "WORLD_HUMAN_YOGA", "Yoga"},
   -- Citynight add EMOTES
   ["ceinturons"] = {"amb@code_human_wander_idles_cop@male@static", "static", "Ceinturons", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 400000
   }},
   -- CASINO DLC EMOTES (STREAMED)
   ["karate"] = {"anim@mp_player_intcelebrationfemale@karate_chops", "karate_chops", "Karate"},
   ["karate2"] = {"anim@mp_player_intcelebrationmale@karate_chops", "karate_chops", "Karate 2"},
   ["égorger"] = {"anim@mp_player_intcelebrationmale@cut_throat", "cut_throat", "Egorger"},
   ["égorger2"] = {"anim@mp_player_intcelebrationfemale@cut_throat", "cut_throat", "Egorger 2"},
   ["wow"] = {"anim@mp_player_intcelebrationmale@mind_blown", "mind_blown", "WOW", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 4000
   }},
   ["wow2"] = {"anim@mp_player_intcelebrationfemale@mind_blown", "mind_blown", "WOW 2", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 4000
   }},
   ["boxe"] = {"anim@mp_player_intcelebrationmale@shadow_boxing", "shadow_boxing", "Boxe", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 4000
   }},
   ["boxe2"] = {"anim@mp_player_intcelebrationfemale@shadow_boxing", "shadow_boxing", "Boxe 2", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 4000
   }},
   ["sentirmauvais"] = {"anim@mp_player_intcelebrationfemale@stinker", "stinker", "Sentir Mauvais", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteLoop = true
   }},
   ["penser4"] = {"anim@amb@casino@hangout@ped_male@stand@02b@idles", "idle_a", "Penser 4", AnimationOptions =
   {
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["ajustercravate"] = {"clothingtie", "try_tie_positive_a", "Ajuster Cravate", AnimationOptions =
   {
       EmoteMoving = true,
       EmoteDuration = 5000
   }},
}

DP.PropEmotes = {
   ["parapluie"] = {"amb@world_human_drinking@coffee@male@base", "base", "Parapluie", AnimationOptions =
   {
       Prop = "p_amb_brolly_01",
       PropBone = 57005,
       PropPlacement = {0.15, 0.005, 0.0, 87.0, -20.0, 180.0},
       --
       EmoteLoop = true,
       EmoteMoving = true,
   }},

-----------------------------------------------------------------------------------------------------
------ This is an example of an emote with 2 props, pretty simple! ----------------------------------
-----------------------------------------------------------------------------------------------------

   ["carnetnote"] = {"missheistdockssetup1clipboard@base", "base", "Carnet de Note", AnimationOptions =
   {
       Prop = 'prop_notepad_01',
       PropBone = 18905,
       PropPlacement = {0.1, 0.02, 0.05, 10.0, 0.0, 0.0},
       SecondProp = 'prop_pencil_01',
       SecondPropBone = 58866,
       SecondPropPlacement = {0.11, -0.02, 0.001, -120.0, 0.0, 0.0},
       -- EmoteLoop is used for emotes that should loop, its as simple as that.
       -- Then EmoteMoving is used for emotes that should only play on the upperbody.
       -- The code then checks both values and sets the MovementType to the correct one
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["boite"] = {"anim@heists@box_carry@", "idle", "Boîte", AnimationOptions =
   {
       Prop = "hei_prop_heist_box",
       PropBone = 60309,
       PropPlacement = {0.025, 0.08, 0.255, -145.0, 290.0, 0.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["rose"] = {"anim@heists@humane_labs@finale@keycards", "ped_a_enter_loop", "Rose", AnimationOptions =
   {
       Prop = "prop_single_rose",
       PropBone = 18905,
       PropPlacement = {0.13, 0.15, 0.0, -100.0, 0.0, -20.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["fumer2"] = {"amb@world_human_aa_smoke@male@idle_a", "idle_c", "Fumer 2", AnimationOptions =
   {
       Prop = 'prop_cs_ciggy_01',
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["fumer3"] = {"amb@world_human_aa_smoke@male@idle_a", "idle_b", "Fumer 3", AnimationOptions =
   {
       Prop = 'prop_cs_ciggy_01',
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["fumer4"] = {"amb@world_human_smoking@female@idle_a", "idle_b", "Fumer 4", AnimationOptions =
   {
       Prop = 'prop_cs_ciggy_01',
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["bong"] = {"anim@safehouse@bong", "bong_stage3", "Bong", AnimationOptions =
   {
       Prop = 'hei_heist_sh_bong_01',
       PropBone = 18905,
       PropPlacement = {0.10,-0.25,0.0,95.0,190.0,180.0},
   }},
   ["valise"] = {"missheistdocksprep1hold_cellphone", "static", "Valise", AnimationOptions =
   {
       Prop = "prop_ld_suitcase_01",
       PropBone = 57005,
       PropPlacement = {0.39, 0.0, 0.0, 0.0, 266.0, 60.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["valise2"] = {"missheistdocksprep1hold_cellphone", "static", "Valise 2", AnimationOptions =
   {
       Prop = "prop_security_case_01",
       PropBone = 57005,
       PropPlacement = {0.10, 0.0, 0.0, 0.0, 280.0, 53.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["prendrephoto"] = {"mp_character_creation@customise@male_a", "loop", "Prendre une Photo", AnimationOptions =
   {
       Prop = 'prop_police_id_board',
       PropBone = 58868,
       PropPlacement = {0.12, 0.24, 0.0, 5.0, 0.0, 70.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["café"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Café", AnimationOptions =
   {
       Prop = 'p_amb_coffeecup_01',
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["whiskey"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Whiskey", AnimationOptions =
   {
       Prop = 'prop_drink_whisky',
       PropBone = 28422,
       PropPlacement = {0.01, -0.01, -0.06, 0.0, 0.0, 0.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["bière"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Bière", AnimationOptions =
   {
       Prop = 'prop_amb_beer_bottle',
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["goblet"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Goblet", AnimationOptions =
   {
       Prop = 'prop_plastic_cup_02',
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["donut"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Donut", AnimationOptions =
   {
       Prop = 'prop_amb_donut',
       PropBone = 18905,
       PropPlacement = {0.13, 0.05, 0.02, -50.0, 16.0, 60.0},
       EmoteMoving = true,
   }},
   ["burger"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Burger", AnimationOptions =
   {
       Prop = 'prop_cs_burger_01',
       PropBone = 18905,
       PropPlacement = {0.13, 0.05, 0.02, -50.0, 16.0, 60.0},
       EmoteMoving = true,
   }},
   ["sandwich"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Sandwich", AnimationOptions =
   {
       Prop = 'prop_sandwich_01',
       PropBone = 18905,
       PropPlacement = {0.13, 0.05, 0.02, -50.0, 16.0, 60.0},
       EmoteMoving = true,
   }},
   ["soda"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Soda", AnimationOptions =
   {
       Prop = 'prop_ecola_can',
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 130.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["egobar"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Ego Bar", AnimationOptions =
   {
       Prop = 'prop_choc_ego',
       PropBone = 60309,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteMoving = true,
   }},
   ["vin"] = {"anim@heists@humane_labs@finale@keycards", "ped_a_enter_loop", "Vin", AnimationOptions =
   {
       Prop = 'prop_drink_redwine',
       PropBone = 18905,
       PropPlacement = {0.10, -0.03, 0.03, -100.0, 0.0, -10.0},
       EmoteMoving = true,
       EmoteLoop = true
   }},
   ["flute"] = {"anim@heists@humane_labs@finale@keycards", "ped_a_enter_loop", "Flute", AnimationOptions =
   {
       Prop = 'prop_champ_flute',
       PropBone = 18905,
       PropPlacement = {0.10, -0.03, 0.03, -100.0, 0.0, -10.0},
       EmoteMoving = true,
       EmoteLoop = true
   }},
   ["champagne"] = {"anim@heists@humane_labs@finale@keycards", "ped_a_enter_loop", "Champagne", AnimationOptions =
   {
       Prop = 'prop_drink_champ',
       PropBone = 18905,
       PropPlacement = {0.10, -0.03, 0.03, -100.0, 0.0, -10.0},
       EmoteMoving = true,
       EmoteLoop = true
   }},
   ["cigare"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Cigare", AnimationOptions =
   {
       Prop = 'prop_cigar_02',
       PropBone = 47419,
       PropPlacement = {0.010, 0.0, 0.0, 50.0, 0.0, -80.0},
       EmoteMoving = true,
       EmoteDuration = 2600
   }},
   ["cigare2"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Cigare 2", AnimationOptions =
   {
       Prop = 'prop_cigar_01',
       PropBone = 47419,
       PropPlacement = {0.010, 0.0, 0.0, 50.0, 0.0, -80.0},
       EmoteMoving = true,
       EmoteDuration = 2600
   }},
   ["guitare"] = {"amb@world_human_musician@guitar@male@idle_a", "idle_b", "Guitare", AnimationOptions =
   {
       Prop = 'prop_acc_guitar_01',
       PropBone = 24818,
       PropPlacement = {-0.1, 0.31, 0.1, 0.0, 20.0, 150.0},
       EmoteMoving = true,
       EmoteLoop = true
   }},
   ["guitare2"] = {"switch@trevor@guitar_beatdown", "001370_02_trvs_8_guitar_beatdown_idle_busker", "Guitare 2", AnimationOptions =
   {
       Prop = 'prop_acc_guitar_01',
       PropBone = 24818,
       PropPlacement = {-0.05, 0.31, 0.1, 0.0, 20.0, 150.0},
       EmoteMoving = true,
       EmoteLoop = true
   }},
   ["guitarelectric"] = {"amb@world_human_musician@guitar@male@idle_a", "idle_b", "Guitare Electric", AnimationOptions =
   {
       Prop = 'prop_el_guitar_01',
       PropBone = 24818,
       PropPlacement = {-0.1, 0.31, 0.1, 0.0, 20.0, 150.0},
       EmoteMoving = true,
       EmoteLoop = true
   }},
   ["guitarelectric2"] = {"amb@world_human_musician@guitar@male@idle_a", "idle_b", "Guitare Electric 2", AnimationOptions =
   {
       Prop = 'prop_el_guitar_03',
       PropBone = 24818,
       PropPlacement = {-0.1, 0.31, 0.1, 0.0, 20.0, 150.0},
       EmoteMoving = true,
       EmoteLoop = true
   }},
   ["livre"] = {"cellphone@", "cellphone_text_read_base", "Livre", AnimationOptions =
   {
       Prop = 'prop_novel_01',
       PropBone = 6286,
       PropPlacement = {0.15, 0.03, -0.065, 0.0, 180.0, 90.0}, -- This positioning isnt too great, was to much of a hassle
       EmoteMoving = true,
       EmoteLoop = true
   }},
   ["bouquet"] = {"impexp_int-0", "mp_m_waremech_01_dual-0", "Bouquet", AnimationOptions =
   {
       Prop = 'prop_snow_flower_02',
       PropBone = 24817,
       PropPlacement = {-0.29, 0.40, -0.02, -90.0, -90.0, 0.0},
       EmoteMoving = true,
       EmoteLoop = true
   }},
   ["teddy"] = {"impexp_int-0", "mp_m_waremech_01_dual-0", "Teddy", AnimationOptions =
   {
       Prop = 'v_ilev_mr_rasberryclean',
       PropBone = 24817,
       PropPlacement = {-0.20, 0.46, -0.016, -180.0, -90.0, 0.0},
       EmoteMoving = true,
       EmoteLoop = true
   }},
   ["sacados"] = {"move_p_m_zero_rucksack", "idle", "Sac à Dos", AnimationOptions =
   {
       Prop = 'p_michael_backpack_s',
       PropBone = 24818,
       PropPlacement = {0.07, -0.11, -0.05, 0.0, 90.0, 175.0},
       EmoteMoving = true,
       EmoteLoop = true
   }},
   ["clipboard"] = {"missfam4", "base", "Clipboard", AnimationOptions =
   {
       Prop = 'p_amb_clipboard_01',
       PropBone = 36029,
       PropPlacement = {0.16, 0.08, 0.1, -130.0, -50.0, 0.0},
       EmoteMoving = true,
       EmoteLoop = true
   }},
   ["carte"] = {"amb@world_human_tourist_map@male@base", "base", "Carte", AnimationOptions =
   {
       Prop = 'prop_tourist_map_01',
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteMoving = true,
       EmoteLoop = true
   }},
   ["mendier"] = {"amb@world_human_bum_freeway@male@base", "base", "Mendier", AnimationOptions =
   {
       Prop = 'prop_beggers_sign_03',
       PropBone = 58868,
       PropPlacement = {0.19, 0.18, 0.0, 5.0, 0.0, 40.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["pluieargent"] = {"anim@mp_player_intupperraining_cash", "idle_a", "Pluie d'Argent", AnimationOptions =
   {
       Prop = 'prop_anim_cash_pile_01',
       PropBone = 60309,
       PropPlacement = {0.0, 0.0, 0.0, 180.0, 0.0, 70.0},
       EmoteMoving = true,
       EmoteLoop = true,
       PtfxAsset = "scr_xs_celebration",
       PtfxName = "scr_xs_money_rain",
       PtfxPlacement = {0.0, 0.0, -0.09, -80.0, 0.0, 0.0, 1.0},
       PtfxInfo = Config.Languages[Config.MenuLanguage]['makeitrain'],
       PtfxWait = 500,
   }},
   ["camera"] = {"amb@world_human_paparazzi@male@base", "base", "Camera", AnimationOptions =
   {
       Prop = 'prop_pap_camera_01',
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteLoop = true,
       EmoteMoving = true,
       PtfxAsset = "scr_bike_business",
       PtfxName = "scr_bike_cfid_camera_flash",
       PtfxPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0},
       PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
       PtfxWait = 200,
   }},
   ["arroserchampagne"] = {"anim@mp_player_intupperspray_champagne", "idle_a", "Arroser de Champagne", AnimationOptions =
   {
       Prop = 'ba_prop_battle_champ_open',
       PropBone = 28422,
       PropPlacement = {0.0,0.0,0.0,0.0,0.0,0.0},
       EmoteMoving = true,
       EmoteLoop = true,
       PtfxAsset = "scr_ba_club",
       PtfxName = "scr_ba_club_champagne_spray",
       PtfxPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       PtfxInfo = Config.Languages[Config.MenuLanguage]['spraychamp'],
       PtfxWait = 500,
   }},
   ["fumerjoint2"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Fumer un Joint", AnimationOptions =
   {
       Prop = 'p_cs_joint_02',
       PropBone = 47419,
       PropPlacement = {0.015, -0.009, 0.003, 55.0, 0.0, 110.0},
       EmoteMoving = true,
       EmoteDuration = 2600
   }},
   ["fumercigarette"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Cigarette", AnimationOptions =
   {
       Prop = 'prop_amb_ciggy_01',
       PropBone = 47419,
       PropPlacement = {0.015, -0.009, 0.003, 55.0, 0.0, 110.0},
       EmoteMoving = true,
       EmoteDuration = 2600
   }},
   ["brief3"] = {"missheistdocksprep1hold_cellphone", "static", "Brief 3", AnimationOptions =
   {
       Prop = "prop_ld_case_01",
       PropBone = 57005,
       PropPlacement = {0.10, 0.0, 0.0, 0.0, 280.0, 53.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["tablette"] = {"amb@world_human_tourist_map@male@base", "base", "Tablette", AnimationOptions =
   {
       Prop = "prop_cs_tablet",
       PropBone = 28422,
       PropPlacement = {0.0, -0.03, 0.0, 20.0, -90.0, 0.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["tablette2"] = {"amb@code_human_in_bus_passenger_idles@female@tablet@idle_a", "idle_a", "Tablette 2", AnimationOptions =
   {
       Prop = "prop_cs_tablet",
       PropBone = 28422,
       PropPlacement = {-0.05, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["appeltéléphonique"] = {"cellphone@", "cellphone_call_listen_base", "Appel Téléphonique", AnimationOptions =
   {
       Prop = "prop_npc_phone_02",
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["téléphone"] = {"cellphone@", "cellphone_text_read_base", "Téléphone", AnimationOptions =
   {
       Prop = "prop_npc_phone_02",
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["nettoyer"] = {"timetable@floyd@clean_kitchen@base", "base", "Nettoyer", AnimationOptions =
   {
       Prop = "prop_sponge_01",
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, -0.01, 90.0, 0.0, 0.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
   ["nettoyer2"] = {"amb@world_human_maid_clean@", "base", "Nettoyer 2", AnimationOptions =
   {
       Prop = "prop_sponge_01",
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, -0.01, 90.0, 0.0, 0.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},
}