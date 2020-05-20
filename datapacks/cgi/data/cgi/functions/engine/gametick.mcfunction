################################################
# Run game processes during ingame and endgame #
# > called from ingame and endgame             #
################################################

# people die
execute at @a[x=-55,y=-10,z=-55,dx=110,dy=6,dz=110,gamemode=adventure] run particle minecraft:happy_villager ~ ~2 ~ 0.2 2 0.2 1 250 force
execute as @a[x=-55,y=-10,z=-55,dx=110,dy=6,dz=110,gamemode=adventure] at @s run tellraw @a [{"text":"[","color":"gray"},{"text":"CGI","color":"gold"},{"text":"] ","color":"gray"},{"selector":"@p","color":"dark_green"},{"text":" Lost Connection","color":"green"}]
gamemode spectator @a[x=-55,y=-10,z=-55,dx=110,dy=6,dz=110,gamemode=adventure]
execute at @a[x=-55,y=-10,z=-55,dx=110,dy=-50,dz=110] run tp @p ~ ~20 ~

# count up
scoreboard players add gameTime data 1

# run powerups
function cgi:powerups/powerloop

# spawn powerups?
function cgi:powerups/powerspawn

# particles around powerups
function cgi:powerups/particles
