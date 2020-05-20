###########################
# Virus powerup           #
# > called from powerloop #
###########################


scoreboard players set @s[tag=INITIALIZE_TIMER] status 0

execute as @s[scores={status=0}] run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 air replace #impermeable
execute as @s[scores={status=0}] run scoreboard players operation @s time = gameTime data
execute as @s[scores={status=0}] run scoreboard players add @s time 20
execute as @s[scores={status=0}] run scoreboard players set @s status 1

execute as @s[scores={status=1}] if score @s time <= gameTime data run scoreboard players add @s status 1

execute as @s[scores={status=2}] run fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 air replace #impermeable 
execute as @s[scores={status=2}] run scoreboard players operation @s time = gameTime data
execute as @s[scores={status=2}] run scoreboard players add @s time 10
execute as @s[scores={status=2}] run scoreboard players add @s status 1

execute as @s[scores={status=3}] if score @s time <= gameTime data run summon tnt ~ ~ ~
execute as @s[scores={status=3}] if score @s time <= gameTime data run kill @s
