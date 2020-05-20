##############################
# START RESET                #
# run once before reset loop #
# > called from endgame      #
##############################

summon minecraft:armor_stand 0 250 0 {CustomName:"\"mapReset\"",NoGravity:1b,Invisible:1b, Small:1b, Tags:["round"]}
execute as @p[gamemode=adventure,x=-50,y=0,z=-50,dx=101,dz=101,dy=101] run tp @e[type=armor_stand,name=mapReset] @s
execute as @e[type=armor_stand,name=mapReset] at @s run tp @s ~ 250 ~
fill -51 255 -51 51 255 51 barrier
gamemode spectator @a[gamemode=adventure]
