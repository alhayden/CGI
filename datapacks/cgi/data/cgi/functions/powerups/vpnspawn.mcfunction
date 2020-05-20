

fill ~-5 0 ~-5 ~5 ~5 ~5 air replace redstone_torch
fill ~-5 0 ~-5 ~5 ~5 ~5 air replace redstone_wall_torch
summon armor_stand ~ ~ ~ {CustomName:"\"VPN\"",Invisible:1b,Small:1b,NoGravity:1b,Marker:1b}
playsound minecraft:item.flintandsteel.use player @a ~ ~ ~

tp @e[type=armor_stand,name=VPN,limit=1,sort=nearest] ~ ~ ~ ~ 0
execute as @e[type=armor_stand,name=VPN,limit=1,sort=nearest] at @s run tp @s ^ ^ ^1
scoreboard players set @p[scores={UseRedTorch=1..}] UseRedTorch 0
