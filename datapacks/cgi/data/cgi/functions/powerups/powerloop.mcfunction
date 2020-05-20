######################################################
# runs every tick, searches for mobs to run powerups #
# > called from gametick                             #
######################################################

## initialize timers
scoreboard players operation @e[tag=INITIALIZE_TIMER] time = gameTime data

# virus
execute as @e[type=armor_stand,name=Virus] at @s if score @s time <= gameTime data run function cgi:powerups/virus
# advanced virus
execute as @e[type=armor_stand,name=AdvancedVirus] at @s run function cgi:powerups/advancedvirus
# short circuit
execute as @e[type=armor_stand,name=ShortCircuit] at @s run function cgi:powerups/shortcircuit
# arrows (from exception & remote access)
execute as @e[type=arrow,x=-50,z=-50,y=0,dx=101,dz=101,dy=101] at @s run function cgi:powerups/arrow
# firewall
execute as @a[scores={UseFire=1..}] at @s run function cgi:powerups/firewallspawn
execute as @e[type=armor_stand,name=Firewall] at @s positioned ~ ~ ~ run function cgi:powerups/firewall
# bgp ad
execute as @e[type=armor_stand,name=BGP_Ad] at @s run function cgi:powerups/bgp_ad
# missile
execute as @e[type=snowball,x=-50,y=0,z=-50,dx=101,dz=101,dy=101,tag=!used] at @s run tag @p[gamemode=adventure] add MISSILE
tag @e[type=snowball,tag=!used] add used
execute as @a[tag=MISSILE] at @s anchored eyes positioned ^ ^ ^1.75 run summon fireball ~ ~ ~ {direction:[0.0,0.0,0.0],ExplosionPower:3}
tag @a[tag=MISSILE] remove MISSILE
kill @e[type=fireball,x=-61,y=249,z=-61,dx=3,dy=3,dz=3,scores={time=6..}]
# rocketjump
execute as @e[type=armor_stand,name=RocketJump,x=-50,y=0,z=-50,dx=100,dz=100,dy=100] at @s run function cgi:powerups/rocketjump
# alt tab
execute as @e[type=armor_stand,name=AltTab,x=-50,y=0,z=-50,dx=101,dz=101,dy=101] run function cgi:powerups/alttab
# backup file - save and load
execute as @e[type=armor_stand,name=BackupFile,x=-50,y=0,z=-50,dx=101,dz=101,dy=101] run function cgi:powerups/backupfile/backup_save

execute as @a[scores={UsedCarrotStick=1..}] at @s run function cgi:powerups/backupfile/backup_load
execute as @a[scores={UsedCarrotStick=1..}] at @s run scoreboard players set @s UsedCarrotStick 0
# execute as @e[type=armor_stand,name=LoadBackupFile,x=-50,y=0,z=-50,dx=101,dz=101,dy=101] run function cgi:powerups/backupfile/backup_load
# delete
effect give @a[gamemode=adventure,nbt={SelectedItem:{id:"minecraft:iron_axe"}}] haste 1 64 true
# trapfloor
execute as @e[type=armor_stand,name=TrapFloor,x=-50,y=0,z=-50,dx=101,dz=101,dy=101] if score @s time <= gameTime data run function cgi:powerups/trapfloor
# exception
scoreboard players add @e[type=egg,tag=!ARMED] time 1
tag @e[type=egg,scores={time=5..}] add ARMED
execute as @e[type=egg,x=-50,y=0,z=-50,dx=100,dz=100,dy=100,tag=ARMED] at @s run summon arrow ~ ~ ~ {Rotation:[0.0f,-90.0f],Color:-1}
tp @e[type=chicken,name=Chicken] ~ ~-200 ~
# suicide chicken
execute at @e[type=chicken,name=SuicideChicken,x=-50,y=0,z=-50,dx=100,dz=100,dy=100] if entity @p[distance=..3,gamemode=adventure] run summon tnt ~ ~ ~ {Passengers:[{id:tnt},{id:tnt},{id:tnt},{id:tnt},{id:tnt},{id:tnt},{id:tnt}]}
execute as @e[type=chicken,name=SuicideChicken,x=-50,y=0,z=-50,dx=100,dz=100,dy=100] at @s if entity @p[distance=..3,gamemode=adventure] run tp @s 0 -200 0

#voltagedrop
function cgi:powerups/voltagedrop
# vpn
execute as @a[scores={UseRedTorch=1..}] at @s run function cgi:powerups/vpnspawn
execute as @e[type=armor_stand,name=VPN] at @s positioned ~ ~ ~ run function cgi:powerups/vpn

#execute as @e[name=BORKO] at @s run function cgi:powerups/corruption

#corruptionfield
#THIS SUCKS FIX THANKS
#execute as @a[scores={UsePearl=1..}] at @s run function cgi:powerups/corruptionspawn
#execute as @e[type=armor_stand,name=Corruption] at @s run function cgi:powerups/corruption
#execute as @a[scores={UsePearl=1..}] at @s run summon armor_stand[] ~ ~ ~ function cgi:powerups/corruption


## remove timer tag
tag @e[tag=INITIALIZE_TIMER] remove INITIALIZE_TIMER
