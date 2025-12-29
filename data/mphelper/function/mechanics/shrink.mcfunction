#Copyright JayPyro2000 2025. All Rights Reserved.
$execute if score #shrink variables matches 1.. run worldborder set 20 $(shrink)s

# Change bossbar
bossbar set minipurge:timerbar color red
$execute if score #shrink variables matches 1.. run function mphelper:function/mechanics/shrink_bossbar {shrink:$(shrink)}
bossbar set minipurge:timerbar name {"text":"War","color":"red"}
execute if score #shrink variables matches 1.. run bossbar set minipurge:timerbar name {"text":"Border Shrinking","color":"red"}
$scoreboard players set #countdown variables $(shrink)

# Run the add-ons.
function mphelper:add_ons/run_add_ons {stage:mpshrink}

execute if score #shrink variables matches 1.. run title @a title {"text":"The border is now shrinking!",  "bold":false, "italic":true, "color":"red"}
$execute if score #shrink variables matches 1.. run tellraw @a [{"text":"Border Shrinking to: $(center_x_pos) $(center_y_pos) $(center_z_pos)", "bold":true, "color":"red"}]
$schedule function mphelper:mechanics/master_dispatcher $(endgame)s