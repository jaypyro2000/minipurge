#Copyright JayPyro2000 2025. All Rights Reserved.

# Get a random x and z position for the asset.
execute store result storage minipurge:variables place_x_pos int 1 run function mphelper:random_loc/random_x_loc with storage minipurge:variables
execute store result storage minipurge:variables place_z_pos int 1 run function mphelper:random_loc/random_z_loc with storage minipurge:variables

# Pull the padding values and use the to get a random y position in the sky.
$data modify storage minipurge:variables upper_padding set value $(upper_padding)
$data modify storage minipurge:variables lower_padding set value $(lower_padding)
execute store result storage minipurge:variables place_y_pos int 1 run function mphelper:random_loc/random_sky_y with storage minipurge:variables
execute store result score #place_y_pos variables run data get storage minipurge:variables place_y_pos 1

# Pull the asset to place.
$data modify storage minipurge:variables place_asset_asset set value "$(asset)"

function mphelper:place_random/set_asset_rotation_mirror

execute if score #sky_y variables matches 1.. run function mphelper:place_random/place_asset with storage minipurge:variables