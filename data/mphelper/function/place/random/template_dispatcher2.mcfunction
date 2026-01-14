#Copyright JayPyro2000 2025. All Rights Reserved.

$data modify storage minipurge:variables template set from storage $(template_name)

execute if score #template_type variables matches 1 run function mphelper:place/random/underground/template_dispatcher with storage minipurge:variables
execute if score #template_type variables matches 2 run function mphelper:place/random/ground/template_dispatcher with storage minipurge:variables
execute if score #template_type variables matches 3 run function mphelper:place/random/sky/template_dispatcher with storage minipurge:variables