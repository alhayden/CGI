###############################
# GENERATING                  #
# > called from loop          #
# gamestate 1, map generation #
###############################

# people watch mapgen
effect give @a minecraft:levitation 1000000 0 true
effect give @a minecraft:invisibility 1 0 true
tp @a 0 50 0 ~ ~

#function cgi:generating/run
#fill -50 0 -50 50 1 50 blue_stained_glass
#fill -50 2 -50 50 2 50 blue_stained_glass

## ACTUALLY DO MAP GEN STUFF
## THIS IS NOT DONE YET
## SINCERELY,
## YOU'RE LAZY PAST SELF LOL

# init rng because people are bad
function cgi:misc/ensure_rng

# please replace with the number of objects we want to spawn
scoreboard players operation i data = structureCount data
scoreboard players set operand data 0
# make the armor stands
execute if score i data > operand data run function cgi:engine/spawn_many_objects
# radius of 40 so as not to break walls
spreadplayers 0 0 0 40 false @e[tag=worldgen]
execute at @e[tag=box] run function cgi:structures/box
execute at @e[tag=bunker1] run function cgi:structures/bunker1
execute at @e[tag=bunker2] run function cgi:structures/bunker2
execute at @e[tag=henge] run function cgi:structures/henge
execute at @e[tag=ic] run function cgi:structures/ic
execute at @e[tag=mushroom] run function cgi:structures/mushroom
execute at @e[tag=pine] run function cgi:structures/pine
execute at @e[tag=sculpture] run function cgi:structures/sculpture
execute at @e[tag=shrine] run function cgi:structures/shrine
execute at @e[tag=spire] run function cgi:structures/spire
execute at @e[tag=tornado] run function cgi:structures/tornado
execute at @e[tag=tree] run function cgi:structures/tree
execute at @e[tag=vortex] run function cgi:structures/vortex
execute at @e[tag=wifi] run function cgi:structures/wifi
kill @e[tag=worldgen]

# when done:
function cgi:engine/spawnprep
scoreboard players set gameState data 2
