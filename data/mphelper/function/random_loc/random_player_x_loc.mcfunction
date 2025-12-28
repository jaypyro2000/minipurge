#Copyright JayPyro2000 2025. All Rights Reserved.

# Returns a random x location within the border.
# Must be called with minipurge:variables storage.

scoreboard objectives add rand_x_offset dummy
$execute store result score @s rand_x_offset run random value -$(half_border)..$(half_border)
scoreboard objectives add rand_x_pos dummy
scoreboard players operation @s rand_x_pos = @s rand_x_offset
scoreboard players operation @s rand_x_pos += #center_x_pos variables
return run scoreboard players get @s rand_x_pos