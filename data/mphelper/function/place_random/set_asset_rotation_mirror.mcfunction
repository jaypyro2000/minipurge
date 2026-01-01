# Get random rotation and mirroring for the asset.
execute store result score #asset_rotation variables run random value 1..4
execute store result score #asset_mirror variables run random value 1..3
execute if score #asset_rotation variables matches 1 run data modify storage minipurge:variables asset_rotation set value "none"
execute if score #asset_rotation variables matches 2 run data modify storage minipurge:variables asset_rotation set value "clockwise_90"
execute if score #asset_rotation variables matches 3 run data modify storage minipurge:variables asset_rotation set value "counterclockwise_90"
execute if score #asset_rotation variables matches 4 run data modify storage minipurge:variables asset_rotation set value "180"
execute if score #asset_mirror variables matches 1 run data modify storage minipurge:variables asset_mirror set value "none"
execute if score #asset_mirror variables matches 2 run data modify storage minipurge:variables asset_mirror set value "front_back"
execute if score #asset_mirror variables matches 3 run data modify storage minipurge:variables asset_mirror set value "left_right"