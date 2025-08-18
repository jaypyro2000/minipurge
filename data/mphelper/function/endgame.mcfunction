#Copyright JayPyro2000 2025. All Rights Reserved.
scoreboard players operation @a deaths = #lives variables
schedule clear minipurge:treasure_chest
execute as @e[tag=chest_loc,limit=1] run setblock ~ ~-1 ~ minecraft:rose_bush