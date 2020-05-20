## prevent players from breaking stuff

## no going out the bottom of the world
tp @a[x=-1000000,z=-1000000,y=-30,dx=2000000,dz=2000000,dy=-30] 0 10 0

## no items in lobby
clear @a[x=-25,y=0,z=75,dx=50,dy=10,dz=25,gamemode=adventure]
## no potions in lobby
effect clear @a[x=-25,y=0,z=75,dx=50,dy=10,dz=25,gamemode=adventure] speed
effect clear @a[x=-25,y=0,z=75,dx=50,dy=10,dz=25,gamemode=adventure] jump_boost

## TODO MAKE BUILD HEIGHT BIGGER????

## enforce build limit
fill -50 31 -50 50 32 50 air
fill -50 33 -50 50 34 50 air
