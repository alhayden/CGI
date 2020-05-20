####################################
# reset highlighted blocks to blue #
# > called from player?            #
####################################
execute as @e[type=armor_stand,name=VoltageDrop] run scoreboard players operation @s data = @s UID
scoreboard players operation @e[type=armor_stand,name=VoltageDrop] data -= @s UID
# reminder, when adding map colors, change this
execute at @e[type=armor_stand,name=VoltageDrop,scores={data=0}] run fill ~-2 0 ~-2 ~2 30 ~2 blue_stained_glass replace #impermeable
kill @e[type=armor_stand,name=VoltageDrop,scores={data=0}] 

#execute as @e[type=armor_stand,name=VoltageDrop] at @s if score @s VoltageDropID = @p VoltageDropID run fill ~-2 0 ~-2 ~2 200 ~2 blue_stained_glass replace #impermeable
#execute as @e[type=armor_stand,name=VoltageDrop] if score @s VoltageDropID = @p VoltageDropID run kill @s
tag @s remove UsingVD
