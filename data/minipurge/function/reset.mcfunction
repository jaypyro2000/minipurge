#Copyright JayPyro2000 2025. All Rights Reserved.

# Reset players.
gamemode survival @a
gamemode creative @s

# Reset world settings.
gamerule doDaylightCycle true
worldborder center 0 0
worldborder set 30000000

# Reset tags, clear schedules and reset structures.
tag @e[tag=center_loc] remove center_loc
tag @e[tag=chest_loc] remove chest_loc
bossbar set minipurge:timerbar visible false
schedule clear mphelper:mechanics/death_dispatcher
schedule clear mphelper:mechanics/treasure_chest
schedule clear mphelper:mechanics/shrink
schedule clear mphelper:mechanics/war
schedule clear mphelper:mechanics/countdown
schedule clear mphelper:mechanics/master_dispatcher
data remove storage minipurge:structure structures
data remove storage minipurge:structure structure_heights
data remove storage minipurge:structure spawn_distances

# Run the add-ons.
function mphelper:mechanics/run_add_ons {stage:mpreset}