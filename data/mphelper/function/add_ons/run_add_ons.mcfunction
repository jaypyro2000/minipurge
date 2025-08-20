#Copyright JayPyro2000 2025. All Rights Reserved.

# Reset namespace index, set the stage and run the add-on dispatcher.
execute store result score #max_namespace_index variables run data get storage minipurge:variables namespaces
scoreboard players remove #max_namespace_index variables 1
execute store result storage minipurge:variables max_namespace_index int 1 run scoreboard players get #max_namespace_index variables
$data modify storage minipurge:variables add_on_stage set value $(stage)
execute run function mphelper:add_ons/add_on_dispatcher with storage minipurge:variables
execute run function mphelper:add_ons/execute_last_add_on with storage minipurge:variables