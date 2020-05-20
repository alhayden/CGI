####################################
# Create particles around powerups #
# > called from gametick           #
####################################

# virus
execute at @e[type=item,name=Power-Virus] run particle item_slime ~ ~1 ~ 0.25 0.25 0.25 0.1 3 force

# advanced virus
execute at @e[type=item,name=Power-AdvancedVirus] run particle item_slime ~ ~1 ~ 0.25 0.25 0.25 0.1 2 force
execute at @e[type=item,name=Power-AdvancedVirus] run particle minecraft:happy_villager ~ ~2 ~ 0.1 2 0.1 0.1 1 force

# short circuit
execute at @e[type=item,name=Power-ShortCircuit] run particle crit ~ ~0.2 ~ 0.1 0.1 0.1 0.5 2 force

# remote access
execute at @e[type=item,name=Power-RemoteAccess] run particle minecraft:instant_effect ~ ~0.2 ~ 0.3 0.1 0.3 0.1 1 force

# jump boost
execute at @e[type=item,name=Power-JumpBoost] run particle entity_effect ~ ~0.2 ~ 0.01 1.2 0.01 10 1 force

# speed boost
execute at @e[type=item,name=Power-SpeedBoost] run particle entity_effect ~ ~0.2 ~ 0.5 0.1 0.5 20 1 force

# firewall
execute at @e[type=item,name=Power-Firewall] run particle flame ~ ~0.4 ~ 0.5 0.2 0 0.000001 2 force

# bgp ad
execute at @e[type=item,name=Power-BGP_Ad] run particle flame ~ ~1 ~ 0 1 0 0.0000001 1 force

# missile
execute at @e[type=item,name=Power-Missile] run particle smoke ~ ~0.4 ~ 0.05 0.05 0.05 0.0001 1 force
execute at @e[type=item,name=Power-Missile] run particle flame ~ ~0.4 ~ 0.05 0.05 0.05 0.0001 1 force

# rocket jump
execute at @e[type=item,name=Power-RocketJump] run particle smoke ~ ~0.5 ~ 0 0.5 0 0.025 3 force

# hologram
execute at @e[type=item,name=Power-Hologram] run particle minecraft:enchant ~0.5 ~1 ~ 0 0 0.25 0.001 1 force
execute at @e[type=item,name=Power-Hologram] run particle enchant ~ ~1 ~0.5 0.25 0.0 0 0.001 1 force
execute at @e[type=item,name=Power-Hologram] run particle enchant ~ ~1 ~-0.5 0.25 0.0 0 0.001 1 force
execute at @e[type=item,name=Power-Hologram] run particle enchant ~-0.5 ~1 ~ 0 0.0 0.25 0.001 1 force

# knockerbacker
execute at @e[type=item,name=Power-KnockerBacker] run particle minecraft:dolphin ~ ~0.5 ~ 0.1 0.1 0.1 0.025 1 force

# alt tab
execute at @e[type=item,name=Power-AltTab] run particle flame ~ ~0.3 ~ 0.5 0 0.5 0.0000001 1 force

# backup file
execute at @e[type=item,name=Power-BackupFile] run particle witch ~ ~ ~ 0 0 0 0.01 1 force

# delete
execute at @e[type=item,name=Power-Delete] run particle minecraft:enchanted_hit ~ ~1 ~ 0 0.5 0 0.0001 2 force

# trap floor
execute at @e[type=item,name=Power-TrapFloor] run particle witch ~ ~0.5 ~ 0.8 0 0.8 1 3 force

# exception
execute at @e[type=item,name=Power-Exception] run particle item egg ~ ~0.5 ~ 0 0 0 0.05 5 force

# vpn
execute at @e[type=item,name=Power-VPN] run particle block water ~ ~0.5 ~ 0 0 0 0.05 5 force

# voltage drop
execute at @e[type=item,name=Power-VoltageDrop] run particle minecraft:item minecraft:stone_sword ~ ~3 ~ 0 0 0 0 1 force
