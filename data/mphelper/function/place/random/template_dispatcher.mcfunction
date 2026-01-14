#Copyright JayPyro2000 2025. All Rights Reserved.

$data modify storage minipurge:variables template_name set value "$(template_list)[$(random_index)]"

execute run function mphelper:place/random/template_dispatcher2 with storage minipurge:variables