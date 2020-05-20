#############################################
# SPAWN                                     #
# > called from loop                        #
# state 2; 5s countdown to prepare for game #
#############################################

# 5s
execute if score gameTime data matches 100 run tellraw @a [{"text":"[","color":"gray"},{"text":"CGI","color":"gold"},{"text":"] ","color":"gray"},{"text":"Game Starting in 5 Seconds...","color":"green"}]
execute if score gameTime data matches 100 at @a run playsound minecraft:block.piston.contract voice @p ~ ~ ~

# 3s
execute if score gameTime data matches 60 at @a run playsound minecraft:entity.experience_orb.pickup voice @p ~ ~ ~
# 2s
execute if score gameTime data matches 40 at @a run playsound minecraft:entity.experience_orb.pickup voice @p ~ ~ ~
# 1s
execute if score gameTime data matches 20 at @a run playsound minecraft:entity.experience_orb.pickup voice @p ~ ~ ~

# 0s
execute if score gameTime data matches 0 at @a run playsound minecraft:entity.player.levelup voice @p ~ ~ ~
# clear box
execute if score gameTime data matches 0 at @a[tag=!Spectator] run fill ~1 ~ ~1 ~-1 ~2 ~-1 air replace barrier
# clear levitation
execute if score gameTime data matches 0 run effect clear @a minecraft:levitation

## move on
execute if score gameTime data matches 0 run scoreboard players set gameState data 3
## countdown
scoreboard players remove gameTime data 1
