###########################
# Short Circuit           #
# > called from powerloop #
###########################


summon minecraft:lightning_bolt ~ 0 ~
summon minecraft:lightning_bolt ~ 0 ~
summon minecraft:lightning_bolt ~ 0 ~

fill ~-1 ~ ~-1 ~1 0 ~1 air replace #impermeable

kill @s
