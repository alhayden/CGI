############################################
# select and summon specific powerup items #
# > called from powerspawn                 #
############################################

## announce spawn
execute at @s run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 4
execute at @s run particle minecraft:firework ~ ~2 ~ 0 2 0 0.03 20 force

## pick powerup
scoreboard players set operand data 39

function cgi:misc/rng

scoreboard players operation random data %= operand data
scoreboard players operation @s data = random data

##virus
execute if entity @s[scores={data=0..2}] run summon item ~ ~1 ~ {Item:{id:mooshroom_spawn_egg,Count:2,tag:{EntityTag:{id:armor_stand,CustomName:"\"Virus\"",Invisible:1b,Small:1b,NoGravity:1b,Marker:1b,Tags:["INITIALIZE_TIMER"]},display:{Name:"{\"text\":\"Virus\",\"italic\":\"false\"}",Lore:["Waterproof up to -6 meters"]},CanPlaceOn:["#impermeable"],HideFlags:16}},CustomName:"\"Power-Virus\""}

##advanced virus
execute if entity @s[scores={data=3}] run summon item ~ ~1 ~ {Item:{id:chicken_spawn_egg,Count:1,tag:{EntityTag:{id:armor_stand,CustomName:"\"AdvancedVirus\"",Invisible:1b,Small:1b,NoGravity:1b,Marker:1b},display:{Name:"{\"text\":\"Advanced Virus\",\"italic\":\"false\"}",Lore:["Four times the value,","at 32 times the cost!"]},CanPlaceOn:["#impermeable"],HideFlags:16}},CustomName:"\"Power-AdvancedVirus\""}

##short circuit
execute if entity @s[scores={data=4..6}] run summon item ~ ~1 ~ {Item:{id:wolf_spawn_egg,Count:3,tag:{EntityTag:{id:armor_stand,CustomName:"\"ShortCircuit\"",Invisible:1b,Small:1b,NoGravity:1b,Marker:1b},display:{Name:"{\"text\":\"Short Circuit\",\"italic\":\"false\"}",Lore:["ZAP"]},CanPlaceOn:["#impermeable"],HideFlags:16}},CustomName:"\"Power-ShortCircuit\""}

## remote access
execute if entity @s[scores={data=7..8}] run summon item ~ ~1 ~ {Item:{id:bow,Count:1,tag:{Damage:381,display:{Name:"{\"text\":\"Remote Access\",\"italic\":\"false\"}",Lore:["To avoid injury:","do not aim at eyes or face"]}}},CustomName:"\"Power-RemoteAccess\""}
execute if entity @s[scores={data=7..8}] run summon item ~ ~1 ~ {Item:{id:arrow,Count:3,tag:{display:{Name:"{\"text\":\"Remote Access Cartridge\",\"italic\":\"false\"}"}}},CustomName:"\"Power-RemoteAccess\""}

## firewall
execute if entity @s[scores={data=9..10}] run summon item ~ ~1 ~ {Item:{id:torch,Count:3,tag:{display:{Name:"{\"text\":\"Firewall\",\"italic\":\"false\"}",Lore:["Warrenty void if existence is proven","","Existence void if warrenty is proven"]},CanPlaceOn:["#impermeable"],HideFlags:16}},CustomName:"\"Power-Firewall\""}

## jump boost
execute if entity @s[scores={data=11..13}] run summon item ~ ~1 ~ {Item:{id:splash_potion,Count:1,tag:{Potion:strong_leaping,display:{Name:"{\"text\":\"Jump Boost\",\"italic\":\"false\"}",Lore:["WARNING:","FOR EXTERNAL USE ONLY"]}}},CustomName:"\"Power-JumpBoost\""}

## potion that's not jump boost
execute if entity @s[scores={data=14..16}] run summon item ~ ~1 ~ {Item:{id:splash_potion,Count:1,tag:{Potion:strong_swiftness,display:{Name:"{\"text\":\"Speed Boost\",\"italic\":\"false\"}",Lore:["This Device Is Not Licensed In Accordance With","Laws Relating To Special & General Relativity","Use At Own Risk"]}}},CustomName:"\"Power-SpeedBoost\""}

## BGP-Ad
execute if entity @s[scores={data=17}] run summon item ~ ~1 ~ {Item:{id:guardian_spawn_egg,Count:1,tag:{EntityTag:{id:armor_stand,CustomName:"{\"text\":\"BGP_Ad\"}",Invisible:1b,Small:1b,NoGravity:1b,Marker:1b},display:{Name:"{\"text\":\"BGP Ad\",\"italic\":\"false\"}",Lore:["Use this device at your own risk","Nobody is responsible for injuries it may cause",""]},CanPlaceOn:["#impermeable"],HideFlags:16}},CustomName:"\"Power-BGP_Ad\""}

## missile
execute if entity @s[scores={data=18..20}] run summon item ~ ~1 ~ {Item:{id:snowball,Count:3,Damage:0,tag:{display:{Name:"{\"text\":\"Missile\",\"italic\":\"false\"}",Lore:["If used properly, this device","can cause serious injury.","","Exercise caution"]}}},CustomName:"\"Power-Missile\""}

## rocketjump
execute if entity @s[scores={data=21..22}] run summon item ~ ~1 ~ {Item:{id:blaze_spawn_egg,Count:1,tag:{EntityTag:{id:armor_stand,CustomName:"\"RocketJump\"",Invisible:1b,Small:1b,NoGravity:1b,Marker:1b},display:{Name:"{\"text\":\"Rocket Jump\",\"italic\":\"false\"}",Lore:["You WILL Go To Space Today"]},CanPlaceOn:["#impermeable"],HideFlags:16}},CustomName:"\"Power-RocketJump\""}

# hologram TODO: instead call function that summons correct color hologram based on gamestate
execute if entity @s[scores={data=23..25}] run summon item ~ ~1 ~ {Item:{id:blue_stained_glass,Count:20,tag:{display:{Name:"{\"text\":\"Hologram\",\"italic\":\"false\"}",Lore:["The existance of this device is not gauranteed"]},CanPlaceOn:["#impermeable"],HideFlags:16}},CustomName:"\"Power-Hologram\""}

# knockerbacker
execute if entity @s[scores={data=26..27}] run summon item ~ ~1 ~ {Item:{id:wooden_sword,Count:1,tag:{Damage:49,display:{Name:"{\"text\":\"KnockerBacker\",\"italic\":\"false\"}",Lore:["Knocks 'em back-erer"]},Enchantments:[{id:"knockback",lvl:10}],AttributeModifiers:[{AttributeName:"generic.attackSpeed",Operation:0,Amount:50}]}},CustomName:"\"Power-KnockerBacker\""}

# alt-tab
execute if entity @s[scores={data=28}] run summon item ~ ~1 ~ {Item:{id:rabbit_spawn_egg,Count:1,tag:{EntityTag:{id:armor_stand,CustomName:"\"AltTab\"",Invisible:1b,Small:1b,NoGravity:1b,Marker:1b},display:{Name:"{\"text\":\"Alt-Tab\",\"italic\":\"false\"}",Lore:["This device is not suitable","for use on all devices.","Check the user manual","for a compatability report"]},CanPlaceOn:["#impermeable"],HideFlags:16}},CustomName:"\"Power-AltTab\""}

# backup file
execute if entity @s[scores={data=29}] run summon item ~ ~1 ~ {Item:{id:endermite_spawn_egg,Count:1,tag:{EntityTag:{id:armor_stand,CustomName:"\"BackupFile\"",Invisible:1b,Small:1b,NoGravity:1b,Marker:1b},display:{Name:"{\"text\":\"Save Backup File\",\"italic\":\"false\"}",Lore:["Temporal distortion, such as that caused by this device,","is known to cause nausia, headaches, muscle cramps,","death, and disembowelment.","Please consult your doctor before using"]},CanPlaceOn:["#impermeable"],HideFlags:16}},CustomName:"\"Power-BackupFile\""}

# delete
execute if entity @s[scores={data=30..31}] run summon item ~ ~1 ~ {Item:{id:iron_axe,Count:1,tag:{Damage:200,display:{Name:"{\"text\":\"Delete\",\"italic\":\"false\"}",Lore:["Dishwasher safe"]},CanDestroy:["#impermeable"],HideFlags:8}},CustomName:"\"Power-Delete\""}

# trap floor
execute if entity @s[scores={data=32..33}] run summon item ~ ~1 ~ {Item:{id:shulker_spawn_egg,Count:1,tag:{EntityTag:{id:armor_stand,CustomName:"\"TrapFloor\"",Invisible:1b,Small:1b,NoGravity:1b,Marker:1b,Tags:["INITIALIZE_TIMER"]},display:{Name:"{\"text\":\"Trapfloor\",\"italic\":\"false\"}",Lore:["This device is DANGEROUS","...sorta"]},CanPlaceOn:["#impermeable"],HideFlags:16}},CustomName:"\"Power-TrapFloor\""}

# exception
execute if entity @s[scores={data=34}] run summon item ~ ~1 ~ {Item:{id:egg,Count:1,tag:{display:{Name:"{\"text\":\"Exception\",\"italic\":\"false\"}",Lore:["[ERR]: Exception in thread 'CGI/render/wittytooltips.mcfunction'"]},HideFlags:16}},CustomName:"\"Power-Exception\""}

# suicide chicken
execute if entity @s[scores={data=35}] run summon chicken ~ ~1 ~ {CustomName:"\"SuicideChicken\"", ActiveEffects:[{Id:11,Amplifier:75,Duration:1000000,ShowParticles:0b}],Passengers:[{id:zombie, CustomName:"\"SuicideChickenZ\"",PersistenceRequired:1b,ActiveEffects:[{Id:14,amplifier:1,Duration:1000000,ShowParticles:0b},{Id:11,Amplifier:75,Duration:1000000,ShowParticles:0b},{Id:12,Amplifier:75,Duration:1000000,ShowParticles:0b}],IsBaby:1b,AttributeModifiers:[{Operation:0,UUIDLeast:1,UUIDMost:1,Amount:50,AttributeName:generic.followRange,Name:Attribute}], Silent:1b}]}

# vpn
execute if entity @s[scores={data=36}] run summon item ~ ~1 ~ {Item:{id:redstone_torch,Count:3,tag:{display:{Name:"{\"text\":\"VPN\",\"italic\":\"false\"}",Lore:["Vermont Public televisioN"]},CanPlaceOn:["#impermeable"],HideFlags:16}},CustomName:"\"Power-VPN\""}


# voltagedrop
execute if entity @s[scores={data=37..38}] run summon item ~ ~1 ~ {Item:{id:stone_sword,Count:1,tag:{display:{Name:"{\"text\":\"VoltageDrop\",\"italic\":\"false\"}",Lore:["Gives Zero Flux"]},CanPlaceOn:["#impermeable"],HideFlags:16}},CustomName:"\"Power-VoltageDrop\""}

# corruptionfield
#execute if entity @s[scores={data=39}] run summon item ~ ~1 ~ {Item:{id:ender_pearl,Count:1,tag:{display:{Name:"{\"text\":\"CorruptionField\",\"italic\":\"false\"}",Lore:["[sad windows noises]"]},CanPlaceOn:["#impermeable"],HideFlags:16}},CustomName:"\"Power-CorruptionField\""}


