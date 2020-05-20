#########################################
# for use with arbitrarily-scaled incalts

execute as @e[type=armor_stand,name=terrainBase,scores={data=1..}] at @s run tp @s ~ ~0.1 ~
scoreboard players remove i data 1
execute unless score i data matches 0 run function cgi:generation/scoreboardextrude
