#Copyright JayPyro2000 2025. All Rights Reserved.

# Returns a random z location within the border.
# Must be called with minipurge:variables storage.

$execute store result score #rand_z_pos variables run random value -$(half_border)..$(half_border)
scoreboard players operation #rand_z_pos variables += #center_z_pos variables
return run scoreboard players get #rand_z_pos variables