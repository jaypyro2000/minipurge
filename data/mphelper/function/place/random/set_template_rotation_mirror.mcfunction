#Copyright JayPyro2000 2025. All Rights Reserved.

# Get random rotation and mirroring for the template.
execute store result score #template_rotation variables run random value 1..4
execute store result score #template_mirror variables run random value 1..3
execute if score #template_rotation variables matches 1 run data modify storage minipurge:variables template_rotation set value "none"
execute if score #template_rotation variables matches 2 run data modify storage minipurge:variables template_rotation set value "clockwise_90"
execute if score #template_rotation variables matches 3 run data modify storage minipurge:variables template_rotation set value "counterclockwise_90"
execute if score #template_rotation variables matches 4 run data modify storage minipurge:variables template_rotation set value "180"
execute if score #template_mirror variables matches 1 run data modify storage minipurge:variables template_mirror set value "none"
execute if score #template_mirror variables matches 2 run data modify storage minipurge:variables template_mirror set value "front_back"
execute if score #template_mirror variables matches 3 run data modify storage minipurge:variables template_mirror set value "left_right"