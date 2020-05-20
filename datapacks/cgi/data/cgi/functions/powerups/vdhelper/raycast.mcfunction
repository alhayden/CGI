########################################
# Raycast from player to facing block  #
# > called from player                 #
########################################

#this is not useless dont delete thanks
execute unless block ~ ~ ~ air run execute if entity @s[x=-48,y=0,z=-48,dx=97,dy=100,dz=97] run tp @e[tag=Movable] ~ ~ ~
execute unless block ~ ~ ~ air run execute if entity @s[x=-48,y=0,z=-48,dx=97,dy=100,dz=97] run fill ~-2 0 ~-2 ~2 30 ~2 orange_stained_glass replace #impermeable
execute if block ~ ~ ~ air run execute if entity @s[x=-48,y=0,z=-48,dx=97,dy=100,dz=97] positioned ^ ^ ^1 run function cgi:powerups/vdhelper/raycast


#execute unless block ~ ~ ~ air run tp @e[tag=Movable] ~ ~ ~
#execute unless entity @s[x=-48,y=0,z=-48,dx=97,dy=100,dz=97] run tp @e[tag=Movable] ~ ~ ~
#execute unless block ~ ~ ~ air run fill ~-2 0 ~-2 ~2 30 ~2 orange_stained_glass replace #impermeable
#execute unless entity @s[x=-48,y=0,z=-48,dx=97,dy=100,dz=97] run fill ~-2 0 ~-2 ~2 30 ~2 orange_stained_glass replace #impermeable
#execute if block ~ ~ ~ air run execute if entity @s[x=-48,y=0,z=-48,dx=97,dy=100,dz=97] run say hi 
#execute if entity @s[x=-48,y=0,z=-48,dx=97,dy=100,dz=97] run say pos
#execute if block ~ ~ ~ air run say air
#execute if block ~ ~ ~ air run execute if entity @s[x=-48,y=0,z=-48,dx=97,dy=100,dz=97] positioned ^ ^ ^1 run function cgi:powerups/vdhelper/raycast


#execute unless block ~ ~ ~ air run execute if entity @s[x=-48,y=0,z=-48,dx=97,dy=100,dz=97] run tp @e[tag=Movable] ~ ~ ~
#position

#execute unless block ~ ~ ~ air run execute unless entity @s[x=-48,y=0,z=-48,dx=97,dy=100,dz=97] run tp @e[tag=Movable] ^ ^ ^-3

#execute unless block ~ ~ ~ air run execute if entity @s[x=-48,y=0,z=-48,dx=97,dy=100,dz=97] run fill ~-2 0 ~-2 ~2 30 ~2 orange_stained_glass replace #impermeable
#execute unless block ~ ~ ~ air run execute unless entity @s[x=-48,y=0,z=-48,dx=97,dy=100,dz=97] run execute positioned ^ ^ ^-3 run fill ~-2 0 ~-2 ~2 30 ~2 orange_stained_glass replace #impermeable

#execute if block ~ ~ ~ air run execute if entity @s[x=-48,y=0,z=-48,dx=97,dy=100,dz=97] positioned ^ ^ ^1 run function cgi:powerups/vdhelper/raycast

