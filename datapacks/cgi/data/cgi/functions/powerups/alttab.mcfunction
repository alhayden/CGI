###########################
# AltTab                  #
# spreads players         #
# > called from powerloop #
###########################

execute at @s run title @a actionbar [{"selector":"@p[gamemode=adventure]","color":"yellow"},{"text":" switched tabs","color":"white"}]
spreadplayers 0 0 10 48 false @a[gamemode=adventure]
execute as @a at @s run playsound minecraft:ui.toast.in master @p ~ ~ ~ 20

kill @s
