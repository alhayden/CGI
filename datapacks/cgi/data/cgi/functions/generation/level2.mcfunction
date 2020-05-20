###############################
# part of procedural generation

# r = 6

spreadplayers 0 0 6 50 false @e[type=armor_stand,name=baseFeature]

execute at @e[type=armor_stand,tag=baseFeature] run scoreboard players add @e[type=armor_stand,name=terrainBase,distance=..6] data 1
execute at @e[type=armor_stand,tag=baseFeature] run scoreboard players add @e[type=armor_stand,name=terrainBase,distance=..2] data 1
