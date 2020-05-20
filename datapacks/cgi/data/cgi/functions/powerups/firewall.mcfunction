############################
# Firewall powerup         #
# > called from powerloop  #
############################

scoreboard players add @s status 1
tp @s ^ ^ ^1
#summon minecraft:falling_block ~ ~2 ~ {Time:1,BlockState:{Name:"blue_stained_glass"}}
#summon minecraft:falling_block ~ ~3 ~ {Time:1,BlockState:{Name:"blue_stained_glass"}}
#summon minecraft:falling_block ~ ~4 ~ {Time:1,BlockState:{Name:"blue_stained_glass"}}
execute if entity @s[x=-51,y=0,z=-51,dx=101,dy=100,dz=101] run fill ~ ~ ~ ~ ~2 ~ blue_stained_glass replace air
execute if entity @s[x=-51,y=0,z=-51,dx=101,dy=100,dz=101] run particle flame ~ ~2 ~ 0 0.5 0 0.0001 16
kill @s[scores={status=20..}]
