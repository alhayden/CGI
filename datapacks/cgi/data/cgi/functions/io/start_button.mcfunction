###############################
# Detect and run start button #
# > called from ioloop        #
###############################

# 0 1 100
execute at @a run playsound minecraft:block.note_block.chime master @s ~ ~ ~
scoreboard players set gameState data 1
tellraw @a [{"text":"[","color":"gray"},{"text":"CGI","color":"gold"},{"text":"] ","color":"gray"},{"text":"Generating Map...","color":"green"}]
