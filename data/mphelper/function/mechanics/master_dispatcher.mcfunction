#Copyright JayPyro2000 2025. All Rights Reserved.
execute if score #dispatcher variables matches 1 run function mphelper:mechanics/war with storage minipurge:variables
execute if score #dispatcher variables matches 2 run function mphelper:mechanics/shrink with storage minipurge:variables
execute if score #dispatcher variables matches 3 run function mphelper:mechanics/endgame with storage minipurge:variables
scoreboard players add #dispatcher variables 1