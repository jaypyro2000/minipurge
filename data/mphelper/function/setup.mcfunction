#Copyright JayPyro2000 2025. All Rights Reserved.

# Sets up treasure chest.
schedule function minipurge:treasure_chest 2t

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
gamerule locatorBar false
execute as @a run function minipurge:clear_enderchests

# Set and keep time.
time set noon
gamerule doDaylightCycle false
weather clear

# Disable pvp (hack).
team add Peaceful
team join Peaceful @a
team modify Peaceful friendlyFire false

# Set worldborder.
worldborder center ~ ~
$worldborder set $(border)
worldborder damage buffer 4
worldborder damage amount 0.5

# Count minecraft deaths.
scoreboard objectives add deaths minecraft.custom:minecraft.deaths
scoreboard players set @a deaths 0
schedule function minipurge:death_dispatcher 1t

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
schedule function minipurge:countdown 5s

#Display title
title @a times 20 40 20
title @a title {"text":"Let the Games Begin!", "bold":true, "italic":true, "color":"green"}

function minipurgeyellow:setup
function minipurgesilver:setup

$schedule function minipurge:dispatcher $(peace)s