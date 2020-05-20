# Update the RNG value
function cgi:misc/ensure_rng
scoreboard players set random data 0
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 1
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 2
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 4
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 8
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 16
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 32
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 64
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 128
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 256
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 512
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 1024
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 2048
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 4096
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 8192
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 16384
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 32768
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 65536
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 131072
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 262144
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 524288
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 1048576
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 2097152
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 4194304
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 8388608
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 16777216
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 33554432
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 67108864
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 134217728
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 268435456
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 536870912
execute as @e[tag=rng,limit=1,sort=random] if entity @s[tag=rng1] run scoreboard players add random data 1073741824
