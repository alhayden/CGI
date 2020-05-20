###########################
# load backup data        #
# > called from powerloop #
###########################

#TODO add delay or stop player motion?

execute as @e[type=armor_stand,name="BackupLocation"] run scoreboard players operation @s data = @s status

scoreboard players operation @e[type=armor_stand,name="BackupLocation"] data -= @s UID

tag @e[type=armor_stand,name="BackupLocation",scores={data=0}] add ACTIVE_BACKUP

execute as @a[gamemode=adventure] run function cgi:powerups/backupfile/tp

execute at @a[gamemode=adventure] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 blue_stained_glass
execute at @a run playsound minecraft:item.chorus_fruit.teleport master @a ~ ~ ~
title @a actionbar [{"selector":"@s","color":"yellow"},{"text":" loaded a backup!","color":"white"}]

tag @e[type=armor_stand,name="BackupLocation",tag=ACTIVE_BACKUP] remove ACTIVE_BACKUP

execute as @a[scores={UsedCarrotStick=1..}] if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:0}}}] run replaceitem entity @s weapon.mainhand air
execute as @a[scores={UsedCarrotStick=1..}] if entity @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:0}}}] if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{Damage:0},Slot:-106}]}] run replaceitem entity @s weapon.mainhand air

scoreboard players set @s UsedCarrotStick 0
