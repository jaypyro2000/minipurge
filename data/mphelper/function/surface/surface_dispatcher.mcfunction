#Copyright JayPyro2000 2025. All Rights Reserved.

# Decrements the y position and tests for the surface.
scoreboard players remove #surface_y_pos variables 1
execute store result storage minipurge:surface surface_y_pos int 1 run scoreboard players get #surface_y_pos variables
execute run function mphelper:surface/is_surface with storage minipurge:surface