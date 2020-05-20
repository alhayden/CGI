############################
# VPN powerup              #
# > called from powerloop  #
############################

scoreboard players add @s status 1
tp @s ^ ^ ^1
execute if entity @s[x=-50,y=0,z=-50,dx=100,dy=100,dz=100] run tp @p[distance=..2,gamemode=!spectator] ~ ~ ~
execute if entity @s[x=-51,y=0,z=-51,dx=101,dy=100,dz=101] run fill ~ ~-1 ~ ~ ~-1 ~ blue_stained_glass replace air
execute if entity @s[x=-51,y=0,z=-51,dx=101,dy=100,dz=101] align x align y align z positioned ~0.5 ~ ~0.5 run particle block water ~ ~ ~ 0.2 0 0.2 0 10

execute if entity @s[scores={status=32..}] at @p[distance=..2,gamemode=!spectator] positioned ~ ~1 ~ run fill ~ ~ ~ ~ ~ ~ air replace #impermeable
kill @s[scores={status=32..}]
