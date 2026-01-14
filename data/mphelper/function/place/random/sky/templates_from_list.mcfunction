#Copyright JayPyro2000 2025. All Rights Reserved.

$scoreboard players set #sky_templates_index variables $(count)

$data modify storage minipurge:variables template_list set value "$(list)"
# agl is altitude "above ground level"
$data modify storage minipurge:variables max_agl set value $(max_agl)
$data modify storage minipurge:variables min_agl set value $(min_agl)
$execute store result storage minipurge:variables random_index int 1 run function mphelper:place/random/random_list_index {list: "$(list)"}

scoreboard players set #template_type variables 3
execute run function mphelper:place/random/template_dispatcher with storage minipurge:variables

scoreboard players remove #sky_templates_index variables 1
execute store result storage minipurge:variables sky_templates_index int 1 run scoreboard players get #sky_templates_index variables
execute if score #sky_templates_index variables matches 1.. run function mphelper:place/random/sky/templates_from_list_dispatcher with storage minipurge:variables
