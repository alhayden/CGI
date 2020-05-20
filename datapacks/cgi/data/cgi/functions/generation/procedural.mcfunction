#############################################
# procedurally generates terrain in the arena
#

fill -50 0 -50 50 0 50 blue_stained_glass

summon minecraft:armor_stand -48.5 1.00 -48.5 {NoGravity:1b,CustomName:"\"generateStands\""}
execute as @e[name=generateStands] at @s run function cgi:generation/makestands

scoreboard players add @e[name=terrainBase,type=armor_stand] data 1

tag @e[type=armor_stand,name=terrainBase,limit=6,sort=random] add baseFeature
function cgi:generation/level0
tag @e[type=armor_stand,tag=baseFeature] remove baseFeature

tag @e[type=armor_stand,name=terrainBase,limit=12,sort=random] add baseFeature
function cgi:generation/level1
tag @e[type=armor_stand,tag=baseFeature] remove baseFeature

tag @e[type=armor_stand,name=terrainBase,limit=24,sort=random] add baseFeature
function cgi:generation/level2
tag @e[type=armor_stand,tag=baseFeature] remove baseFeature

execute as @e[type=armor_stand,name=terrainBase] run function cgi:generation/normalize
execute as @e[type=armor_stand,name=terrainBase] run scoreboard players operation @s data += @s status

function cgi:generation/incalt

execute at @e[type=armor_stand,name=terrainBase] run fill ~-1 ~-1 ~-1 ~ 0 ~ blue_stained_glass replace air

kill @e[type=armor_stand]

