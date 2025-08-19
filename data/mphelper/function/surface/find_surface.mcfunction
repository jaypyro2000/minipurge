scoreboard players set #surface_y_pos variables 320
scoreboard players set #found_surface variables 0
$data modify storage minipurge:surface surface_x_pos set value $(x_pos)
$data modify storage minipurge:surface surface_z_pos set value $(z_pos)
execute store result storage minipurge:surface surface_y_pos int 1 run scoreboard players get #surface_y_pos variables
execute run function mphelper:surface/surface_dispatcher with storage minipurge:surface
return run data get storage minipurge:surface surface_y_pos