#########################################
# break blocks when player uses powerup #
# > called from player?                 #
#########################################

execute as @e[type=armor_stand,name=VoltageDrop] run scoreboard players operation @s data = @s UID
scoreboard players operation @e[type=armor_stand,name=VoltageDrop] data -= @s UID
tag @e[type=armor_stand,name=VoltageDrop,scores={data=0}] add Strikeable
kill @e[type=item,nbt={Item:{id:"minecraft:stone_sword"}},sort=nearest,limit=1]

#execute as @e[type=armor_stand,] if score @s VoltageDropID = @p VoltageDropID run tag @s add Strikeable
#execute as @e[type=armor_stand,tag=Strikeable,name=VoltageDrop] at @s run summon lightning_bolt ~ 0 ~
#execute as @e[type=armor_stand,tag=Strikeable,name=VoltageDrop] at @s run summon lightning_bolt ~ 0 ~
#execute as @e[type=armor_stand,tag=Strikeable,name=VoltageDrop] at @s run summon lightning_bolt ~ 0 ~
#execute as @e[type=armor_stand,tag=Strikeable,name=VoltageDrop] at @s run fill ~-2 0 ~-2 ~2 30 ~2 air replace #impermeable
execute as @e[type=armor_stand,tag=Strikeable,name=VoltageDrop] at @s run fill ~-2 0 ~-2 ~2 30 ~2 yellow_stained_glass replace #impermeable
execute as @e[type=armor_stand,tag=Strikeable,name=VoltageDrop] at @s run summon armor_stand ~ 30 ~ {CustomName:"\"VDFill\"",Invisible:1b,Small:1b,NoGravity:1b,Marker:1b}

#scoreboard players set operand data 0
kill @e[type=armor_stand,tag=Strikeable,name=VoltageDrop]

