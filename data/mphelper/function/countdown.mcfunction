#Copyright JayPyro2000 2025. All Rights Reserved.
scoreboard players remove #countdown variables 5
execute store result bossbar minipurge:timerbar value run scoreboard players get #countdown variables
schedule function minipurge:countdown 5s