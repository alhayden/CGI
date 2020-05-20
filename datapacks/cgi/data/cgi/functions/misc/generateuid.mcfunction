###########################
# generates UID for @s    #
# > called from spawnprep #
###########################

function cgi:misc/rng
scoreboard players operation @s UID = random data
