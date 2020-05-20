#####################################
# RECURSIVE FUNCTION                #
# called from generating.mcfunction #
####################################3

# The only reason this function exists is to spawn a bunch of armorstands at once
# so that they can spawn all the objects at once

# get a random number
function cgi:misc/rng
# set this to (2**31-1)/<number of structures> - it outpus 0 - <num-1>
scoreboard players set operand data 153391689
scoreboard players operation random data /= operand data

execute if score random data matches 0 run summon armor_stand 0 0 0 {NoGravity:1,Marker:1,Tags:["worldgen", "box"]}
execute if score random data matches 1 run summon armor_stand 0 0 0 {NoGravity:1,Marker:1,Tags:["worldgen", "bunker1"]}
execute if score random data matches 2 run summon armor_stand 0 0 0 {NoGravity:1,Marker:1,Tags:["worldgen", "bunker2"]}
execute if score random data matches 3 run summon armor_stand 0 0 0 {NoGravity:1,Marker:1,Tags:["worldgen", "henge"]}
execute if score random data matches 4 run summon armor_stand 0 0 0 {NoGravity:1,Marker:1,Tags:["worldgen", "ic"]}
execute if score random data matches 5 run summon armor_stand 0 0 0 {NoGravity:1,Marker:1,Tags:["worldgen", "mushroom"]}
execute if score random data matches 6 run summon armor_stand 0 0 0 {NoGravity:1,Marker:1,Tags:["worldgen", "pine"]}
execute if score random data matches 7 run summon armor_stand 0 0 0 {NoGravity:1,Marker:1,Tags:["worldgen", "sculpture"]}
execute if score random data matches 8 run summon armor_stand 0 0 0 {NoGravity:1,Marker:1,Tags:["worldgen", "shrine"]}
execute if score random data matches 9 run summon armor_stand 0 0 0 {NoGravity:1,Marker:1,Tags:["worldgen", "spire"]}
execute if score random data matches 10 run summon armor_stand 0 0 0 {NoGravity:1,Marker:1,Tags:["worldgen", "tornado"]}
execute if score random data matches 11 run summon armor_stand 0 0 0 {NoGravity:1,Marker:1,Tags:["worldgen", "tree"]}
execute if score random data matches 12 run summon armor_stand 0 0 0 {NoGravity:1,Marker:1,Tags:["worldgen", "vortex"]}
execute if score random data matches 13 run summon armor_stand 0 0 0 {NoGravity:1,Marker:1,Tags:["worldgen", "wifi"]}

# i is the variable of recursion
scoreboard players remove i data 1
scoreboard players set operand data 1
execute if score i data >= operand data run function cgi:engine/spawn_many_objects
