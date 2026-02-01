#Copyright JayPyro2000 2025. All Rights Reserved.
say @a Got 2
# Get a random x and z position for the asset.
$execute if score #max_from_mid variables >= #half_border variables run execute store result score #place_x_pos variables run random value 0..$(half_border)
$execute if score #max_from_mid variables < #half_border variables run execute store result score #place_x_pos variables run random value 0..$(max_from_mid)

$execute if score #max_from_mid variables >= #half_border variables if score #place_x_pos variables matches $(min_from_mid).. run execute store result score #place_z_pos variables run random value 0..$(half_border)
$execute if score #max_from_mid variables < #half_border variables if score #place_x_pos variables matches $(min_from_mid).. run execute store result score #place_z_pos variables run random value 0..$(max_from_mid)
$execute if score #max_from_mid variables >= #half_border variables if score #place_x_pos variables matches 0..$(min_from_mid) run execute store result score #place_z_pos variables run random value $(min_from_mid)..$(half_border)
$execute if score #max_from_mid variables < #half_border variables if score #place_x_pos variables matches 0..$(min_from_mid) run execute store result score #place_z_pos variables run random value $(min_from_mid)..$(max_from_mid)

execute store result score #random_bit variables run random value 0..1
execute if score #random_bit variables matches 0 run scoreboard players operation #place_x_pos variables *= #negative variables
scoreboard players operation #place_x_pos variables += #center_x_pos variables
execute store result storage minipurge:variables place_x_pos int 1 run scoreboard players get #place_x_pos variables

execute store result score #random_bit variables run random value 0..1
execute if score #random_bit variables matches 0 run scoreboard players operation #place_z_pos variables *= #negative variables
scoreboard players operation #place_z_pos variables += #center_z_pos variables
execute store result storage minipurge:variables place_z_pos int 1 run scoreboard players get #place_z_pos variables

execute store result storage minipurge:variables place_y_pos int 1 run function mphelper:surface/surface_from_storage {x_pos_storage:"minipurge:variables place_x_pos",z_pos_storage:"minipurge:variables place_z_pos"}
