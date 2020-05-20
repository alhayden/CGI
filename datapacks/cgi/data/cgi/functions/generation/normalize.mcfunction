#########################################################
# smooths the procedural generation by averaging adjacent
# stand's height (data)



scoreboard players set @s status 0
# +x
execute at @s positioned ~2 ~ ~ run scoreboard players operation @s status += @e[type=armor_stand,name=terrainBase,distance=..1] data
# -x
execute at @s positioned ~-2 ~ ~ run scoreboard players operation @s status += @e[type=armor_stand,name=terrainBase,distance=..1] data
# +z
execute at @s positioned ~ ~ ~2 run scoreboard players operation @s status += @e[type=armor_stand,name=terrainBase,distance=..1] data
# -z
execute at @s positioned ~ ~ ~-2 run scoreboard players operation @s status += @e[type=armor_stand,name=terrainBase,distance=..1] data

# +x+z
execute at @s positioned ~2 ~ ~2 run scoreboard players operation @s status += @e[type=armor_stand,name=terrainBase,distance=..1] data
# -x+z
execute at @s positioned ~-2 ~ ~2 run scoreboard players operation @s status += @e[type=armor_stand,name=terrainBase,distance=..1] data
# -x+z
execute at @s positioned ~-2 ~ ~2 run scoreboard players operation @s status += @e[type=armor_stand,name=terrainBase,distance=..1] data
# +x-z
execute at @s positioned ~2 ~ ~-2 run scoreboard players operation @s status += @e[type=armor_stand,name=terrainBase,distance=..1] data

#say @s[scores={status=..-1}]

scoreboard players set i data 8
scoreboard players operation @s status /= i data
scoreboard players operation @s status -= @s data

#say @s[scores={status=..0}]

#scoreboard players operation @s status /= i data

#scoreboard players operation @s data += @s status
