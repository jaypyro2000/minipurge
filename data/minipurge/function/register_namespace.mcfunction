$scoreboard players set #register_last variables $(register_last)
$execute if score #register_last variables matches 1 run data modify storage minipurge:variables last_namespace set value $(namespace)
$execute store result score #in_list variables run function minipurge:item_in_list {item:$(namespace),list:"minipurge:variables namespaces"}
execute if score #register_last variables matches 0 unless score #in_list variables matches 1 run say @a Yay