#Copyright JayPyro2000 2025. All Rights Reserved.

# !!To use this function you must specify both the namespace and variable name in the function call.
# It takes a storage location and turns into numbers find_surface can read.
$data modify storage minipurge:surface x_pos set from storage $(x_pos_storage)
$data modify storage minipurge:surface z_pos set from storage $(z_pos_storage)

execute run function mphelper:surface/find_surface with storage minipurge:surface

return run data get storage minipurge:surface surface_y_pos