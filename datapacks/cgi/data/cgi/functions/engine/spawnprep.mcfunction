############################
# SPAWNPREP                #
# > called from generating #
# run once before `spawn`  #
############################

# spread players and put in boxes
spreadplayers 0 0 20 46 false @a[tag=!Spectator]
execute at @a[tag=!Spectator] run tp @p ~ ~16 ~ ~ 90
execute at @a[tag=!Spectator] run fill ~-1 ~ ~-1 ~1 ~ ~1 barrier replace air
execute at @a[tag=!Spectator] run fill ~ ~2 ~ ~ ~2 ~ barrier replace air
gamemode spectator @a[tag=Spectator,gamemode=!spectator]
team leave @a[team=players]
execute as @a run function cgi:misc/generateuid
scoreboard players set gameTime data 100
