#Copyright JayPyro2000 2025. All Rights Reserved.

# Finds a random spawn location for each player.
execute store result storage minipurge:variables spawn_x_pos int 1 run function mphelper:random_loc/random_x_loc with storage minipurge:variables
execute store result storage minipurge:variables spawn_z_pos int 1 run function mphelper:random_loc/random_z_loc with storage minipurge:variables
execute store result storage minipurge:variables spawn_y_pos int 1 run function mphelper:surface/surface_from_storage {x_pos_storage:"minipurge:variables spawn_x_pos",z_pos_storage:"minipurge:variables spawn_z_pos"}

execute run function mphelper:setup/scatter_tp with storage minipurge:variables