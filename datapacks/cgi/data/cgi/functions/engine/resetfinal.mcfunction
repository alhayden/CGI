## Run-once reset helper

## remove this?
#fill -50 0 -50 50 1 50 blue_stained_glass
#fill -50 2 -50 50 2 50 blue_stained_glass
fill -50 255 -50 50 255 50 air
function cgi:generation/run
gamemode adventure @a
team join players @a
tp @a 0 2 85
clear @a
kill @e[x=-50,z=-50,y=-20,dx=100,dz=100,dy=53,type=!player]

