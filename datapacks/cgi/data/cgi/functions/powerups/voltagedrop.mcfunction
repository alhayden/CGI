###########################
# Voltage Drop            #
# > called from powerloop #
###########################

# known issues
# raycasting is iffy, sometimes off by a few blocks
# if player is looking into the void, the armor stand remains above their head, and they will destroy the blocks underneath themselves upon use (feature, perhaps?)
# range is too wide (5x5) plus no reaction time for opponents <== should definitely add
# uses too many scoreboard values
# changes colors of stained glass on side of map (although once again, not inherently a bug...)


execute as @a[scores={dropStoneSword=1}] at @s run function cgi:powerups/vdhelper/strike
scoreboard players set @a dropStoneSword 0

scoreboard players set operand data 0
scoreboard players set @a status 0


# can check nbt in selectors, don't need to use status objective
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:stone_sword"}}] status 1
execute as @a[scores={status=0}] at @s run function cgi:powerups/vdhelper/reset
## added this to make it raycast from the eyes, not the feet. *supposed* to be able to use "anchored eyes," but that doesn't seem to be working :( -A 1/23
execute as @a[scores={status=1}] at @s positioned ~ ~1.675 ~ run function cgi:powerups/vdhelper/player

# If any players have already used the powerup, summon the armor stand that fills the stuff with air
kill @e[type=armor_stand,name=VDFill,y=-10,dy=9,x=-50,dx=100,z=-50,dz=100] 
execute as @e[type=armor_stand,name=VDFill,y=0,dy=3,x=-50,dx=100,z=-50,dz=100] at @s run summon lightning_bolt ~ 0 ~
execute as @e[type=armor_stand,name=VDFill] at @s run playsound minecraft:entity.experience_orb.pickup player @a
execute as @e[type=armor_stand,name=VDFill] at @s run fill ~-2 ~ ~-2 ~2 30 ~2 air replace #impermeable
execute as @e[type=armor_stand,name=VDFill] at @s run tp @s ~ ~-1 ~
