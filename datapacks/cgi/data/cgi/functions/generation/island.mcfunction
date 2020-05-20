##############################
#                            #
# generates the "Island" map #
##############################

function cgi:generation/flat
setblock -35 0 -26 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:i-1"}
setblock -3 0 -26 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:i-2"}
setblock -35 0 6 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:i-3"}
setblock -3 0 6 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:i-4"}

setblock -35 1 -26 redstone_block
setblock -3 1 -26 redstone_block
setblock -35 1 6 redstone_block
setblock -3 1 6 redstone_block
