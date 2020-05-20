##############################
#                            #
# generates the "Crater" map #
##############################

function cgi:generation/flat
setblock -35 0 -42 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:c-1"}
setblock -3 0 -42 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:c-2"}
setblock 29 0 -42 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:c-3"}
setblock -35 0 -10 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:c-4"}
setblock -3 0 -10 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:c-5"}
setblock 29 0 -10 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:c-6"}
setblock -35 0 22 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:c-7"}
setblock -3 0 22 minecraft:structure_block{mode:'LOAD',posY:0,posX:0,posZ:0,name:"cgi:c-8"}

setblock -3 1 22 redstone_block
setblock -35 1 22 redstone_block
setblock 29 1 -10 redstone_block
setblock -3 1 -10 redstone_block
setblock -35 1 -10 redstone_block
setblock 29 1 -42 redstone_block
setblock -3 1 -42 redstone_block
setblock -35 1 -42 redstone_block
