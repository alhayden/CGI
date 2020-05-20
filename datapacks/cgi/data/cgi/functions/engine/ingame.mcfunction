#######################
# IN GAME             #
# > called from loop  #
# state 3             #
#######################

# people in lobby must be made spectators
gamemode spectator @a[x=-25,y=0,z=75,dx=50,dy=10,dz=25,gamemode=adventure]

# call gametick
function cgi:engine/gametick

# count players
scoreboard players set playerCount data 0
execute as @a[gamemode=adventure] run scoreboard players add playerCount data 1

## TODO REMOVE THIS
#scoreboard players set playerCount data 2

# if game has ended, end game
execute if score playerCount data matches 1 run tellraw @a [{"text":"[","color":"gray"},{"text":"CGI","color":"gold"},{"text":"] ","color":"gray"},{"selector":"@a[gamemode=adventure]","color":"gold"},{"text":" is the last remaining player!","color":"yellow"}]

# catch a bad case:
execute if score playerCount data matches 0 run tellraw @a [{"text":"[","color":"gray"},{"text":"CGI","color":"gold"},{"text":"] ","color":"gray"},{"text":"The Game","color":"gold"},{"text":" won the game!","color":"yellow"}]
execute if score playerCount data matches 0 run scoreboard players set playerCount data 1

execute if score playerCount data matches 1 at @a run playsound minecraft:entity.player.levelup voice @p ~ ~ ~


## move on
execute if score playerCount data matches 1 run scoreboard players set gameTime data 0
execute if score playerCount data matches 1 run scoreboard players set gameState data 4
