############################
# BGP Ad                   #
# > called from powerlooop #
############################

scoreboard players set operand data 0
execute as @s unless score @s status >= operand data run scoreboard players set @s status 0

execute as @s[scores={status=0}] run playsound minecraft:entity.guardian.ambient_land player @a ~ ~ ~ 4
execute as @s[scores={status=0}] run particle flame ~ ~ ~ 0 6 0 0.00001 18 force
execute as @s[scores={status=0}] run scoreboard players operation @s time = gameTime data
execute as @s[scores={status=0}] run scoreboard players add @s time 40
execute as @s[scores={status=0}] run scoreboard players add @s status 1

execute as @s[scores={status=1}] if score @s time <= gameTime data run scoreboard players add @s status 1

execute as @s[scores={status=2}] at @s run teleport @e[type=player,sort=random,limit=1,gamemode=adventure] ~ ~ ~
execute as @s[scores={status=2}] run kill @s 
