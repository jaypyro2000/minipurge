#Copyright JayPyro2000 2025. All Rights Reserved.

say @a Got 1

$scoreboard players set #ground_jigsaws_index variables $(count)

$data modify storage minipurge:variables jigsaw_pool set value "$(pool)"
$data modify storage minipurge:variables jigsaw_max_depth set value $(max_depth)
$data modify storage minipurge:variables min_from_mid set value $(min_from_mid)
$data modify storage minipurge:variables max_from_mid set value $(max_from_mid)
$scoreboard players set #min_from_mid variables $(min_from_mid)
$scoreboard players set #max_from_mid variables $(max_from_mid)

function mphelper:place/random/ground/x_y_z with storage minipurge:variables

execute run function mphelper:place/random/place_jigsaw with storage minipurge:variables

scoreboard players remove #ground_jigsaws_index variables 1
execute store result storage minipurge:variables ground_jigsaws_index int 1 run scoreboard players get #ground_jigsaws_index variables

execute if score #ground_jigsaws_index variables matches 1.. run function mphelper:place/random/ground/jigsaws_from_pool_dispatcher with storage minipurge:variables