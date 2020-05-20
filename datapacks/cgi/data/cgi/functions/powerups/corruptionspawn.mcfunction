summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"Corruption\"", Invisible:1b,Small:1b,NoGravity:1b,Marker:1b,Tags:["INITIALIZE_TIMER"]}

scoreboard players set @p[scores={UsePearl=1..}] UsePearl 0
kill @e[type=ender_pearl,limit=1]
