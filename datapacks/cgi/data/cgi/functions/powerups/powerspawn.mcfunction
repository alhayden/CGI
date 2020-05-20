########################################
# Handle the spawning of powerup items #
# > Called from gametick               #
########################################


# probability = 1 in (400 / playerCount)

function cgi:misc/ensure_rng
function cgi:misc/rng
## TODO set to 400
scoreboard players set operand data 150
scoreboard players operation operand data /= playerCount data
scoreboard players operation random data %= operand data

#scoreboard players set i data 0
#execute as @e[type=item,x=-50,z=-50,y=0,dx=101,dz=101,dy=100] run scoreboard players add i data 1
#scoreboard players set operand data 3
#scoreboard players operation operand data *= playerCount data

execute if score random data matches 0 run summon minecraft:armor_stand 0 100 0 {CustomName:"\"powerSpawner\"",NoGravity:1b,Invisible:1b,Marker:1b,Small:1b}
spreadplayers 0 0 10 49 false @e[type=armor_stand,name=powerSpawner]
execute as @e[type=armor_stand,name=powerSpawner] at @s run function cgi:powerups/powersummon

kill @e[type=armor_stand,name=powerSpawner]
