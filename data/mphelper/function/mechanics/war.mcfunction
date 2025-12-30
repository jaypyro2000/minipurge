#Copyright JayPyro2000 2025. All Rights Reserved.
gamerule minecraft:pvp true

# Run the add-ons.
function mphelper:add_ons/run_add_ons {stage:mpwar}

# Change Daylight Cycle
execute if score #war_daylight variables matches 0 run gamerule minecraft:advance_time false
execute if score #war_daylight variables matches 1 run gamerule minecraft:advance_time true

# Change bossbar
bossbar set minipurge:timerbar color yellow
$bossbar set minipurge:timerbar max $(war)
$bossbar set minipurge:timerbar value $(war)
bossbar set minipurge:timerbar name {"text":"War","color":"yellow"}
$scoreboard players set #countdown variables $(war)

title @a times 10 20 10
title @a title {"text":"Pvp has been enabled.", "bold":false, "italic":true, "color":"yellow"}

$schedule function mphelper:mechanics/master_dispatcher $(war)s