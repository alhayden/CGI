################################################################
# LOOP                                                         #
# > Called continuously @20Hz; place functions to loop in here #
################################################################

# run spawnbox code on players in spawnbox
execute as @a[x=-44,y=2,z=101,dx=0,dz=0,dy=1] run function cgi:misc/spawnbox

# no cheating!
function cgi:misc/anticheat

#TODO - move to ingame
function cgi:powerups/powerloop

### running game
execute if score gameState data matches 5 run function cgi:engine/reset
execute if score gameState data matches 4 run function cgi:engine/endgame
execute if score gameState data matches 3 run function cgi:engine/ingame
execute if score gameState data matches 2 run function cgi:engine/spawn
execute if score gameState data matches 1 run function cgi:engine/generating
execute if score gameState data matches 0 run function cgi:engine/idle

#function cgi:spectators/ui
