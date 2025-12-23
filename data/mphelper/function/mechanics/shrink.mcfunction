#Copyright JayPyro2000 2025. All Rights Reserved.
$worldborder set 20 $(shrink)s

# Change bossbar
bossbar set minipurge:timerbar color red
$bossbar set minipurge:timerbar max $(shrink)
$bossbar set minipurge:timerbar value $(shrink)
bossbar set minipurge:timerbar name {"text":"Border Shrinking","color":"red"}
$scoreboard players set #countdown variables $(shrink)

# Run the add-ons.
function mphelper:add_ons/run_add_ons {stage:mpshrink}

title @a title {"text":"The border is now shrinking!",  "bold":false, "italic":true, "color":"red"}
$tellraw @a [{"text":"Border Shrinking to: $(center_x_pos) $(center_y_pos) $(center_z_pos)"}]
$schedule function mphelper:mechanics/master_dispatcher $(endgame)s