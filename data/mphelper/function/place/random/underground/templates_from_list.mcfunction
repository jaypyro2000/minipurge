#Copyright JayPyro2000 2025. All Rights Reserved.

$scoreboard players set #underground_templates_index variables $(count)

$data modify storage minipurge:variables template_list set value "$(list)"
# bgs is "below ground surface"
$data modify storage minipurge:variables max_bgs set value $(max_bgs)
$data modify storage minipurge:variables min_bgs set value $(min_bgs)
$execute store result storage minipurge:variables random_index int 1 run function mphelper:place/random/random_list_index {list: "$(list)"}

scoreboard players set #template_type variables 1
execute run function mphelper:place/random/template_dispatcher with storage minipurge:variables

scoreboard players remove #underground_templates_index variables 1
execute store result storage minipurge:variables underground_templates_index int 1 run scoreboard players get #underground_templates_index variables

execute if score #underground_templates_index variables matches 1.. run function mphelper:place/random/underground/templates_from_list_dispatcher with storage minipurge:variables