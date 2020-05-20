######################################################################
# Increment Altitude                                                 #
# Scootches all the terrainBase armorstands up by their `data` score #
######################################################################

#scoreboard players operation i data = terrainMagnitude data
#function cgi:generation/scoreboardextrude
execute as @e[type=armor_stand,name=terrainBase,scores={data=1..}] at @s run tp @s ~ ~1 ~
scoreboard players remove @e[type=armor_stand,name=terrainBase,scores={data=1..}] data 1
execute if entity @e[type=armor_stand,name=terrainBase,scores={data=1..}] run function cgi:generation/incalt
