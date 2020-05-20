############################################################
# Initialize                                               #
# > called manually                                        #
# Things that only run once (initialize scoreboards, etc.) #
############################################################

# scoreboards
scoreboard objectives add data dummy
scoreboard objectives add time dummy
scoreboard objectives add status dummy
scoreboard objectives add UID dummy

scoreboard objectives add UseFire minecraft.used:minecraft.torch
scoreboard objectives add useEndermite minecraft.used:minecraft.endermite_spawn_egg
scoreboard objectives add UseRedTorch minecraft.used:minecraft.redstone_torch 
scoreboard objectives add UsePearl minecraft.used:minecraft.ender_pearl
scoreboard objectives add UseCarrotStick minecraft.used:minecraft.carrot_on_a_stick

scoreboard players set gameState data 0
scoreboard players set gameTime data 0
scoreboard players set playerCount data 0

# setup spawnbox
setworldspawn -44 2 101
gamerule spawnRadius 0

# teams
team add players
team modify players friendlyFire false

# gamerules
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning false

# TODO set time to midnight/new moon
