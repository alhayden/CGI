###########################
# save backup file data   #
# > called from powerloop #
###########################

execute at @s run tag @p[scores={useEndermite=1..}] add BACKUPSAVER

# kill old save
execute as @e[type=armor_stand,name="BackupLocation"] run scoreboard players operation @s data = @s status
execute as @e[type=armor_stand,name="BackupLocation"] run scoreboard players operation @s data -= @p[tag=BACKUPSAVER] UID
kill @e[type=armor_stand,name="BackupLocation",scores={data=0}]

# generate new save
execute at @a[gamemode=adventure] run summon armor_stand ~ ~ ~ {CustomName:"\"BackupLocation\"",NoGravity:1b,Small:1b,Marker:1b,Invisible:1b}
scoreboard players operation @e[type=armor_stand,name="BackupLocation",tag=!setup] status = @p[tag=BACKUPSAVER] UID
execute as @e[type=armor_stand,name="BackupLocation",tag=!setup] at @s run scoreboard players operation @s UID = @p[gamemode=adventure] UID

title @a actionbar [{"selector":"@p[tag=BACKUPSAVER]","color":"yellow"},{"text":" saved a backup!","color":"white"}]

tag @e[type=armor_stand,name="BackupLocation",tag=!setup] add setup
scoreboard players set @p[tag=BACKUPSAVER] useEndermite 0
tag @p[tag=BACKUPSAVER] remove BACKUPSAVER

execute at @s run summon item ~ ~ ~ {Item:{id:carrot_on_a_stick,Count:1,display:{Name:"{\"text\":\"Load Backup File\",\"italic\":\"false\"}",Lore:["It is unlikely that using this device", " will cause runaway temporal", "dilation to destroy the known", "universe, but user caution is advised"]},Enchantments:[{id:"protection",lvl:0}]},CustomName:"\"Power-BackupFile\""}
#execute at @s run summon item ~ ~ ~ {Item:{id:endermite_spawn_egg,Count:1,tag:{EntityTag:{id:armor_stand,CustomName:"\"LoadBackupFile\"",Invisible:1b,Small:1b,NoGravity:1b,Marker:1b},display:{Name:"{\"text\":\"Load Backup File\",\"italic\":\"false\"}",Lore:["It is unlikely that using this device", " will cause runaway temporal", "dilation to destroy the known", "universe, but user caution is advised"]},CanPlaceOn:["#impermeable"],HideFlags:16,Enchantments:[{id:"protection",lvl:0}]}},CustomName:"\"Power-BackupFile\""}

kill @s
