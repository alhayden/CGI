#####################################################
#  Endgame                                          #
# (spectate for a few seconds before resetting map) #
# state 4                                           #
# > called from loop                                #
#####################################################


# tick powerups & such
function cgi:engine/gametick

#scoreboard players remove gameTime data 1


execute if score gameTime data matches 100 run function cgi:engine/resetstart
execute if score gameTime data matches 100 run scoreboard players set gameState data 5
execute if score gameTime data matches 100 run scoreboard players set gameTime data 0
