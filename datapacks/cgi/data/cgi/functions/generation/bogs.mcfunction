###############################
#                             #
# generates the "Bogs" map    #
###############################

function cgi:generation/flat
setblock -50 0 -50 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:bogs-1"}
setblock -18 0 -50 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:bogs-2"}
setblock 14 0 -50 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:bogs-3"}
setblock 46 0 -50 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:bogs-4"}
setblock -50 0 -18 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:bogs-5"}
setblock -18 0 -18 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:bogs-6"}
setblock 14 0 -18 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:bogs-7"}
setblock 46 0 -18 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:bogs-8"}
setblock -50 0 14 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:bogs-9"}
setblock -18 0 14 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:bogs-10"}
setblock 14 0 14 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:bogs-11"}
setblock 46 0 14 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:bogs-12"}
setblock -50 0 46 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:bogs-13"}
setblock -18 0 46 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:bogs-14"}
setblock 14 0 46 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:bogs-15"}

setblock 14 1 46 redstone_block
setblock -18 1 46 redstone_block
setblock -50 1 46 redstone_block
setblock 46 1 14 redstone_block
setblock 14 1 14 redstone_block
setblock -18 1 14 redstone_block
setblock -50 1 14 redstone_block
setblock 46 1 -18 redstone_block
setblock 14 1 -18 redstone_block
setblock -18 1 -18 redstone_block
setblock -50 1 -18 redstone_block
setblock 46 1 -50 redstone_block
setblock 14 1 -50 redstone_block
setblock -18 1 -50 redstone_block
setblock -50 1 -50 redstone_block
