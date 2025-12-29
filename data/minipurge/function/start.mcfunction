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

# Store border size and get half border size.
$data modify storage minipurge:variables border set value $(border)
$scoreboard players set #border variables $(border)
scoreboard players set #two variables 2
$scoreboard players set #half_border variables $(border)
scoreboard players operation #half_border variables /= #two variables
execute store result storage minipurge:variables half_border int 1 run scoreboard players get #half_border variables

# Store lives as NBT value.
$data modify storage minipurge:variables lives set value $(lives)

# Transfer to NBT storage in seconds or set them to 1 second if 0
execute if score #peace variables matches 1.. run execute store result storage minipurge:variables peace int 60 run scoreboard players get #peace variables
execute if score #peace variables matches 0 run data modify storage minipurge:variables peace set value 1
execute if score #war variables matches 1.. run execute store result storage minipurge:variables war int 60 run scoreboard players get #war variables
execute if score #war variables matches 0 run data modify storage minipurge:variables war set value 1
execute store result storage minipurge:variables shrink int 60 run scoreboard players get #shrink variables
execute if score #endgame variables matches 1.. run execute store result storage minipurge:variables endgame int 60 run scoreboard players get #endgame variables
execute if score #endgame variables matches 0 run data modify storage minipurge:variables endgame set value 1

# Transfer to NBT storage in minutes
execute store result storage minipurge:variables peace_mins int 1 run scoreboard players get #peace variables
execute store result storage minipurge:variables war_mins int 1 run scoreboard players get #war variables
execute store result storage minipurge:variables shrink_mins int 1 run scoreboard players get #shrink variables

# Execute the boot sequence. 
execute run function mphelper:setup/boot with storage minipurge:variables