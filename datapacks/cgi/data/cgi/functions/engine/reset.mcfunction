#################################
# RESET                         #
# state 5, reset map after game #
# > called from loop            #
#################################

scoreboard players add gameTime data 1
execute if score gameTime data matches 2 run function cgi:engine/resetfloodfill
execute if score gameTime data matches 2 run scoreboard players set gameTime data 0


## then,
scoreboard players set playerCount data 0
execute as @e[type=armor_stand,name=mapReset] run scoreboard players add playerCount data 1

execute if score playerCount data matches 0 run function cgi:engine/resetfinal
execute if score playerCount data matches 0 run scoreboard players set gameState data 0
