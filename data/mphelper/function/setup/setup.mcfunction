#Copyright JayPyro2000 2025. All Rights Reserved.

# Sets up treasure chest.
schedule function mphelper:mechanics/treasure_chest 2t

# Move everyone to spawn and set it.
tp @a ~ ~1 ~
setworldspawn ~ ~1 ~
spawnpoint @a ~ ~1 ~

# Set everyones health etc. attributes.
gamemode survival @a
xp add @a -50000
clear @a
effect clear @a
effect give @a minecraft:instant_health 2 225 false
effect give @a minecraft:saturation 2 225 false
advancement revoke @a everything
gamerule minecraft:locator_bar false
execute as @a run function mphelper:setup/clear_enderchests

# Set and keep time.
time set noon
gamerule minecraft:advance_time false
weather clear

# Disable pvp.
gamerule minecraft:pvp false

# Set worldborder.
worldborder center ~ ~
$worldborder set $(border)
worldborder damage buffer 4
worldborder damage amount 0.5

# Count minecraft deaths.
scoreboard objectives add deaths minecraft.custom:minecraft.deaths
scoreboard players set @a deaths 0
schedule function mphelper:mechanics/death_dispatcher 1t

#Create bossbar and timer
bossbar add minipurge:timerbar Timerbar
bossbar set minipurge:timerbar name Peace
bossbar set minipurge:timerbar color green
bossbar set minipurge:timerbar style notched_20
$bossbar set minipurge:timerbar max $(peace)
bossbar set minipurge:timerbar visible true
$bossbar set minipurge:timerbar value $(peace)
bossbar set minipurge:timerbar players @a
$scoreboard players set #countdown variables $(peace)
schedule function mphelper:mechanics/countdown 5s

#Display title
title @a times 20 40 20
title @a title {"text":"Let the Games Begin!", "bold":true, "italic":true, "color":"green"}

# Dispaly more info.
$tellraw @a [{"text":"Welcome to a round of MiniPurge!\n","bold":true,"color":"red"}, {"text":"You have been granted ","bold":true,"color":"white"}, {"text":"$(peace_mins)","bold":true,"color":"green"}, {"text":" minutes of peace, ","color":"white"}, {"text":"$(war_mins)","bold":true,"color":"yellow"}, {"text":"  minutes and ","color":"white"}, {"text":"$(lives)","bold":true,"color":"yellow"},{"text":" lives to prove your minecraft superiority and ","color":"white"}, {"text":"$(shrink_mins)","bold":true,"color":"red"}, {"text":" minutes while the border shrinks in on ","color":"white"}, {"text":"$(center_x_pos), $(center_y_pos), $(center_z_pos)","bold":true,"color":"blue"}, {"text":".\nGood luck!","bold":true,"color":"green"}]

# Run the add-ons.
function mphelper:add_ons/run_add_ons {stage:mpsetup}

$schedule function mphelper:mechanics/master_dispatcher $(peace)s