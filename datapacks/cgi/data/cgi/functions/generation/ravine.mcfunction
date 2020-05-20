##############################
#                            #
# generates the "Ravine" map #
##############################

function cgi:generation/flat
setblock -50 0 -50 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:r-1"}
setblock -27 0 -30 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:r-2"}
setblock -7 0 -8 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:r-3"}
setblock 19 0 16 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:r-4"}
setblock 38 0 48 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:r-5"}

setblock 38 1 48 redstone_block
setblock 19 1 16 redstone_block
setblock -7 1 -8 redstone_block
setblock -27 1 -30 redstone_block
setblock -50 1 -50 redstone_block
