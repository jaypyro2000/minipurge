#Copyright JayPyro2000 2025. All Rights Reserved.

# Sets everyone to "hardcore" and stops goldon apple trade-ins.
scoreboard players set #one variables 1
scoreboard players operation #hardcore_lives variables = #lives variables
scoreboard players operation #hardcore_lives variables -= #one variables
scoreboard players operation @a deaths = #hardcore_lives variables
schedule clear mphelper:mechanics/treasure_chest
execute as @e[tag=chest_loc,limit=1] run setblock ~ ~-1 ~ minecraft:rose_bush

# Run the add-ons.
function mphelper:add_ons/run_add_ons {stage:mpendgame}