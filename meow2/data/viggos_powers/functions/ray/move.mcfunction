# Move forward according to step size
tp @s ^ ^ ^0.5

# TEST
# execute as @s[scores={teleSteps=1..32}] at @s run particle crit ~ ~ ~ 0 0 0 0 1 force

# Check for collisions with Creepers
# execute if entity @e[type=turtle,distance=..1.5] run tag @s add hitCreeper
# tag=!hitCreeper,

# Check for collisions with blocks
execute unless block ~ ~ ~ minecraft:air run tag @s add hitBlock

# Decrease the number of steps remaining
scoreboard players remove @s steps 1

# Recurse until we hit something or run out of steps
execute as @s[tag=!hitBlock,scores={steps=1..}] at @s run function viggos_powers:ray/move