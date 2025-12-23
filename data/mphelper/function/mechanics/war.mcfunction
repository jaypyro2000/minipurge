#Copyright JayPyro2000 2025. All Rights Reserved.
gamerule minecraft:pvp true

# Run the add-ons.
function mphelper:add_ons/run_add_ons {stage:mpwar}

# Change bossbar
bossbar set minipurge:timerbar color yellow
$bossbar set minipurge:timerbar max $(war)
$bossbar set minipurge:timerbar value $(war)
bossbar set minipurge:timerbar name {"text":"War","color":"yellow"}
$scoreboard players set #countdown variables $(war)

title @a times 10 20 10
title @a title {"text":"Pvp has been enabled.", "bold":false, "italic":true, "color":"yellow"}

$schedule function mphelper:mechanics/master_dispatcher $(war)s