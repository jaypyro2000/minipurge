$scoreboard players set #ground_assets_index variables $(count)

$data modify storage minipurge:variables asset_list set value "$(list)"
$execute store result storage minipurge:variables random_index int 1 run function mphelper:place_random/random_list_index {list: "$(list)"}

scoreboard players set #asset_type variables 2
execute run function mphelper:place_random/asset_dispatcher with storage minipurge:variables

scoreboard players remove #ground_assets_index variables 1
execute store result storage minipurge:variables ground_assets_index int 1 run scoreboard players get #ground_assets_index variables

execute if score #ground_assets_index variables matches 1.. run function mphelper:place_random/ground_assets_from_list_dispatcher with storage minipurge:variables