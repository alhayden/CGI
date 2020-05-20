##########################
# io loop                #
# > called from gameloop #
##########################

### START BUTTON 
execute if block 0 1 100 minecraft:birch_button[powered=true] run function cgi:io/start_button

### DENSITY BUTTONS
execute positioned -19 1 100 if block ~ ~ ~ minecraft:oak_button[powered=true] run scoreboard players add structureCount data 5
execute positioned -19 1 100 if block ~ ~ ~ minecraft:oak_button[powered=true] run function cgi:io/density_button_common

execute positioned -17 1 100 if block ~ ~ ~ minecraft:oak_button[powered=true] run scoreboard players add structureCount data 1
execute positioned -17 1 100 if block ~ ~ ~ minecraft:oak_button[powered=true] run function cgi:io/density_button_common

execute positioned -15 1 100 if block ~ ~ ~ minecraft:oak_button[powered=true] run scoreboard players set structureCount data 75
execute positioned -15 1 100 if block ~ ~ ~ minecraft:oak_button[powered=true] run function cgi:io/density_button_common

execute positioned -13 1 100 if block ~ ~ ~ minecraft:oak_button[powered=true] run scoreboard players remove structureCount data 1
execute positioned -13 1 100 if block ~ ~ ~ minecraft:oak_button[powered=true] run function cgi:io/density_button_common

execute positioned -11 1 100 if block ~ ~ ~ minecraft:oak_button[powered=true] run scoreboard players remove structureCount data 5
execute positioned -11 1 100 if block ~ ~ ~ minecraft:oak_button[powered=true] run function cgi:io/density_button_common

### 3D BUTTONS
execute positioned -25 1 95 if block ~ ~ ~ minecraft:stone_button[powered=true] run scoreboard players set mapID data 0
execute positioned -25 1 95 if block ~ ~ ~ minecraft:stone_button[powered=true] run function cgi:io/map_button_common

execute positioned -25 1 94 if block ~ ~ ~ minecraft:stone_button[powered=true] run scoreboard players set mapID data 1
execute positioned -25 1 94 if block ~ ~ ~ minecraft:stone_button[powered=true] run function cgi:io/map_button_common

execute positioned -25 1 93 if block ~ ~ ~ minecraft:stone_button[powered=true] run scoreboard players set mapID data 2
execute positioned -25 1 93 if block ~ ~ ~ minecraft:stone_button[powered=true] run function cgi:io/map_button_common

execute positioned -25 1 92 if block ~ ~ ~ minecraft:stone_button[powered=true] run scoreboard players set mapID data 3
execute positioned -25 1 92 if block ~ ~ ~ minecraft:stone_button[powered=true] run function cgi:io/map_button_common

execute positioned -25 1 91 if block ~ ~ ~ minecraft:stone_button[powered=true] run scoreboard players set mapID data 4
execute positioned -25 1 91 if block ~ ~ ~ minecraft:stone_button[powered=true] run function cgi:io/map_button_common

execute positioned -25 1 90 if block ~ ~ ~ minecraft:stone_button[powered=true] run scoreboard players set mapID data 5
execute positioned -25 1 90 if block ~ ~ ~ minecraft:stone_button[powered=true] run function cgi:io/map_button_common

execute positioned -25 1 89 if block ~ ~ ~ minecraft:stone_button[powered=true] run scoreboard players set mapID data 6
execute positioned -25 1 89 if block ~ ~ ~ minecraft:stone_button[powered=true] run function cgi:io/map_button_common
