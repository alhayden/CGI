####################################
# Common map select function       #
# > called by all map type buttons #
####################################


execute if score mapID data matches 0 run title @a actionbar [{"text":"[","color":"gray"},{"text":"CGI","color":"gold"},{"text":"] ","color":"gray"},{"text":" Map set to ","color":"dark_green"},{"text":"Default/Flat","color":"green"}]
execute if score mapID data matches 1 run title @a actionbar [{"text":"[","color":"gray"},{"text":"CGI","color":"gold"},{"text":"] ","color":"gray"},{"text":" Map set to ","color":"dark_green"},{"text":"Procedurally Generated","color":"green"}]
execute if score mapID data matches 2 run title @a actionbar [{"text":"[","color":"gray"},{"text":"CGI","color":"gold"},{"text":"] ","color":"gray"},{"text":" Map set to ","color":"dark_green"},{"text":"Island","color":"green"}]
execute if score mapID data matches 3 run title @a actionbar [{"text":"[","color":"gray"},{"text":"CGI","color":"gold"},{"text":"] ","color":"gray"},{"text":" Map set to ","color":"dark_green"},{"text":"Ravine","color":"green"}]
execute if score mapID data matches 4 run title @a actionbar [{"text":"[","color":"gray"},{"text":"CGI","color":"gold"},{"text":"] ","color":"gray"},{"text":" Map set to ","color":"dark_green"},{"text":"Crater","color":"green"}]
execute if score mapID data matches 5 run title @a actionbar [{"text":"[","color":"gray"},{"text":"CGI","color":"gold"},{"text":"] ","color":"gray"},{"text":" Map set to ","color":"dark_green"},{"text":"Pyramid","color":"green"}]
execute if score mapID data matches 6 run title @a actionbar [{"text":"[","color":"gray"},{"text":"CGI","color":"gold"},{"text":"] ","color":"gray"},{"text":" Map set to ","color":"dark_green"},{"text":"Bogs","color":"green"}]

#playsound minecraft:ui.button.click master @a ~ ~ ~ 
setblock ~ ~ ~ minecraft:stone_button[facing=east,powered=false] replace

function cgi:generation/run
