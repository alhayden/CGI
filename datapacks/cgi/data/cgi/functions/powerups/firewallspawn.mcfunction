

fill ~-5 0 ~-5 ~5 ~5 ~5 air replace torch
fill ~-5 0 ~-5 ~5 ~5 ~5 air replace wall_torch
summon armor_stand ~ ~ ~ {CustomName:"\"Firewall\"",Invisible:1b,Small:1b,NoGravity:1b,Marker:1b}
playsound minecraft:item.flintandsteel.use player @a ~ ~ ~


tp @e[type=armor_stand,name=Firewall,limit=1,sort=nearest] ~ ~ ~ ~ 0
execute as @e[type=armor_stand,name=Firewall,limit=1,sort=nearest] at @s run tp @s ^ ^ ^2
scoreboard players set @a[scores={UseFire=1..}] UseFire 0
