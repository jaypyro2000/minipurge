#Copyright JayPyro2000 2025. All Rights Reserved.

# Moves the item and list to temporary storage.
$data modify storage minipurge:variables the_list set from storage $(list)
$data modify storage minipurge:variables the_item set value $(item)

# Gets the maximum index of the list and decrements it by 1.
execute store result score #max_list_index variables run data get storage minipurge:variables the_list
scoreboard players remove #max_list_index variables 1
execute store result storage minipurge:variables max_list_index int 1 run scoreboard players get #max_list_index variables

# Resets the not in list flag.
scoreboard players set #not_in_list variables 1

# Finds out if it is in the list.
execute run function mphelper:register/item_duplicate with storage minipurge:variables

# Returns the opposite (Answers the question "Is the item in the list?").
execute if score #not_in_list variables matches 1 run return 0
execute if score #not_in_list variables matches 0 run return 1