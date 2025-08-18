#Copyright JayPyro2000 2025. All Rights Reserved.
data modify storage minipurge:structure structures append value "minipurge:copper_top"
data modify storage minipurge:structure structure_heights append value 4
data modify storage minipurge:structure spawn_distances append value 0
data modify storage minipurge:structure structures append value "minipurge:sword_in_stone"
data modify storage minipurge:structure structure_heights append value 1
data modify storage minipurge:structure spawn_distances append value 0
data modify storage minipurge:structure structures append value "minipurge:jungle_altar"
data modify storage minipurge:structure structure_heights append value 11
data modify storage minipurge:structure spawn_distances append value 0


function minipurge:boot_dispatcher

execute store result score #max_structure_index variables run data get storage minipurge:structure structures
scoreboard players remove #max_structure_index variables 1
execute store result storage minipurge:structure max_structure_index int 1 run scoreboard players get #max_structure_index variables

execute run function minipurge:foundation with storage minipurge:structure

execute as @e[tag=chest_loc,limit=1] at @e[tag=chest_loc,limit=1] run function minipurge:setup with storage minipurge:var_storage