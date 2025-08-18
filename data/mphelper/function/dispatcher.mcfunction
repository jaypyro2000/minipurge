#Copyright JayPyro2000 2025. All Rights Reserved.
execute if score #dispatcher variables matches 1 run function minipurge:enable_pvp with storage minipurge:variables
execute if score #dispatcher variables matches 2 run function minipurge:shrink_border with storage minipurge:variables
execute if score #dispatcher variables matches 3 run function minipurge:endgame with storage minipurge:variables
scoreboard players add #dispatcher variables 1