$scoreboard players set #sky_assets_index variables $(count)

$execute store result storage minipurge:variables sky_asset string 1 run data get storage minipurge:variables $(list)[$(random_index)]

$(list)[$(random_index)]


$execute run function mphelper:place_random/sky_asset {asset: "variables sky_asset", upper_padding:$(upper_padding), lower_padding:$(lower_padding)}

scoreboard players remove #sky_assets_index variables 1
$execute if score #sky_assets_index variables matches 0.. run function mphelper:place_random/sky_asset_from_list {list: $(list), count: 5, upper_padding:$(upper_padding), lower_padding:$(lower_padding)}
