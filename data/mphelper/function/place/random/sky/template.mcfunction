#Copyright JayPyro2000 2025. All Rights Reserved.

# Get a random x and z position for the asset.
execute store result storage minipurge:variables place_x_pos int 1 run function mphelper:random_loc/random_x_loc with storage minipurge:variables
execute store result storage minipurge:variables place_z_pos int 1 run function mphelper:random_loc/random_z_loc with storage minipurge:variables

# Pull the agl values and use the to get a random y position in the sky.
# agl is altitude "above ground level"
$data modify storage minipurge:variables max_agl set value $(max_agl)
$data modify storage minipurge:variables min_agl set value $(min_agl)
execute store result storage minipurge:variables place_y_pos int 1 run function mphelper:random_loc/random_sky_y with storage minipurge:variables
execute store result score #place_y_pos variables run data get storage minipurge:variables place_y_pos 1

# Pull the asset to place.
$data modify storage minipurge:variables template_to_place set value "$(template)"

function mphelper:place/random/set_template_rotation_mirror

execute if score #sky_y variables matches 1.. run function mphelper:place/random/place_template with storage minipurge:variables