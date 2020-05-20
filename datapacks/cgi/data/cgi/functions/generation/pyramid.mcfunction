###############################
#                             #
# generates the "Pyramid" map #
###############################

function cgi:generation/flat
setblock -41 0 -41 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:p-1"}
setblock -9 0 -41 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:p-2"}
setblock 23 0 -41 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:p-3"}
setblock -41 0 -9 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:p-4"}
setblock -9 0 -9 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:p-5"}
setblock 23 0 -9 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:p-6"}
setblock -41 0 23 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:p-7"}
setblock -9 0 23 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:p-8"}
setblock 23 0 23 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:p-9"}

setblock 23 1 23 redstone_block
setblock -9 1 23 redstone_block
setblock -41 1 23 redstone_block
setblock 23 1 -9 redstone_block
setblock -9 1 -9 redstone_block
setblock -41 1 -9 redstone_block
setblock 23 1 -41 redstone_block
setblock -9 1 -41 redstone_block
setblock -41 1 -41 redstone_block
