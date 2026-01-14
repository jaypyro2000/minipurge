#Copyright JayPyro2000 2025. All Rights Reserved.

# Get surface y at given x and z.
execute store result storage minipurge:variables underground_ground_y int 1 run function mphelper:surface/surface_from_storage {x_pos_storage:"minipurge:variables place_x_pos",z_pos_storage:"minipurge:variables place_z_pos"}

# Set up random number range low value as ground_y - max_bgs
execute store result score #random_low variables run data get storage minipurge:variables underground_ground_y 1
execute store result score #max_bgs variables run data get storage minipurge:variables max_bgs 1
scoreboard players operation #random_low variables -= #max_bgs variables
execute store result storage minipurge:variables random_low int 1 run scoreboard players get #random_low variables

# Set up random number range high value as ground_y - min_bgs
execute store result score #random_high variables run data get storage minipurge:variables underground_ground_y 1
execute store result score #min_bgs variables run data get storage minipurge:variables min_bgs 1
scoreboard players operation #random_high variables -= #min_bgs variables
execute store result storage minipurge:variables random_high int 1 run scoreboard players get #random_high variables

# Get a underground_y within the random range.
execute store result score #underground_y variables run function mphelper:place/random/random_number with storage minipurge:variables

# Cap underground_y at -63 to avoid build depth issues.
execute if score #underground_y variables matches ..-64 run scoreboard players set #underground_y variables -63

return run scoreboard players get #underground_y variables