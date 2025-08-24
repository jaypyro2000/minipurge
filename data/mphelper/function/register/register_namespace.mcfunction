#Copyright JayPyro2000 2025. All Rights Reserved.

$scoreboard players set #execute_last variables $(execute_last)

# If the namespace is flagged register last places it in the register last storage.
$execute if score #execute_last variables matches 1 run data modify storage minipurge:variables last_namespace set value $(namespace)

# If the namespace registry does not exist this creates it.
$execute unless data storage minipurge:variables namespaces run data modify storage minipurge:variables namespaces append value $(namespace)

# Determines if it is already in the registry.
$execute store result score #namespace_in_list variables run function mphelper:register/item_in_list {item:$(namespace),list:"minipurge:variables namespaces"}

# If it is not in the registry and not marked as register last, add it to the namespace registry.
$execute if score #execute_last variables matches 0 unless score #namespace_in_list variables matches 1 run data modify storage minipurge:variables namespaces append value $(namespace)