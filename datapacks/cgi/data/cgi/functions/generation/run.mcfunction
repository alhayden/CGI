######################################
# run the terrain generation algorithm

function cgi:generation/clear

execute if score mapID data matches 0 run function cgi:generation/flat
execute if score mapID data matches 1 run function cgi:generation/procedural
execute if score mapID data matches 2 run function cgi:generation/island
execute if score mapID data matches 3 run function cgi:generation/ravine
execute if score mapID data matches 4 run function cgi:generation/crater
execute if score mapID data matches 5 run function cgi:generation/bogs
execute if score mapID data matches 6 run function cgi:generation/flat

