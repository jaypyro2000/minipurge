#Copyright JayPyro2000 2025. All Rights Reserved.

# Displays the help menu.
#TODO: Determine why hyperlinks don't work on my client or if these hyperlinks don't work at all.
tellraw @s ["",{"text":"Welcome to Minipurge by JayPyro2000!","bold":true,"color":"red"},{"text":"\nTo start the event use the command:\n"},{"text":"/function minipurge:start {lives:<value>, border:<value>, peace:<value>, war:<value>, shrink:<value>}","clickEvent":{"action":"copy_to_clipboard","value":"/function minipurge:start {lives:<value>, border:<value>, peace:<value>, war:<value>, shrink:<value>}"}},{"text":"\nWhere <value> is any whole number greater than 0.\nTo reset the event use the command:\n"},{"text":"/function minipurge:reset","clickEvent":{"action":"copy_to_clipboard","value":"/function minipurge:reset"}},{"text":"\n"},{"text":"Full Instructions","bold":true,"clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/data-packs/minipurge"}},{"text":"\nSupport this project on "},{"text":"Patreon!","color":"green","clickEvent":{"action":"open_url","value":"patreon.com/JayPyro2000"}}]

function mphelper:add_ons/run_add_ons {stage:mphelp}