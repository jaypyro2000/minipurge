#Copyright JayPyro2000 2025. All Rights Reserved.

# Set up center location
summon marker ~ ~ ~ {Tags:["center_loc"]}

# Put center position into storage and scoreboard.
execute store result storage minipurge:variables center_x_pos int 1 run data get entity @e[tag=center_loc,limit=1] Pos[0]
execute store result storage minipurge:variables center_z_pos int 1 run data get entity @e[tag=center_loc,limit=1] Pos[2]
execute store result score #center_x_pos variables run data get storage minipurge:variables center_x_pos 1
execute store result score #center_z_pos variables run data get storage minipurge:variables center_z_pos 1

# Get the ground position of the center marker.
execute store result storage minipurge:variables center_y_pos int 1 run function mphelper:surface/surface_from_scoreboard {x_pos_score:"#center_x_pos variables",z_pos_score:"#center_z_pos variables"}
execute store result score #center_y_pos variables run data get storage minipurge:variables center_y_pos 1

# Store arguments as scoreboard variables
scoreboard objectives add variables dummy
$scoreboard players set #peace variables $(peace)
$scoreboard players set #war variables $(war)
$scoreboard players set #shrink variables $(shrink)

# Set the endgame to occur 5 minutes before the world stops shrinking.
$scoreboard players set #endgame variables $(shrink)
execute if score #shrink variables matches 5.. run scoreboard players remove #endgame variables 5

# Is used later to determine when to put players in spectator.
$scoreboard players set #lives variables $(lives)
scoreboard players remove #lives variables 1

# Reset the master dispatcher.
scoreboard players set #master_dispatcher variables 1

# Transfer to NBT storage
$data modify storage minipurge:variables border set value $(border)
$data modify storage minipurge:variables lives set value $(lives)
execute store result storage minipurge:variables peace int 60 run scoreboard players get #peace variables
execute store result storage minipurge:variables war int 60 run scoreboard players get #war variables
execute store result storage minipurge:variables shrink int 60 run scoreboard players get #shrink variables
execute store result storage minipurge:variables endgame int 60 run scoreboard players get #endgame variables

# Execute the boot sequence. 
execute run function mphelper:setup/boot with storage minipurge:variables