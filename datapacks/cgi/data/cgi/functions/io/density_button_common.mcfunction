###################################
# Common map density function     #
# > called by all density buttons #
###################################

scoreboard players set operand data 0
execute if score structureCount data <= operand data run scoreboard players set structureCount data 0
scoreboard players set operand data 1000
execute if score structureCount data >= operand data run scoreboard players set structureCount data 1000
tellraw @a [{"text":"[","color":"gray"},{"text":"CGI","color":"gold"},{"text":"] ","color":"gray"},{"text":" Map Density set to ","color":"dark_purple"},{"score":{"objective":"data","name":"structureCount"},"color":"light_purple"},{"text":" objects","color":"dark_purple"}]

playsound minecraft:ui.button.click master @a ~ ~ ~ 
setblock ~ ~ ~ minecraft:oak_button[facing=north,powered=false] replace
