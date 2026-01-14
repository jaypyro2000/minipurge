#Copyright JayPyro2000 2025. All Rights Reserved.

$scoreboard players set #ground_templates_index variables $(count)

$data modify storage minipurge:variables template_list set value "$(list)"
$execute store result storage minipurge:variables random_index int 1 run function mphelper:place/random/random_list_index {list: "$(list)"}

scoreboard players set #template_type variables 2
execute run function mphelper:place/random/template_dispatcher with storage minipurge:variables

scoreboard players remove #ground_templates_index variables 1
execute store result storage minipurge:variables ground_templates_index int 1 run scoreboard players get #ground_templates_index variables

execute if score #ground_templates_index variables matches 1.. run function mphelper:place/random/ground/templates_from_list_dispatcher with storage minipurge:variables