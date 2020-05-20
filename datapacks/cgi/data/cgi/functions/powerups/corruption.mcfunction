##########################
#
#
##########################

#spreadplayers ~ ~ 1 1 false @s
#execute at @s run fill ~-1 ~-1 ~-1 ~1 ~ ~1 air replace #impermeable
#execute at @s run fill ~ -1 ~ ~ ~ ~ air replace #impermeable

#execute at @s facing entity @p eyes positioned ^ ^ ^1 run tp @s ~ ~ ~
#execute at @s run fill ~-1 ~-1 ~-1 ~1 ~ ~1 air replace #impermeable
#execute at @s run fill ~ 0 ~ ~ ~ ~ air replace #impermeable


#todo: particle, clear, more sound effects, terraform


#summon armor_stand ~ ~ ~ {CustomName:"\"Corruption\"",Invisible:1b,Small:1b,NoGravity:1b,Marker:1b}
#scoreboard players set @e[tag=INITIALIZE_TIMER] status 0

#playsound minecraft:item.flintandsteel.use player @a ~ ~ ~
#scoreboard players set @s[tag=INITIALIZE_TIMER] status 0
#
#
#execute as @s[scores={status=0}] run title @a actionbar ["",{"text":"Warning: ","color":"gold"},{"text":"never","obfuscated":true,"color":"gold"},{"text":" gonna","obfuscated":true,"color":"gold"},{"text":" give","obfuscated":true,"color":"gold"},{"text":" you","obfuscated":true,"color":"gold"},{"text":" up","obfuscated":true,"color":"gold"}]
#execute as @s[scores={status=0}] run clear @a ender_pearl
#execute as @s[scores={status=0}] run playsound minecraft:block.note_block.bit ambient @a ~ ~ ~ 50000 1.7
#execute as @s[scores={status=0}] run playsound minecraft:block.note_block.bit ambient @a ~ ~ ~ 50000 0.95
#execute as @s[scores={status=0}] run playsound minecraft:block.note_block.bit ambient @a ~ ~ ~ 50000 0.7
#execute as @s[scores={status=0}] run scoreboard players operation @s time = gameTime data
#execute as @s[scores={status=0}] run scoreboard players add @s time 20
#execute as @s[scores={status=0}] run scoreboard players set @s status 1
#execute as @s[scores={status=1}] if score @s time <= gameTime data run scoreboard players add @s status 1
#
#execute as @s[scores={status=2}] run playsound minecraft:block.note_block.bit ambient @a ~ ~ ~ 50000 0.85
#execute as @s[scores={status=2}] run scoreboard players operation @s time = gameTime data
#execute as @s[scores={status=2}] run scoreboard players add @s time 5
#execute as @s[scores={status=2}] run scoreboard players set @s status 3
#execute as @s[scores={status=3}] if score @s time <= gameTime data run scoreboard players add @s status 1
#
#execute as @s[scores={status=4}] run playsound minecraft:block.note_block.bit ambient @a ~ ~ ~ 50000 1.25
#execute as @s[scores={status=4}] run scoreboard players operation @s time = gameTime data
#execute as @s[scores={status=4}] run scoreboard players add @s time 8
#execute as @s[scores={status=4}] run scoreboard players set @s status 5
#execute as @s[scores={status=5}] if score @s time <= gameTime data run scoreboard players add @s status 1
#
#execute as @s[scores={status=6}] run playsound minecraft:block.note_block.bit ambient @a ~ ~ ~ 50000 1.1
#execute as @s[scores={status=6}] run playsound minecraft:block.note_block.bit ambient @a ~ ~ ~ 50000 0.56
#execute as @s[scores={status=6}] run playsound minecraft:block.note_block.bit ambient @a ~ ~ ~ 50000 0.85
#execute as @s[scores={status=6}] run scoreboard players operation @s time = gameTime data
#execute as @s[scores={status=6}] run scoreboard players add @s time 15
#execute as @s[scores={status=6}] run scoreboard players set @s status 7
#execute as @s[scores={status=7}] if score @s time <= gameTime data run scoreboard players add @s status 1
#
#execute as @s[scores={status=8}] run playsound minecraft:block.note_block.bit ambient @a ~ ~ ~ 50000 0.85
#execute as @s[scores={status=8}] run scoreboard players operation @s time = gameTime data
#execute as @s[scores={status=8}] run scoreboard players add @s time 10
#execute as @s[scores={status=8}] run scoreboard players set @s status 9
#execute as @s[scores={status=9}] if score @s time <= gameTime data run scoreboard players add @s status 1
#
#execute as @s[scores={status=10}] run playsound minecraft:block.note_block.bit ambient @a ~ ~ ~ 50000 1.7
#execute as @s[scores={status=10}] run scoreboard players operation @s time = gameTime data
#execute as @s[scores={status=10}] run scoreboard players add @s time 53
#execute as @s[scores={status=10}] run scoreboard players set @s status 11
#execute as @s[scores={status=11}] if score @s time <= gameTime data run scoreboard players add @s status 1
#
#execute as @s[scores={status=12}] run playsound minecraft:block.note_block.bit ambient @a ~ ~ ~ 50000 1.25
#execute as @s[scores={status=12}] run playsound minecraft:block.note_block.bit ambient @a ~ ~ ~ 50000 0.85
#execute as @s[scores={status=12}] run playsound minecraft:block.note_block.bit ambient @a ~ ~ ~ 50000 0.63
#execute as @s[scores={status=12}] run scoreboard players operation @s time = gameTime data
#execute as @s[scores={status=12}] run scoreboard players add @s time 7
#execute as @s[scores={status=12}] run scoreboard players set @s status 13
#execute as @s[scores={status=13}] if score @s time <= gameTime data run scoreboard players add @s status 1
#
#execute as @s[scores={status=14}] run execute as @a at @s run summon tnt ~ ~-1 ~ 
#execute as @s[scores={status=14}] run execute as @a at @s run summon tnt ~ ~-1 ~ 
#execute as @s[scores={status=14}] run execute as @a at @s run summon tnt ~ ~-1 ~ 
#execute as @s[scores={status=14}] run execute as @a at @s run summon tnt ~ ~-1 ~ 
#execute as @s[scores={status=14}] run execute as @a at @s run summon tnt ~ ~-1 ~ 
#execute as @s[scores={status=14}] run clear @a
#execute as @s[scores={status=14}] run scoreboard players operation @s time = gameTime data
#execute as @s[scores={status=14}] run scoreboard players add @s time 30
#execute as @s[scores={status=14}] run scoreboard players set @s status 15
#execute as @s[scores={status=15}] if score @s time <= gameTime data run scoreboard players add @s status 1
#
#execute as @s[scores={status=16}] run title @a actionbar {"text":"Shutting down...","color":"yellow"}
#execute as @s[scores={status=16}] run effect give @a blindness 60 1
#execute as @s[scores={status=16}] run effect give @a glowing 60 1
#execute as @s[scores={status=16}] run scoreboard players operation @s time = gameTime data
#execute as @s[scores={status=16}] run scoreboard players add @s time 32
#execute as @s[scores={status=16}] run scoreboard players set @s status 17
#execute as @s[scores={status=17}] if score @s time <= gameTime data run scoreboard players add @s status 1
#
#execute as @s[scores={status=18}] run kill @s
#tp @e[type=armor_stand,name=VPN,limit=1,sort=nearest] ~ ~ ~ ~ 0
#execute as @e[type=armor_stand,name=VPN,limit=1,sort=nearest] at @s run tp @s ^ ^ ^1



