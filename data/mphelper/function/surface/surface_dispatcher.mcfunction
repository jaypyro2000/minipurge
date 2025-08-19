scoreboard players remove #surface_y_pos variables 1
execute store result storage minipurge:surface surface_y_pos int 1 run scoreboard players get #surface_y_pos variables
execute run function mphelper:surface/is_surface with storage minipurge:surface