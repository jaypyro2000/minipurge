#Copyright JayPyro2000 2025. All Rights Reserved.

# Get a random x and z position for the asset.
execute store result storage minipurge:variables place_x_pos int 1 run function mphelper:random_loc/random_x_loc with storage minipurge:variables
execute store result storage minipurge:variables place_z_pos int 1 run function mphelper:random_loc/random_z_loc with storage minipurge:variables
execute store result storage minipurge:variables place_y_pos int 1 run function mphelper:surface/surface_from_storage {x_pos_storage:"minipurge:variables place_x_pos",z_pos_storage:"minipurge:variables place_z_pos"}

$data modify storage minipurge:variables template_to_place set value "$(template)"

function mphelper:place/random/set_template_rotation_mirror

execute run function mphelper:place/random/place_template with storage minipurge:variables