#Copyright JayPyro2000 2025. All Rights Reserved.
$data modify storage minipurge:structure structure set from storage minipurge:structure structures[$(structure_index)]
$data modify storage minipurge:structure structure_height set from storage minipurge:structure structure_heights[$(structure_index)]
$data modify storage minipurge:structure spawn_distance set from storage minipurge:structure spawn_distances[$(structure_index)]
execute at @e[tag=center_loc,limit=1] run function mphelper:setup/builder with storage minipurge:structure