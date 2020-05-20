# For the multi-gamemode UI
# gamemode adventure @a[gamemode=spectator,x_rotation=90]
# gamemode spectator @a[gamemode=adventure,x_rotation=..89]

# for the basic pulling thing:

# start a looking down timer
execute as @a[gamemode=spectator,x_rotation=80..90] unless score @s time matches 0.. run tag @s add new_spectator_timer
execute as @a[tag=new_spectator_timer] run scoreboard players operation @s time = gameTime data
execute as @a[tag=new_spectator_timer] run scoreboard players add @s time 20
execute as @a[tag=new_spectator_timer] run tag @s remove new_spectator_timer
