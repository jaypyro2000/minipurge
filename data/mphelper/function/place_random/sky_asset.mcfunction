#Copyright JayPyro2000 2025. All Rights Reserved.

# Get a random x and z position for the asset.
execute store result storage minipurge:variables place_x_pos int 1 run function mphelper:random_loc/random_x_loc with storage minipurge:variables
execute store result storage minipurge:variables place_z_pos int 1 run function mphelper:random_loc/random_z_loc with storage minipurge:variables

# Pull the padding values and use the to get a random y position in the sky.
$data modify storage minipurge:variables upper_padding set value $(upper_padding)
$data modify storage minipurge:variables lower_padding set value $(lower_padding)
execute store result storage minipurge:variables place_y_pos int 1 run function mphelper:random_loc/random_sky_y with storage minipurge:variables

# Pull the asset to place.
$data modify storage minipurge:variables place_asset_asset set value "$(asset)"

# Get random rotation and mirroring for the asset.
execute store result score #asset_rotation variables run random value 1..4
execute store result score #asset_mirror variables run random value 1..3
execute if score #asset_rotation variables matches 1 run data modify storage minipurge:variables asset_rotation set value "none"
execute if score #asset_rotation variables matches 2 run data modify storage minipurge:variables asset_rotation set value "clockwise_90"
execute if score #asset_rotation variables matches 3 run data modify storage minipurge:variables asset_rotation set value "counter_clockwise_90"
execute if score #asset_rotation variables matches 4 run data modify storage minipurge:variables asset_rotation set value "180"
execute if score #asset_mirror variables matches 1 run data modify storage minipurge:variables asset_mirror set value "none"
execute if score #asset_mirror variables matches 2 run data modify storage minipurge:variables asset_mirror set value "front_back"
execute if score #asset_mirror variables matches 3 run data modify storage minipurge:variables asset_mirror set value "left_right"

execute run function mphelper:place_random/place_asset with storage minipurge:variables