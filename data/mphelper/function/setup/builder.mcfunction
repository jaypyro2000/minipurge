#Copyright JayPyro2000 2025. All Rights Reserved.
$summon minecraft:marker ~ ~$(structure_height) ~ {Tags:["chest_loc"]}
$execute at @e[tag=chest_loc,limit=1] run function $(structure)