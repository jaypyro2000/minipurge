$scoreboard players set #sky_assets_index variables $(count)

$data modify storage minipurge:variables asset_list set value "$(list)"
$data modify storage minipurge:variables upper_padding set value $(upper_padding)
$data modify storage minipurge:variables lower_padding set value $(lower_padding)
$execute store result storage minipurge:variables random_index int 1 run function mphelper:place_random/random_list_index {list: "$(list)"}

scoreboard players set #asset_type variables 3
execute run function mphelper:place_random/asset_dispatcher with storage minipurge:variables

scoreboard players remove #sky_assets_index variables 1
execute store result storage minipurge:variables sky_assets_index int 1 run scoreboard players get #sky_assets_index variables

execute if score #sky_assets_index variables matches 1.. run function mphelper:place_random/sky_assets_from_list_dispatcher with storage minipurge:variables
