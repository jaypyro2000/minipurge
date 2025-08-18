#Copyright JayPyro2000 2025. All Rights Reserved.
$execute store result score #structure_index variables run random value 0..$(max_structure_index)
execute store result storage minipurge:structure structure_index int 1 run scoreboard players get #structure_index variables
execute run function minipurge:build_dispatcher with storage minipurge:structure