#Copyright JayPyro2000 2025. All Rights Reserved.

# Get a random x and z position for the asset.
$execute store result score #place_x_pos variables run random value $(min_from_mid)..$(max_from_mid)
execute if score #place_x_pos variables > #half_border variables run scoreboard players operation #place_x_pos variables = #half_border variables
execute store result score #random_bit variables run random value 0..1
execute if score #random_bit variables matches 0 run scoreboard players operation #place_x_pos variables *= #negative variables
scoreboard players operation #place_x_pos variables += #center_x_pos variables
execute store result storage minipurge:variables place_x_pos int 1 run scoreboard players get #place_x_pos variables

$execute store result score #place_z_pos variables run random value $(min_from_mid)..$(max_from_mid)
execute if score #place_z_pos variables > #half_border variables run scoreboard players operation #place_z_pos variables = #half_border variables
execute store result score #random_bit variables run random value 0..1
execute if score #random_bit variables matches 0 run scoreboard players operation #place_z_pos variables *= #negative variables
scoreboard players operation #place_z_pos variables += #center_z_pos variables
execute store result storage minipurge:variables place_z_pos int 1 run scoreboard players get #place_z_pos variables

execute store result storage minipurge:variables place_y_pos int 1 run function mphelper:surface/surface_from_storage {x_pos_storage:"minipurge:variables place_x_pos",z_pos_storage:"minipurge:variables place_z_pos"}

$data modify storage minipurge:variables template_to_place set value "$(template)"

function mphelper:place/random/set_template_rotation_mirror

execute run function mphelper:place/random/place_template with storage minipurge:variables