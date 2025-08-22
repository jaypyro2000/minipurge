#Copyright JayPyro2000 2025. All Rights Reserved.

# Define the ground position
$summon minecraft:marker $(center_x_pos) $(center_y_pos) $(center_z_pos) {Tags:["ground_loc"]}

#Add default minipurge structures to the possible structure list
data modify storage minipurge:structure structures append value "mpstructure:copper_top"
data modify storage minipurge:structure structure_heights append value 4
data modify storage minipurge:structure spawn_distances append value 0
data modify storage minipurge:structure structures append value "mpstructure:sword_in_stone"
data modify storage minipurge:structure structure_heights append value 1
data modify storage minipurge:structure spawn_distances append value 0
data modify storage minipurge:structure structures append value "mpstructure:jungle_altar"
data modify storage minipurge:structure structure_heights append value 11
data modify storage minipurge:structure spawn_distances append value 0

# Run the add-ons.
function mphelper:add_ons/run_add_ons {stage:mpboot}

# Determine max structure index and start the build process
execute store result score #max_structure_index variables run data get storage minipurge:structure structures
scoreboard players remove #max_structure_index variables 1
execute store result storage minipurge:structure max_structure_index int 1 run scoreboard players get #max_structure_index variables
execute run function mphelper:setup/foundation with storage minipurge:structure

# Execute setup.
execute as @e[tag=chest_loc,limit=1] at @e[tag=chest_loc,limit=1] run function mphelper:setup/setup with storage minipurge:variables