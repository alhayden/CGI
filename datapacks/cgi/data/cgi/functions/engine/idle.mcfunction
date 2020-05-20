###################################
# IDLE                            #
# > called from loop              #
# state 0,rRun while game is idle #
###################################

# handle people who logged out during a game
tp @a[gamemode=spectator] 0 10 0
clear @a[x=-50,y=0,z=-50,dx=100,dy=100,dz=100]
gamemode adventure @a[x=-50,y=0,z=-50,dx=100,dy=100,dz=100,gamemode=!adventure]
tp @a[x=-50,y=0,z=-50,dx=100,dy=100,dz=100] 0 1 85

# players in lobby can't punch each other
team join Players @a[x=-25,y=0,z=75,dx=50,dy=10,dz=25,gamemode=adventure,team=!players]

# kill items in arena
kill @e[type=item,x=-50,y=0,z=-50,dx=100,dy=100,dz=100]

# handle buttons & ui
function cgi:ui/loop
