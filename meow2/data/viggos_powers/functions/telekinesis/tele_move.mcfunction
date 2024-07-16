# Move forward according to step size
tp @s ^ ^ ^0.5

# TEST
# execute as @s at @s run particle crit ~ ~ ~ 0 0 0 0 1 force

# Check for collisions with Entities
execute if entity @e[type=!minecraft:player,type=!minecraft:area_effect_cloud,distance=..1.5] run tag @s add hitEntity
# tag=!hitCreeper,

# Tag hit entity
execute as @s run tag @e[type=!minecraft:player,type=!minecraft:area_effect_cloud,distance=..1.5,sort=nearest,limit=1] add teleEntity

# Check for collisions with blocks
# execute unless block ~ ~ ~ minecraft:air run tag @s add hitBlock

# Decrease the number of steps remaining
scoreboard players remove @s teleSteps 1

# Recurse until we hit something or run out of steps
execute as @s[tag=!hitEntity,scores={teleSteps=1..}] at @s run function viggos_powers:telekinesis/tele_move