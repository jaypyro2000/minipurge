#Copyright JayPyro2000 2025. All Rights Reserved.

# Get surface y at given x and z.
execute store result storage minipurge:variables sky_y int 1 run function mphelper:surface/surface_from_storage {x_pos_storage:"minipurge:variables sky_x_pos",z_pos_storage:"minipurge:variables sky_z_pos"}
execute store result score #sky_y variables run data get storage minipurge:variables sky_y 1

# Set up random number range low value as lower_padding
data modify storage minipurge:variables random_low set from storage minipurge:variables lower_padding

# Set up random number range high value as 320(max build height) - upper_padding - lower_padding
execute store result score #upper_padding variables run data get storage minipurge:variables upper_padding 1
execute store result score #lower_padding variables run data get storage minipurge:variables lower_padding 1
scoreboard players set #random_high variables 320
scoreboard players operation #random_high variables -= #upper_padding variables
scoreboard players operation #random_high variables -= #lower_padding variables
execute store result storage minipurge:variables random_high int 1 run scoreboard players get #random_high variables

# Get a random offset within the random range.
execute store result score #sky_y_offset variables run function mphelper:place_random/random_number with storage minipurge:variables

# Add offset to surface y to get final y position.
scoreboard players operation #sky_y variables += #sky_y_offset variables

return run scoreboard players get #sky_y variables