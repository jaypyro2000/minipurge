#Copyright JayPyro2000 2025. All Rights Reserved.

# Returns a random z location within the border.
# Must be called with minipurge:variables storage.

scoreboard objectives add rand_z_offset dummy
$execute store result score @s rand_z_offset run random value -$(half_border)..$(half_border)
scoreboard objectives add rand_z_pos dummy
scoreboard players operation @s rand_z_pos = @s rand_z_offset
scoreboard players operation @s rand_z_pos += #center_z_pos variables
return run scoreboard players get @s rand_z_pos