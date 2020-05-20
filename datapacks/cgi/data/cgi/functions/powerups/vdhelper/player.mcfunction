#############################
# ????                      #
# > called from voltagedrop #
#############################

execute as @s[tag=!UsingVD] at @s run summon armor_stand ~ ~ ~ {CustomName:"\"VoltageDrop\"",Invisible:1b,Small:1b,NoGravity:1b,Marker:1b,Tags:["INIT"]}
scoreboard players operation @e[limit=1,name=VoltageDrop,tag=INIT] UID = @s[tag=!UsingVD] UID
tag @e[limit=1,name=VoltageDrop,tag=INIT] remove INIT
#execute as @e[type=armor_stand,name=VoltageDrop] unless score @s VoltageDropID >= operand data run scoreboard players operation @s VoltageDropID = random data
execute as @s[tag=!UsingVD] run tag @s add UsingVD

#player will have tag by now

#execute as @e[type=armor_stand,name=VoltageDrop] if score @s UID = @s VoltageDropID run tag @s add Movable
execute as @e[type=armor_stand,name=VoltageDrop] run scoreboard players operation @s data = @s UID
scoreboard players operation @e[type=armor_stand,name=VoltageDrop] data -= @s UID
tag @e[type=armor_stand,name=VoltageDrop,scores={data=0}] add Movable

execute as @e[type=armor_stand,tag=Movable,name=VoltageDrop] at @s run fill ~-2 0 ~-2 ~2 50 ~2 blue_stained_glass replace #impermeable
#execute as @e[type=armor_stand,tag=Movable,name=VoltageDrop] run say here
tp @e[type=armor_stand,tag=Movable,name=VoltageDrop] ~ ~1 ~
function cgi:powerups/vdhelper/raycast
tag @e[type=armor_stand,tag=Movable,name=VoltageDrop] remove Movable
