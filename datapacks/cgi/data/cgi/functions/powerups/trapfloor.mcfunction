#############################################
# TrapFloor                                 #
# Arms, then breaks when player steps on it #
# > called from powerloop                   #
#############################################

scoreboard players add @s[tag=INITIALIZE_TIMER] time 100

# display armed state
execute if score @s time = gameTime data at @s run particle minecraft:witch ~ ~ ~ 0 0 0 0 1

execute at @s if entity @p[distance=..4,gamemode=!spectator] run tag @s[tag=!INITIALIZE_TIMER,tag=!triggered] add triggered

scoreboard players add @s[tag=triggered] status 1
execute if entity @s[scores={status=1}] at @s run playsound minecraft:block.stone_button.click_off master @a[distance=..9] ~ ~ ~
execute if entity @s[scores={status=11..}] at @s run fill ~2 ~-1 ~2 ~-2 0 ~-2 air replace #impermeable
kill @s[scores={status=11..}]
