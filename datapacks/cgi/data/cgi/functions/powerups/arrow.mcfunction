#########################################################
# Fill air around all arrows; kill those that hit walls #
# > called from powerloop                               #
#########################################################

fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace #impermeable
fill ~-1 ~ ~-1 ~1 ~1 ~1 air replace #impermeable

kill @s[nbt={inBlockState:{Name:"minecraft:obsidian"}}]
kill @s[nbt={inBlockState:{Name:"minecraft:barrier"}}]
