###############################
# part of procedural generation


# r = 24

#spreadplayers 0 0 24 50 false @e[type=armor_stand,name=baseFeature]

execute at @e[type=armor_stand,tag=baseFeature] run scoreboard players add @e[type=armor_stand,name=terrainBase,distance=..24] data 1
execute at @e[type=armor_stand,tag=baseFeature] run scoreboard players add @e[type=armor_stand,name=terrainBase,distance=..20] data 1
execute at @e[type=armor_stand,tag=baseFeature] run scoreboard players add @e[type=armor_stand,name=terrainBase,distance=..16] data 1
execute at @e[type=armor_stand,tag=baseFeature] run scoreboard players add @e[type=armor_stand,name=terrainBase,distance=..12] data 1
execute at @e[type=armor_stand,tag=baseFeature] run scoreboard players add @e[type=armor_stand,name=terrainBase,distance=..8] data 1
execute at @e[type=armor_stand,tag=baseFeature] run scoreboard players add @e[type=armor_stand,name=terrainBase,distance=..4] data 1
