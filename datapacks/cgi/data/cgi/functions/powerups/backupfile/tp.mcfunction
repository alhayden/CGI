##################################
# Backup file teleport           #
# > called from backup_load      #
##################################

scoreboard players operation @e[type=armor_stand,name="BackupLocation",tag=ACTIVE_BACKUP] data = @s UID
execute as @e[type=armor_stand,name="BackupLocation",tag=ACTIVE_BACKUP] run scoreboard players operation @s data -= @s UID

execute at @e[type=armor_stand,name="BackupLocation",tag=ACTIVE_BACKUP,limit=1,scores={data=0}] run tp @s ~ ~ ~
