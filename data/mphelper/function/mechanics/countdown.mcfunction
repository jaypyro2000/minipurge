#Copyright JayPyro2000 2025. All Rights Reserved.

# Detracts 5 seconds from the countdown every 5 seconds and updates the timer bossbar.
scoreboard players remove #countdown variables 5
execute store result bossbar minipurge:timerbar value run scoreboard players get #countdown variables
schedule function mphelper:mechanics/countdown 5s