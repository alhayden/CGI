###########################
# Advanced Virus          #
# > called from powerloop #
###########################

#fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 air replace #impermeable
summon tnt ~ ~0.4 ~
summon tnt ~0.4 ~1.2 ~ {Fuse:60}
#changed to 60 because let's be honest 4 seconds was a bit much
summon tnt ~-0.4 ~1.2 ~ {Fuse:60}
summon tnt ~ ~1.2 ~0.4 {Fuse:60}
summon tnt ~ ~1.2 ~-0.4 {Fuse:60}
kill @s
