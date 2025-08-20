#Copyright JayPyro2000 2025. All Rights Reserved.

# Analyzes a single index by attempting to copy the item to it.
$execute store result score #not_in_list variables run data modify storage minipurge:variables the_list[$(max_list_index)] set from storage minipurge:variables the_item

# Decrements the maximum list index and copies it to storage.
scoreboard players remove #max_list_index variables 1
execute store result storage minipurge:variables max_list_index int 1 run scoreboard players get #max_list_index variables

# Only executes the next index if not in list remains true.
execute if score #not_in_list variables matches 1 if score #max_list_index variables matches 0.. run function mphelper:register/item_duplicate with storage minipurge:variables