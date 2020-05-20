###################################
# RESET FLOOD FILL                #
# Flood fill map with empty space #
# > called from reset             #
###################################

execute at @e[type=armor_stand,name=mapReset] run fill ~-1 0 ~-1 ~1 250 ~1 air replace #impermeable
tag @e[type=armor_stand,name=mapReset] add ded

## move +x
execute at @e[type=minecraft:armor_stand,name=mapReset,tag=ded] if block ~3 255 ~ minecraft:barrier run summon minecraft:armor_stand ~3 ~ ~ {CustomName:"\"mapReset\"",NoGravity:1b,Invisible:1b, Small:1b, Tags:["round"]}
execute at @e[type=armor_stand,name=mapReset,tag=!ded] run setblock ~ 255 ~ air
## move -x
execute at @e[type=minecraft:armor_stand,name=mapReset,tag=ded] if block ~-3 255 ~ minecraft:barrier run summon minecraft:armor_stand ~-3 ~ ~ {CustomName:"\"mapReset\"",NoGravity:1b,Invisible:1b, Small:1b, Tags:["round"]}
execute at @e[type=armor_stand,name=mapReset,tag=!ded] run setblock ~ 255 ~ air
## move +z
execute at @e[type=minecraft:armor_stand,name=mapReset,tag=ded] if block ~ 255 ~3 minecraft:barrier run summon minecraft:armor_stand ~ ~ ~3 {CustomName:"\"mapReset\"",NoGravity:1b,Invisible:1b, Small:1b, Tags:["round"]}
execute at @e[type=armor_stand,name=mapReset,tag=!ded] run setblock ~ 255 ~ air
## move-z
execute at @e[type=minecraft:armor_stand,name=mapReset,tag=ded] if block ~ 255 ~-3 minecraft:barrier run summon minecraft:armor_stand ~ ~ ~-3 {CustomName:"\"mapReset\"",NoGravity:1b,Invisible:1b, Small:1b, Tags:["round"]}
execute at @e[type=armor_stand,name=mapReset,tag=!ded] run setblock ~ 255 ~ air

## move +x+z
execute at @e[type=minecraft:armor_stand,name=mapReset,tag=ded] if block ~3 255 ~3 minecraft:barrier run summon minecraft:armor_stand ~3 ~ ~3 {CustomName:"\"mapReset\"",NoGravity:1b,Invisible:1b, Small:1b, Tags:["round"]}
execute at @e[type=armor_stand,name=mapReset,tag=!ded] run setblock ~ 255 ~ air
## move -x-z
execute at @e[type=minecraft:armor_stand,name=mapReset,tag=ded] if block ~-3 255 ~-3 minecraft:barrier run summon minecraft:armor_stand ~-3 ~ ~-3 {CustomName:"\"mapReset\"",NoGravity:1b,Invisible:1b, Small:1b, Tags:["round"]}
execute at @e[type=armor_stand,name=mapReset,tag=!ded] run setblock ~ 255 ~ air
## move +z-x
execute at @e[type=minecraft:armor_stand,name=mapReset,tag=ded] if block ~-3 255 ~3 minecraft:barrier run summon minecraft:armor_stand ~-3 ~ ~3 {CustomName:"\"mapReset\"",NoGravity:1b,Invisible:1b, Small:1b, Tags:["round"]}
execute at @e[type=armor_stand,name=mapReset,tag=!ded] run setblock ~ 255 ~ air
## move -z+x
execute at @e[type=minecraft:armor_stand,name=mapReset,tag=ded] if block ~3 255 ~-3 minecraft:barrier run summon minecraft:armor_stand ~3 ~ ~-3 {CustomName:"\"mapReset\"",NoGravity:1b,Invisible:1b, Small:1b, Tags:["round"]}
execute at @e[type=armor_stand,name=mapReset,tag=!ded] run setblock ~ 255 ~ air


kill @e[type=armor_stand,name=mapReset,tag=ded]
