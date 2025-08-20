#Copyright JayPyro2000 2025. All Rights Reserved.

# Cycles through current add-on namespace and executes it.
$data modify storage minipurge:variables current_namespace set from storage minipurge:variables namespaces[$(max_namespace_index)]
execute run function mphelper:add_ons/add_on_executer with storage minipurge:variables

# Decrement the max namespace index.
scoreboard players remove #max_namespace_index variables 1
execute store result storage minipurge:variables max_namespace_index int 1 run scoreboard players get #max_namespace_index variables

# Reruns itself if there are more namespaces.
execute if score #max_namespace_index variables matches 0.. run function mphelper:add_ons/add_on_dispatcher with storage minipurge:variables