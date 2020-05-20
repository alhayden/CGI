##############################################################################
# generates "terrainBase" armor stands every-other block of the map at level 0
#


#### /summon minecraft:armor_stand -48.5 2.00 -48.5 {NoGravity:1b,CustomName:"\"generateStands\""}

execute at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,CustomName:"\"terrainBase\"",Invisible:1b}
tp @s ~2 ~ ~
execute if entity @s[x=52,dx=1,y=0,dy=3,z=-52,dz=103] at @s run tp @s ~-102 ~ ~2
execute unless entity @s[x=-51,dx=103,y=0,dy=3,z=52,dz=1] at @s run function cgi:generation/makestands
execute if entity @s[x=-51,dx=103,y=0,dy=3,z=52,dz=1] run kill @s

