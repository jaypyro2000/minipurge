#Copyright JayPyro2000 2025. All Rights Reserved.

# !!To use this function you must specify both the "player name" and objective in the function call.
# It takes a player score and turns into numbers find_surface can read.
$execute store result storage minipurge:surface x_pos int 1 run scoreboard players get $(x_pos_score)
$execute store result storage minipurge:surface z_pos int 1 run scoreboard players get $(z_pos_score)

execute run function mphelper:surface/find_surface with storage minipurge:surface

return run data get storage minipurge:surface surface_y_pos